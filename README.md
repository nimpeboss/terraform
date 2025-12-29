# terraform

A small collection of Terraform modules and examples for local infrastructure configuration and experimentation.

## Overview ✅
This repository contains Terraform code used to manage local development infrastructure and to experiment with module design patterns.

- **Structured modules** under `modules/` (for reuse and composability)
- **Top-level configuration** for composing and testing modules

## Status ⚠️
This project is actively maintained on an informal cadence — updates will be made as improvements are discovered and when the developer is bored and wants to tinker. If you'd like a more strict maintenance or roadmap, open an issue or submit a pull request.

## Getting Started 🔧
1. Install Terraform (compatible with the versions defined in each module's `versions.tf`).
2. Initialize the working directory:

```bash
terraform init
```

3. Plan and apply as needed:

```bash
terraform plan
terraform apply
```

## Modules
Each module is self-contained and includes its own `variables.tf`, `outputs.tf`, and `versions.tf`. See the `modules/` directory for details.

## Contributing 💡
Contributions are welcome — please open issues for bug reports or feature ideas, and send PRs with tests and clear descriptions when possible.

## License
This repository is provided "as-is". See the `LICENSE` file for details (if present).

---

If you'd like the README to include more usage examples, module-specific documentation, or a detailed roadmap, let me know and I'll expand it.
