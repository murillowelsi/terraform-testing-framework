# Terraform Unit Tests

This repository is dedicated to performing unit tests on Terraform infrastructure code using the "Terraform Testing Framework." Unit tests are essential to verify that your Terraform code functions as expected, ensuring stability and correctness in your infrastructure deployments.

## Purpose

The primary purpose of this repository is to provide a platform for writing and running unit tests for Terraform configurations. These tests help catch errors, ensure compliance with infrastructure standards, and validate the functionality of your Terraform code.

## Testing Framework

This repository utilizes the "Terraform Testing Framework" to define and execute tests for Terraform configurations. The testing workflow is set up using GitHub Actions, which allows you to automate the testing process. The testing framework is configured to run tests whenever code changes are pushed to this repository.

## Prerequisites

Before running tests in this repository, ensure that you have set up the necessary secrets in your GitHub repository. The following secrets are required:

- `ARM_CLIENT_ID`: The Azure Active Directory (Azure AD) application client ID.
- `ARM_SUBSCRIPTION_ID`: The Azure subscription ID.
- `ARM_TENANT_ID`: The Azure AD tenant ID.
- `ARM_CLIENT_SECRET`: The client secret associated with the Azure AD application.

## Testing Workflow

The testing workflow consists of the following steps:

1. **Checkout**: This step checks out the code from the repository.
2. **Setup Terraform**: It sets up the required version of Terraform.
3. **Terraform Init**: Initializes Terraform without configuring a backend for testing purposes.
4. **Terraform Validate**: Validates the Terraform code for syntactical correctness.
5. **Terraform Format**: Formats the Terraform code to adhere to the coding style.
6. **Terraform Test**: Executes unit tests using the Terraform Testing Framework.

## Contributing

Feel free to contribute to this repository by adding more unit tests or improving the testing framework. Your contributions can help enhance the reliability of Terraform configurations and promote best practices in infrastructure as code.

## License

This repository is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute the code as per the terms of the license.

---

Happy Testing! 🚀
