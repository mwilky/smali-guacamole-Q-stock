.class Lorg/bouncycastle/asn1/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final EMPTY_SET:Lorg/bouncycastle/asn1/ear;

.field static final vxa:Lorg/bouncycastle/asn1/obl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/G;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/G;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/t;->vxa:Lorg/bouncycastle/asn1/obl;

    new-instance v0, Lorg/bouncycastle/asn1/I;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/I;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/t;->EMPTY_SET:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sis(Lorg/bouncycastle/asn1/cno;)Lorg/bouncycastle/asn1/ear;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/t;->EMPTY_SET:Lorg/bouncycastle/asn1/ear;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/Y;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/Y;-><init>(Lorg/bouncycastle/asn1/cno;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static you(Lorg/bouncycastle/asn1/cno;)Lorg/bouncycastle/asn1/obl;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/t;->vxa:Lorg/bouncycastle/asn1/obl;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/X;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/X;-><init>(Lorg/bouncycastle/asn1/cno;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
