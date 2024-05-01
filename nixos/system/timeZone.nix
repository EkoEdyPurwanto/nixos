{ ... }:

let
  timezone = "Asia/Jakarta";
in {
    # Set your time zone.
    time.timeZone = "${timezone}";
}