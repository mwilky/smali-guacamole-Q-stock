.class public Lorg/bouncycastle/asn1/x509/vdb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Xya:Ljava/util/Vector;

.field private extensions:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/vdb;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/vdb;->Xya:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/asn1/x509/ugm;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/vdb;->Xya:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/gwm;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/vdb;->Xya:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/vdb;->extensions:Ljava/util/Hashtable;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/vdb;->Xya:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/x509/gwm;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/x509/ugm;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;-><init>([Lorg/bouncycastle/asn1/x509/gwm;)V

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/vdb;->Xya:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/vdb;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/vdb;->Xya:Ljava/util/Vector;

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;ZLorg/bouncycastle/asn1/ssp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p3

    const-string v0, "DER"

    invoke-virtual {p3, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/vdb;->zta(Lorg/bouncycastle/asn1/bvj;Z[B)V

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;Z[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/vdb;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/vdb;->Xya:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/vdb;->extensions:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/asn1/x509/gwm;

    new-instance v1, Lorg/bouncycastle/asn1/C;

    invoke-direct {v1, p3}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-direct {v0, p1, p2, v1}, Lorg/bouncycastle/asn1/x509/gwm;-><init>(Lorg/bouncycastle/asn1/bvj;ZLorg/bouncycastle/asn1/ibl;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extension "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already added"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(Lorg/bouncycastle/asn1/x509/gwm;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/vdb;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/gwm;->di()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/vdb;->Xya:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/gwm;->di()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/vdb;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/gwm;->di()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extension "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/gwm;->di()Lorg/bouncycastle/asn1/bvj;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already added"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
