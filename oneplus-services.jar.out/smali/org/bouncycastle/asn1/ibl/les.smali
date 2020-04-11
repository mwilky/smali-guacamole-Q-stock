.class public Lorg/bouncycastle/asn1/ibl/les;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private c:Lyou/zta/sis/zta/rtg;

.field private final encoding:Lorg/bouncycastle/asn1/ibl;

.field private p:Lyou/zta/sis/zta/wtn;


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl;)V
    .locals 0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/les;->c:Lyou/zta/sis/zta/rtg;

    new-instance p1, Lorg/bouncycastle/asn1/C;

    invoke-static {p2}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/les;->encoding:Lorg/bouncycastle/asn1/ibl;

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/wtn;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/wtn;Z)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/wtn;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/les;->p:Lyou/zta/sis/zta/wtn;

    new-instance v0, Lorg/bouncycastle/asn1/C;

    invoke-virtual {p1, p2}, Lyou/zta/sis/zta/wtn;->ba(Z)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/les;->encoding:Lorg/bouncycastle/asn1/ibl;

    return-void
.end method


# virtual methods
.method public declared-synchronized Fi()Lyou/zta/sis/zta/wtn;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ibl/les;->p:Lyou/zta/sis/zta/wtn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ibl/les;->c:Lyou/zta/sis/zta/rtg;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/les;->encoding:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lyou/zta/sis/zta/rtg;->gwm([B)Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/les;->p:Lyou/zta/sis/zta/wtn;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ibl/les;->p:Lyou/zta/sis/zta/wtn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Gi()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/les;->encoding:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public Hi()Z
    .locals 3

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/les;->encoding:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    aget-byte v1, p0, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    aget-byte p0, p0, v0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/les;->encoding:Lorg/bouncycastle/asn1/ibl;

    return-object p0
.end method
