.class public Lorg/bouncycastle/asn1/kth/tsu;
.super Lorg/bouncycastle/asn1/x;
.source ""


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerisignCzagExtension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
