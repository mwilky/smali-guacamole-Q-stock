.class public Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreSecondaryKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey$Status;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecoverableKeyStoreSecondaryKey"


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mSecretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->mAlias:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->mSecretKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method private getStatusInternal(Landroid/content/Context;)I
    .locals 4
    .annotation build Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey$Status;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    invoke-static {p1}, Landroid/security/keystore/recovery/RecoveryController;->getInstance(Landroid/content/Context;)Landroid/security/keystore/recovery/RecoveryController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/security/keystore/recovery/RecoveryController;->getRecoveryStatus(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status from getRecoveryStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x2

    return v1
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->mSecretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getStatus(Landroid/content/Context;)I
    .locals 3
    .annotation build Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey$Status;
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;->getStatusInternal(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catch Landroid/security/keystore/recovery/InternalRecoveryServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "RecoverableKeyStoreSecondaryKey"

    const-string v2, "Internal error getting recovery status"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    return v1
.end method
