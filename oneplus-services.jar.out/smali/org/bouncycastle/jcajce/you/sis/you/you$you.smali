.class Lorg/bouncycastle/jcajce/you/sis/you/you$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/sis/you/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field id:[B

.field final synthetic this$0:Lorg/bouncycastle/jcajce/you/sis/you/you;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/you/sis/you/you;Ljava/security/PublicKey;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you$you;->this$0:Lorg/bouncycastle/jcajce/you/sis/you/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(Lorg/bouncycastle/jcajce/you/sis/you/you;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/b;->getKeyIdentifier()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you$you;->id:[B

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jcajce/you/sis/you/you;[B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you$you;->this$0:Lorg/bouncycastle/jcajce/you/sis/you/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/you/sis/you/you$you;->id:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/you/sis/you/you$you;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/bouncycastle/jcajce/you/sis/you/you$you;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you$you;->id:[B

    iget-object p1, p1, Lorg/bouncycastle/jcajce/you/sis/you/you$you;->id:[B

    invoke-static {p0, p1}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you$you;->id:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->hashCode([B)I

    move-result p0

    return p0
.end method
