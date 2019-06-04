#!/usr/bin/env bash

GENERATOR="${GENERATOR:-php}"

function codegen {
	echo "Generating $1"
	docker-compose run openapi-generator generate \
        --generator-name "${GENERATOR}" \
        --config         "/local/openapi-config.php.json" \
        --input-spec     "$3" \
        --output         "/local/$1" \
        --invoker-package "$4" \
        --additional-properties "composerProjectName=$1,gitRepoId=$1,artifactVersion=$2,packageVersion=$2"

    echo ""
}

codegen "boxture-$GENERATOR-sdk" '2.0.0' 'https://staging.localexpress.nl/api/v2/swagger_doc.json' 'Boxture'
