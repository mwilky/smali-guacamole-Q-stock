.class public Lorg/bouncycastle/asn1/x509/p;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private extensions:Ljava/util/Hashtable;

.field private hza:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/p;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/p;->hza:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/asn1/x509/o;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/o;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/p;->hza:Ljava/util/Vector;

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/p;->extensions:Ljava/util/Hashtable;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/x509/o;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/p;->hza:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/p;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/p;->hza:Ljava/util/Vector;

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;ZLorg/bouncycastle/asn1/ssp;)V
    .locals 1

    :try_start_0
    invoke-interface {p3}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p3

    const-string v0, "DER"

    invoke-virtual {p3, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/p;->zta(Lorg/bouncycastle/asn1/bvj;Z[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error encoding value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;Z[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/p;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/p;->hza:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/p;->extensions:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/asn1/x509/n;

    new-instance v1, Lorg/bouncycastle/asn1/C;

    invoke-direct {v1, p3}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/asn1/x509/n;-><init>(ZLorg/bouncycastle/asn1/ibl;)V

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
