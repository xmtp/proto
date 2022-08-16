function getGlobal(): any | undefined {
  if (typeof globalThis !== "undefined") {
    return globalThis;
  }
  if (typeof self !== "undefined") {
    return self;
  }
  if (typeof window !== "undefined") {
    return window;
  }
  if (typeof global !== "undefined") {
    return global;
  }
  return undefined;
}

const ctx = getGlobal();

if (typeof ctx.fetch === "undefined") {
  // eslint-disable-next-line @typescript-eslint/no-var-requires
  const { fetch, Request, Response, Headers } = require("undici");
  ctx.fetch = fetch;
  ctx.Request = Request;
  ctx.Response = Response;
  ctx.Headers = Headers;
}

const streamClasses = [
  "TextDecoderStream",
  "TextEncoderStream",
  "TransformStream",
  "ReadableStream",
  "WritableStream",
  "ByteLengthQueuingStrategy",
  "CountQueuingStrategy",
];

for (const clsName of streamClasses) {
  if (typeof ctx[clsName] === "undefined") {
    ctx[clsName] = require("stream/web")[clsName];
  }
}

export * from "./index";
