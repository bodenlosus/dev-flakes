{
  description = "Some dev flakes";

  outputs = {self}: {
    templates = {
      default = {
        path = ./default;
        description = "basic flake";
      };
      python3Packaged = {
        path = ./python3Packaged;
        description = "flake with python3 package";
      };
    };
    defaultTemplate = self.templates.default;
  };
}