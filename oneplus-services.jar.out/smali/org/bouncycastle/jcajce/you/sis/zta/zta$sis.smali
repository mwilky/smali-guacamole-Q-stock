.class Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/sis/zta/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field SEa:Ljava/lang/String;

.field TEa:[Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;

.field obj:Ljava/lang/Object;

.field final synthetic this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

.field type:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/you/sis/zta/zta;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->date:Ljava/util/Date;

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->type:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->SEa:Ljava/lang/String;

    iput-object p5, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->TEa:[Ljava/security/cert/Certificate;

    const/16 p2, 0x14

    new-array v4, p2, [B

    iget-object p2, p1, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->Moa:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/security/SecureRandom;->setSeed(J)V

    iget-object p2, p1, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->Moa:Ljava/security/SecureRandom;

    invoke-virtual {p2, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p2, p1, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->Moa:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result p2

    and-int/lit16 p2, p2, 0x3ff

    add-int/lit16 v5, p2, 0x400

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p5, Ljava/io/DataOutputStream;

    invoke-direct {p5, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v0, v4

    invoke-virtual {p5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p5, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p5, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->zta(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p4

    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v0, p5, p4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance p4, Ljava/io/DataOutputStream;

    invoke-direct {p4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->zta(Lorg/bouncycastle/jcajce/you/sis/zta/zta;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    invoke-virtual {p4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jcajce/you/sis/zta/zta;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->date:Ljava/util/Date;

    const/4 p1, 0x1

    iput p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->type:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->SEa:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->TEa:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jcajce/you/sis/zta/zta;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->date:Ljava/util/Date;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->SEa:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->date:Ljava/util/Date;

    iput p4, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->type:I

    iput-object p5, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jcajce/you/sis/zta/zta;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->date:Ljava/util/Date;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->SEa:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->date:Ljava/util/Date;

    iput p4, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->type:I

    iput-object p5, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    iput-object p6, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->TEa:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jcajce/you/sis/zta/zta;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->date:Ljava/util/Date;

    const/4 p1, 0x3

    iput p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->type:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->SEa:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    iput-object p4, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->TEa:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method getAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->SEa:Ljava/lang/String;

    return-object p0
.end method

.method getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->TEa:[Ljava/security/cert/Certificate;

    return-object p0
.end method

.method getDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->date:Ljava/util/Date;

    return-object p0
.end method

.method getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method getType()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->type:I

    return p0
.end method

.method sis([C)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v0, "no match"

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    instance-of v2, v1, Ljava/security/Key;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget v1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v7, v1, [B

    invoke-virtual {v2, v7}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iget-object v3, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    const-string v4, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->zta(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v2, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->zta(Lorg/bouncycastle/jcajce/you/sis/zta/zta;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iget-object v3, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    const-string v4, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object v6, p1

    move-object v7, v1

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->zta(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v2, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->zta(Lorg/bouncycastle/jcajce/you/sis/zta/zta;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    move-object v7, v1

    move v8, v9

    goto :goto_1

    :catch_1
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iget-object v3, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    const-string v4, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object v6, p1

    move-object v7, v1

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->zta(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iget-object v2, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->zta(Lorg/bouncycastle/jcajce/you/sis/zta/zta;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v2

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v3, v7

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v9, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    const-string v4, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->zta(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v9, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->this$0:Lorg/bouncycastle/jcajce/you/sis/zta/zta;

    invoke-static {v3, v2, p1}, Lorg/bouncycastle/jcajce/you/sis/zta/zta;->zta(Lorg/bouncycastle/jcajce/you/sis/zta/zta;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/zta/zta$sis;->obj:Ljava/lang/Object;

    return-object v2

    :cond_2
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p0, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p0, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "forget something!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
