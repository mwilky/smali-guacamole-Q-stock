.class abstract Lorg/bouncycastle/asn1/ga;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field protected final Mka:Ljava/io/InputStream;

.field private Nka:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ga;->Mka:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/ga;->Nka:I

    return-void
.end method


# virtual methods
.method protected T(Z)V
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/ga;->Mka:Ljava/io/InputStream;

    instance-of v0, p0, Lorg/bouncycastle/asn1/da;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/da;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/da;->U(Z)V

    :cond_0
    return-void
.end method

.method getRemaining()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/ga;->Nka:I

    return p0
.end method
