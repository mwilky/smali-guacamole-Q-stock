.class Lorg/bouncycastle/asn1/qeg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/asn1/ivd;->Sg()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field counter:I

.field final synthetic this$0:Lorg/bouncycastle/asn1/ivd;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ivd;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/qeg;->this$0:Lorg/bouncycastle/asn1/ivd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/asn1/qeg;->counter:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/qeg;->counter:I

    iget-object p0, p0, Lorg/bouncycastle/asn1/qeg;->this$0:Lorg/bouncycastle/asn1/ivd;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ivd;->zta(Lorg/bouncycastle/asn1/ivd;)[Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/qeg;->this$0:Lorg/bouncycastle/asn1/ivd;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ivd;->zta(Lorg/bouncycastle/asn1/ivd;)[Lorg/bouncycastle/asn1/ibl;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/asn1/qeg;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/qeg;->counter:I

    aget-object p0, v0, v1

    return-object p0
.end method
