enum NavAction {
  push("push"),
  replace("replace"),
  replaceAll("replace_all"),
  pop("pop");

  final String value;

  const NavAction(this.value);

  static NavAction fromString(String? stringValue, {NavAction? defaultValue}) {
    return <String, NavAction> {
      for(final value in NavAction.values)
        value.value : value,
    }[stringValue?.toLowerCase() ?? ""] ?? defaultValue ?? NavAction.push;
  }
}

