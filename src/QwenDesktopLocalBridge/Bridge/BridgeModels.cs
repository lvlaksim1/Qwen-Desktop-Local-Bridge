using System.Text.Json;

namespace QwenDesktopLocalBridge.Bridge;

public sealed record BridgeRequest(
    string Session,
    string Id,
    string Tool,
    JsonElement Args);

public sealed record BridgeResult(
    string Session,
    string RequestId,
    bool Ok,
    object? Result = null,
    BridgeError? Error = null);

public sealed record BridgeError(
    string Code,
    string Message);
