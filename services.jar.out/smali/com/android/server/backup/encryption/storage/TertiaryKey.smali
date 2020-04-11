.class public Lcom/android/server/backup/encryption/storage/TertiaryKey;
.super Ljava/lang/Object;
.source "TertiaryKey.java"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mSecondaryKeyAlias:Ljava/lang/String;

.field private final mWrappedKeyBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/encryption/storage/TertiaryKey;->mSecondaryKeyAlias:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/backup/encryption/storage/TertiaryKey;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/encryption/storage/TertiaryKey;->mWrappedKeyBytes:[B

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKey;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryKeyAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKey;->mSecondaryKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getWrappedKeyBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/encryption/storage/TertiaryKey;->mWrappedKeyBytes:[B

    return-object v0
.end method
