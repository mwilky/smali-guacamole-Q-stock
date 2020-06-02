.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/tsu;


# instance fields
.field private JEa:Ljava/util/Hashtable;

.field private KEa:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>(Ljava/util/Hashtable;Ljava/util/Vector;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->JEa:Ljava/util/Hashtable;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->KEa:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method getAttributes()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->JEa:Ljava/util/Hashtable;

    return-object p0
.end method

.method getOrdering()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->KEa:Ljava/util/Vector;

    return-object p0
.end method

.method public readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->JEa:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->KEa:Ljava/util/Vector;

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/dma;

    check-cast v0, [B

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bvj;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method size()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->KEa:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public vdb()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->KEa:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->KEa:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ugm;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ugm;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->vdb()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ugm;->sis(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->JEa:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ugm;->sis(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_0

    :goto_2
    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->JEa:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ssp;

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->JEa:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->JEa:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->JEa:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->KEa:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
