#!/bin/bash

# Backend Environment Variables Setup Script
# Generated from Vly for Git Sync
# Run this script to set up your Convex backend environment variables

echo 'Setting up Convex backend environment variables...'

# Check if Convex CLI is installed
if ! command -v npx &> /dev/null; then
    echo 'Error: npx is not installed. Please install Node.js and npm first.'
    exit 1
fi

echo "Setting JWKS..."
npx convex env set "JWKS" -- "{\"keys\":[{\"use\":\"sig\",\"kty\":\"RSA\",\"n\":\"0yzkKbQw2NHg_CRReaiCYdX64vuG5RCnaINUc6u66YD7kwCJXMXLQ41TNt1QGjTVdYsJBnwDVBGml94LALtxy1dRTZLl252wpER2mMjyr7NxFk9c6BjS1ziTL5DarGDRbK3kKcSSixeGPKvah_0wYTNeMcIhy3wsfnYYHF6pazgIeJf9E0fSrc_uUGDp9qWRFzcjoox-1TfWR7fSAiWr0ObZOCCqpgQZ0_3TEU2atd-IRFeJnTGK7rJroOFFSNx8jD84DyFlKnLfRKi-w8PZtorWgRsSSqXUM69Hdi8fOt6o_Rtmglms3GKbsCPhIeAWHHC1GX-V0byv866ISyI9KQ\",\"e\":\"AQAB\"}]}"

echo "Setting JWT_PRIVATE_KEY..."
npx convex env set "JWT_PRIVATE_KEY" -- "-----BEGIN PRIVATE KEY----- MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDTLOQptDDY0eD8 JFF5qIJh1fri+4blEKdog1Rzq7rpgPuTAIlcxctDjVM23VAaNNV1iwkGfANUEaaX 3gsAu3HLV1FNkuXbnbCkRHaYyPKvs3EWT1zoGNLXOJMvkNqsYNFsreQpxJKLF4Y8 q9qH/TBhM14xwiHLfCx+dhgcXqlrOAh4l/0TR9Ktz+5QYOn2pZEXNyOijH7VN9ZH t9ICJavQ5tk4IKqmBBnT/dMRTZq134hEV4mdMYrusmug4UVI3HyMPzgPIWUqct9E qL7Dw9m2itaBGxJKpdQzr0d2Lx863qj9G2aCWazcYpuwI+Eh4BYccLUZf5XRvK/z rohLIj0pAgMBAAECggEASe5NcsxCzaWsvpl4bL8x5k6jpxOoBknuUgioaFaW+WjO qohljrUwlFXF7E9O293jXWNvpXWFNMl5KXHzKC53iFjpfd8P2fM7BEdzvcmcLScF UGo4fIk0R2TnIp/z7qV2rDW0y2qmY0u5E0SXHUTmyyDQuVrduf+fFCcECeqaJY61 T8faUm7qB/n4ap3jdXn9UYo5V3T+3Ct1icdn+bI5W0VLQiu7RK+NDe0Qx8KqfPZn WHdL991TySU9FfnolkHcMkbhAlhIRSexy075YeAQa/OLVtaphOyiqtNp8xlwO1TL wftB8M7JW/RixYXesA78/tmbutAUSx2bmPV0vQbGgQKBgQD26ihFuMfZQadGsSRc R+3bASSVa559gBDK/nrrNs4ET8MOjyzX1LA5gD4+8xH69wGJ8z1cShEsgL5zsJu5 G688lZ1QuuL6uuuPrqG6VoP+VocYGiDAENgEs8CUEUO0ZWWZFU6KHoUdzNeOYWgz Y6kzsmiewfHbMaXiuqBGm5CSuwKBgQDa8hVFhT319CXLRnDhuodM/KNkx19Lw10d +O/wbBOagBVv40BCY5g7C1WNGhalGvlwDDVDSs+MDw6tXrLRnpmVyUDuAo5GZyNw lDvOrqlWa8C3gKmgHEd6Qv0blALx6+kYOGnqiX2BX4vHwIiTE8COti/HkIx9RHx7 7Bni3ParawKBgAzRNun3n5gtiktnIqYPrc8yjf2bqoyFO1nuP9855xPeOBfnYsKJ beRuPczyvToz3EaW89Z4mc+fl0NWJZ9ESqJwecwZB3NQhK3euNJ9bziisTyVDqIp vazwz8xf4Q3aPZ3mtz8AOpTDb2UatVgFkmD2n+ut0ao5N40/dtZzeNvFAoGAHCqO f/4PJYf+ILN0LCXh6A6MOpfHc6izXvq6a1SMBRE7MMSsbJ4BZH8lx1w205CvzDFV 3M1P+/Wn7rfDC2J64aEdYEEl6nq0PXRkaUdg84QzK6g6qiVZMKpTg2u8IUE3IG2J eqmrYqxXACCNsVYWLIXVibfXyvm3hf2uqtfAR/cCgYAEPVHdDAbxLsoI+b9wlk/P TWktKxFrSatnEyl0kr4d3e/4qlwzunCb65yxNWHw0ASf+X8R0iI9pXTnrqZ40dHm lGiXylYqo4befTqZOcieIdthQMFqlHmte3umFYpMx0Qi9r1n8r9/E8NQZEv5yq7/ gjzKV1Cktv7z9b2Q4Islhg"

echo "Setting SITE_URL..."
npx convex env set "SITE_URL" -- "http://localhost:5173"

echo "Setting VLY_APP_NAME..."
npx convex env set "VLY_APP_NAME" -- "Style Swipe"

echo "✅ All backend environment variables have been set!"
echo "You can now run: pnpm dev:backend"
