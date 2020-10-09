.class Lorg/bouncycastle/asn1/bvj$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/bvj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zta"
.end annotation


# instance fields
.field private final Dxa:[B

.field private final key:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/zta;->hashCode([B)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/bvj$zta;->key:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj$zta;->Dxa:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/bvj$zta;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj$zta;->Dxa:[B

    check-cast p1, Lorg/bouncycastle/asn1/bvj$zta;

    iget-object p1, p1, Lorg/bouncycastle/asn1/bvj$zta;->Dxa:[B

    invoke-static {p0, p1}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/bvj$zta;->key:I

    return p0
.end method
