.class Lorg/bouncycastle/asn1/zgw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/oxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/asn1/obl;->parser()Lorg/bouncycastle/asn1/oxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fxa:Lorg/bouncycastle/asn1/obl;

.field private index:I

.field private final max:I

.field final synthetic this$0:Lorg/bouncycastle/asn1/obl;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/obl;Lorg/bouncycastle/asn1/obl;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/zgw;->this$0:Lorg/bouncycastle/asn1/obl;

    iput-object p2, p0, Lorg/bouncycastle/asn1/zgw;->Fxa:Lorg/bouncycastle/asn1/obl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lorg/bouncycastle/asn1/zgw;->this$0:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/zgw;->max:I

    return-void
.end method


# virtual methods
.method public cno()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/zgw;->Fxa:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ssp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/zgw;->index:I

    iget v1, p0, Lorg/bouncycastle/asn1/zgw;->max:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/zgw;->this$0:Lorg/bouncycastle/asn1/obl;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/zgw;->index:I

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    instance-of v0, p0, Lorg/bouncycastle/asn1/obl;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->parser()Lorg/bouncycastle/asn1/oxb;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ear;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/bouncycastle/asn1/ear;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->parser()Lorg/bouncycastle/asn1/ire;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/zgw;->Fxa:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method
