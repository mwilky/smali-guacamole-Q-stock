.class public Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;
.super Ljava/lang/Object;
.source "FingerprintMixer.java"


# static fields
.field private static final DERIVED_KEY_NAME:Ljava/lang/String; = "RabinFingerprint64Mixer"

.field public static final SALT_LENGTH_BYTES:I = 0x20


# instance fields
.field private final mAddend:J

.field private final mMultiplicand:J


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Requires a 256-bit salt."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "RabinFingerprint64Mixer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/server/backup/encryption/chunking/cdc/Hkdf;->hkdf([B[B[B)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mAddend:J

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    or-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mMultiplicand:J

    return-void

    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "SecretKey must support encoding for FingerprintMixer."

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getAddend()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mAddend:J

    return-wide v0
.end method

.method getMultiplicand()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mMultiplicand:J

    return-wide v0
.end method

.method mix(J)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mAddend:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mMultiplicand:J

    mul-long/2addr v0, v2

    return-wide v0
.end method
