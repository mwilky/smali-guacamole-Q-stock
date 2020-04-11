.class Lorg/bouncycastle/asn1/irq;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final EMPTY_SET:Lorg/bouncycastle/asn1/f;

.field static final jua:Lorg/bouncycastle/asn1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/d;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/d;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/irq;->jua:Lorg/bouncycastle/asn1/d;

    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/irq;->EMPTY_SET:Lorg/bouncycastle/asn1/f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sis(Lorg/bouncycastle/asn1/cno;)Lorg/bouncycastle/asn1/f;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/irq;->EMPTY_SET:Lorg/bouncycastle/asn1/f;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/f;-><init>(Lorg/bouncycastle/asn1/cno;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static you(Lorg/bouncycastle/asn1/cno;)Lorg/bouncycastle/asn1/d;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/irq;->jua:Lorg/bouncycastle/asn1/d;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/d;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/d;-><init>(Lorg/bouncycastle/asn1/cno;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
