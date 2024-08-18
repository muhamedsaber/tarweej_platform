import 'package:tarweej_platform/core/networking/firebase/firebase_error_messages.dart';

class FirebaseErrorCodes {
  static const String adminRestrictedOperation = "admin-restricted-operation";
  static const String argumentError = "argument-error";
  static const String appNotAuthorized = "app-not-authorized";
  static const String appNotInstalled = "app-not-installed";
  static const String captchaCheckFailed = "captcha-check-failed";
  static const String codeExpired = "code-expired";
  static const String cordovaNotReady = "cordova-not-ready";
  static const String corsUnsupported = "cors-unsupported";
  static const String credentialAlreadyInUse = "credential-already-in-use";
  static const String credentialMismatch = "custom-token-mismatch";
  static const String credentialTooOldLoginAgain = "requires-recent-login";
  static const String dependentSdkInitBeforeAuth = "dependent-sdk-initialized-before-auth";
  static const String dynamicLinkNotActivated = "dynamic-link-not-activated";
  static const String emailChangeNeedsVerification = "email-change-needs-verification";
  static const String emailAlreadyInUse = "email-already-in-use";
  static const String emulatorConfigFailed = "emulator-config-failed";
  static const String expiredOobCode = "expired-action-code";
  static const String expiredPopupRequest = "cancelled-popup-request";
  static const String internalError = "internal-error";
  static const String invalidApiKey = "invalid-api-key";
  static const String invalidAppCredential = "invalid-app-credential";
  static const String invalidAppId = "invalid-app-id";
  static const String invalidAuth = "invalid-user-token";
  static const String invalidAuthEvent = "invalid-auth-event";
  static const String invalidCertHash = "invalid-cert-hash";
  static const String invalidCode = "invalid-verification-code";
  static const String invalidContinueUri = "invalid-continue-uri";
  static const String invalidCordovaConfiguration = "invalid-cordova-configuration";
  static const String invalidCustomToken = "invalid-custom-token";
  static const String invalidDynamicLinkDomain = "invalid-dynamic-link-domain";
  static const String invalidEmail = "invalid-email";
  static const String invalidEmulatorScheme = "invalid-emulator-scheme";

  static const String invalidMessagePayload = "invalid-message-payload";
  static const String invalidMfaSession = "invalid-multi-factor-session";
  static const String invalidOauthClientId = "invalid-oauth-client-id";
  static const String invalidOauthProvider = "invalid-oauth-provider";
  static const String invalidOobCode = "invalid-action-code";
  static const String invalidOrigin = "unauthorized-domain";
  static const String invalidPassword = "wrong-password";
  static const String invalidPersistence = "invalid-persistence-type";
  static const String invalidPhoneNumber = "invalid-phone-number";
  static const String invalidProviderId = "invalid-provider-id";
  static const String invalidRecipientEmail = "invalid-recipient-email";
  static const String invalidSender = "invalid-sender";
  static const String invalidSessionInfo = "invalid-verification-id";
  static const String invalidTenantId = "invalid-tenant-id";
  static const String mfaInfoNotFound = "multi-factor-info-not-found";
  static const String mfaRequired = "multi-factor-auth-required";
  static const String missingAndroidPackageName = "missing-android-pkg-name";
  static const String missingAppCredential = "missing-app-credential";
  static const String missingAuthDomain = "auth-domain-config-required";
  static const String missingCode = "missing-verification-code";
  static const String missingContinueUri = "missing-continue-uri";
  static const String missingIframeStart = "missing-iframe-start";
  static const String missingIosBundleId = "missing-ios-bundle-id";
  static const String missingNonce = "missing-or-invalid-nonce";
  static const String missingMfaInfo = "missing-multi-factor-info";
  static const String missingMfaSession = "missing-multi-factor-session";
  static const String missingPhoneNumber = "missing-phone-number";
  static const String missingSessionInfo = "missing-verification-id";
  static const String moduleDestroyed = "app-deleted";
  static const String needConfirmation = "account-exists-with-different-credential";
  static const String networkRequestFailed = "network-request-failed";
  static const String nullUser = "null-user";
  static const String noAuthEvent = "no-auth-event";
  static const String noSuchProvider = "no-such-provider";
  static const String operationNotAllowed = "operation-not-allowed";
  static const String operationNotSupported = "operation-not-supported-in-this-environment";
  static const String popupBlocked = "popup-blocked";
  static const String popupClosedByUser = "popup-closed-by-user";
  static const String providerAlreadyLinked = "provider-already-linked";
  static const String quotaExceeded = "quota-exceeded";
  static const String redirectCancelledByUser = "redirect-cancelled-by-user";
  static const String redirectOperationPending = "redirect-operation-pending";
  static const String rejectedCredential = "rejected-credential";
  static const String secondFactorAlreadyEnrolled = "second-factor-already-in-use";
  static const String secondFactorLimitExceeded = "maximum-second-factor-count-exceeded";
  static const String tenantIdMismatch = "tenant-id-mismatch";
  static const String timeout = "timeout";
  static const String tokenExpired = "user-token-expired";
  static const String tooManyAttemptsTryLater = "too-many-requests";
  static const String unauthorizedDomain = "unauthorized-continue-uri";
  static const String unsupportedFirstFactor = "unsupported-first-factor";
  static const String unsupportedPersistence = "unsupported-persistence-type";
  static const String unsupportedTenantOperation = "unsupported-tenant-operation";
  static const String unverifiedEmail = "unverified-email";
  static const String userCancelled = "user-cancelled";
  static const String userDeleted = "user-not-found";
  static const String userDisabled = "user-disabled";
  static const String userMismatch = "user-mismatch";
  static const String userSignedOut = "user-signed-out";
  static const String weakPassword = "weak-password";
  static const String webStorageUnsupported = "web-storage-unsupported";
  static const String alreadyInitialized = "already-initialized";
  static const String recaptchaNotEnabled = "recaptcha-not-enabled";
  static const String missingRecaptchaToken = "missing-recaptcha-token";
  static const String invalidRecaptchaToken = "invalid-recaptcha-token";
  static const String invalidRecaptchaAction = "invalid-recaptcha-action";
  static const String missingClientType = "missing-client-type";
  static const String missingRecaptchaVersion = "missing-recaptcha-version";
  static const String invalidRecaptchaVersion = "invalid-recaptcha-version";
  static const String invalidReqType = "invalid-req-type";

