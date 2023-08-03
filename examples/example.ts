class Cookies {
  public static parseCookie(name: string): string | null {
    const cookieStrs = `; ${document.cookie}`.split("; ");
    for (let cookieStr of cookieStrs) {
      if (cookieStr.indexOf(name) === 0) {
        return cookieStr.substring(cookieStr.length + 1);
      }
    }
    return null;
  }
}
