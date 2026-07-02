# =============================================================================
# Base image
# =============================================================================

FROM python:3.12-slim AS base

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /lab

# Install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /usr/local/bin/

# =============================================================================
# Runtime
# =============================================================================

FROM base AS runtime

# Make the project virtual environment the default Python environment
ENV VIRTUAL_ENV=/lab/.venv
ENV PATH="${VIRTUAL_ENV}/bin:${PATH}"

# Copy project files
COPY . .

CMD ["bash"]