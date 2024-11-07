# Docker Playwright Demo

This repository contains a Playwright testing project containerized with Docker.

## Prerequisites

- Docker installed on your machine
- Git (for cloning the repository)

## Project Structure

```
docker-playwright-demo/
├── Dockerfile
├── playwright.config.ts
├── tests/
├── package.json
└── README.md
```

## Getting Started

### 1. Clone the Repository

```bash
git clone <your-repository-url>
cd docker-playwright-demo
```

### 2. Building the Docker Image

Build the Docker image using the following command:

```bash
docker build -t my-playwright-project .
```

### 3. Running Tests

Execute the tests using Docker with the following command:

```bash
docker run --rm \
  -v $(pwd)/playwright-report:/app/playwright-report \
  my-playwright-project
```

This command:
- `--rm`: Removes the container after execution
- `-v $(pwd)/playwright-report:/app/playwright-report`: Mounts the playwright-report directory to persist test results
- `my-playwright-project`: The name of your Docker image

### 4. Accessing Test Reports

After the tests complete, you can find the test reports in the `playwright-report` directory in your project root.

## Development

### Modifying Tests

1. Add or modify tests in the `tests/` directory
2. Rebuild the Docker image:
```bash
docker build -t my-playwright-project .
```
3. Run the tests again using the command from step 3

### Updating Dependencies

1. Modify `package.json` as needed
2. Rebuild the Docker image to apply changes

## Troubleshooting

If you encounter any issues:

1. Ensure Docker is running
2. Verify the volume mount path exists
3. Check Docker logs:
```bash
docker logs <container-id>
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

[Add your license information here]