  // storage Errors
  static const String unknown = "unknown";
  static const String objectNotFound = "object-not-found";
  static const String bucketNotFound = "bucket-not-found";
  static const String projectNotFound = "project-not-found";
  static const String unauthenticated = "unauthenticated";
  static const String unauthorized = "unauthorized";
  static const String retryLimitExceeded = "retry-limit-exceeded";
  static const String invalidChecksum = "invalid-checksum";
  static const String canceled = "canceled";
  static const String invalidEventName = "invalid-event-name";
  static const String invalidUrl = "invalid-url";
  static const String invalidArgument = "invalid-argument";
  static const String noDefaultBucket = "no-default-bucket";
  static const String cannotSliceBlob = "cannot-slice-blob";
  static const String serverFileWrongSize = "server-file-wrong-size";


  // Admin Errors
  static const String claimsTooLarge = "claims-too-large";
  static const String emailAlreadyExists = "email-already-exists";
  static const String idTokenExpired = "id-token-expired";
  static const String idTokenRevoked = "id-token-revoked";
  static const String insufficientPermission = "insufficient-permission";
  static const String invalidClaims = "invalid-claims";
  static const String invalidCreationTime = "invalid-creation-time";
  static const String invalidCredential = "invalid-credential";
  static const String invalidDisabledField = "invalid-disabled-field";
  static const String invalidDisplayName = "invalid-display-name";
  static const String invalidEmailVerified = "invalid-email-verified";
  static const String invalidHashAlgorithm = "invalid-hash-algorithm";
  static const String invalidHashBlockSize = "invalid-hash-block-size";
  static const String invalidHashDerivedKeyLength = "invalid-hash-derived-key-length";
  static const String invalidHashKey = "invalid-hash-key";
  static const String invalidHashMemoryCost = "invalid-hash-memory-cost";
  static const String invalidHashParallelization = "invalid-hash-parallelization";
  static const String invalidHashRounds = "invalid-hash-rounds";
  static const String invalidHashSaltSeparator = "invalid-hash-salt-separator";
  static const String invalidIdToken = "invalid-id-token";
  static const String invalidLastSignInTime = "invalid-last-sign-in-time";
  static const String invalidPageToken = "invalid-page-token";
  static const String invalidPasswordHash = "invalid-password-hash";
  static const String invalidPasswordSalt = "invalid-password-salt";
  static const String invalidPhotoUrl = "invalid-photo-url";
  static const String invalidProviderData = "invalid-provider-data";
  static const String invalidOauthResponseType = "invalid-oauth-responsetype";
  static const String invalidSessionCookieDuration = "invalid-session-cookie-duration";
  static const String invalidUid = "invalid-uid";
  static const String invalidUserImport = "invalid-user-import";
  static const String maximumUserCountExceeded = "maximum-user-count-exceeded";
  static const String missingAndroidPkgName = "missing-android-pkg-name";
  static const String missingHashAlgorithm = "missing-hash-algorithm";
  static const String missingUid = "missing-uid";
  static const String missingOauthClientSecret = "missing-oauth-client-secret";
  static const String phoneNumberAlreadyExists = "phone-number-already-exists";
  static const String reservedClaims = "reserved-claims";
  static const String sessionCookieExpired = "session-cookie-expired";
  static const String sessionCookieRevoked = "session-cookie-revoked";
  static const String tooManyRequests = "too-many-requests";
  static const String uidAlreadyExists = "uid-already-exists";
  static const String unauthorizedContinueUri = "unauthorized-continue-uri";
  static const String userNotFound = "user-not-found";
}
