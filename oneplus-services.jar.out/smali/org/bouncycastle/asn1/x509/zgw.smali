.class public Lorg/bouncycastle/asn1/x509/zgw;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/rtg;


# static fields
.field public static final dNSName:I = 0x2

.field public static final iPAddress:I = 0x7

.field public static final nsa:I = 0x1

.field public static final osa:I = 0x3

.field public static final otherName:I = 0x0

.field public static final psa:I = 0x4

.field public static final qsa:I = 0x5

.field public static final rsa:I = 0x6

.field public static final ssa:I = 0x8


# instance fields
.field private obj:Lorg/bouncycastle/asn1/ssp;

.field private tag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/x509/zgw;->tag:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    new-instance p1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    new-instance p1, Lorg/bouncycastle/asn1/bvj/tsu;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/bvj/tsu;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/x509/zgw;->Yc(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lorg/bouncycastle/asn1/C;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IP Address is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t process String for tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/x;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    :goto_2
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ssp;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    iput p1, p0, Lorg/bouncycastle/asn1/x509/zgw;->tag:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj/tsu;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    const/4 p1, 0x4

    iput p1, p0, Lorg/bouncycastle/asn1/x509/zgw;->tag:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/q;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    const/4 p1, 0x4

    iput p1, p0, Lorg/bouncycastle/asn1/x509/zgw;->tag:I

    return-void
.end method

.method private Wc(Ljava/lang/String;)[I
    .locals 10

    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, ":"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x8

    new-array v3, v2, [I

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v6, :cond_0

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_0
    const/4 p1, -0x1

    move v1, p1

    move p1, v4

    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v1, p1, 0x1

    aput v4, v3, p1

    move v9, v1

    move v1, p1

    move p1, v9

    goto :goto_0

    :cond_1
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_3

    add-int/lit8 v6, p1, 0x1

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, p1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_2
    move p1, v6

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "."

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/2addr v7, v2

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v7, v8

    aput v7, v3, p1

    add-int/lit8 p1, v5, 0x1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/2addr v7, v2

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v6, v7

    aput v6, v3, v5

    goto :goto_0

    :cond_4
    array-length p0, v3

    if-eq p1, p0, :cond_5

    array-length p0, v3

    sub-int/2addr p1, v1

    sub-int/2addr p0, p1

    invoke-static {v3, v1, v3, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    array-length p0, v3

    sub-int/2addr p0, p1

    if-eq v1, p0, :cond_5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object v3
.end method

.method private Xc(Ljava/lang/String;)[I
    .locals 5

    const/16 p0, 0x8

    new-array p0, p0, [I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_0

    div-int/lit8 v1, v0, 0x10

    aget v2, p0, v1

    rem-int/lit8 v3, v0, 0x10

    rsub-int/lit8 v3, v3, 0xf

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private Yc(Ljava/lang/String;)[B
    .locals 5

    invoke-static {p1}, Lorg/bouncycastle/util/ssp;->Qa(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/bouncycastle/util/ssp;->Pa(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/ssp;->Oa(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/util/ssp;->Na(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x4

    if-gez v0, :cond_3

    new-array v0, v1, [B

    invoke-direct {p0, p1, v0, v2}, Lorg/bouncycastle/asn1/x509/zgw;->you(Ljava/lang/String;[BI)V

    return-object v0

    :cond_3
    const/16 v3, 0x8

    new-array v3, v3, [B

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3, v2}, Lorg/bouncycastle/asn1/x509/zgw;->you(Ljava/lang/String;[BI)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, p1, v3, v1}, Lorg/bouncycastle/asn1/x509/zgw;->you(Ljava/lang/String;[BI)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, v3, v1}, Lorg/bouncycastle/asn1/x509/zgw;->sis(Ljava/lang/String;[BI)V

    :goto_1
    return-object v3

    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x10

    if-gez v0, :cond_6

    new-array v0, v1, [B

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/zgw;->Wc(Ljava/lang/String;)[I

    move-result-object p1

    invoke-direct {p0, p1, v0, v2}, Lorg/bouncycastle/asn1/x509/zgw;->sis([I[BI)V

    return-object v0

    :cond_6
    const/16 v3, 0x20

    new-array v3, v3, [B

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/x509/zgw;->Wc(Ljava/lang/String;)[I

    move-result-object v4

    invoke-direct {p0, v4, v3, v2}, Lorg/bouncycastle/asn1/x509/zgw;->sis([I[BI)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_7

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/zgw;->Wc(Ljava/lang/String;)[I

    move-result-object p1

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/zgw;->Xc(Ljava/lang/String;)[I

    move-result-object p1

    :goto_3
    invoke-direct {p0, p1, v3, v1}, Lorg/bouncycastle/asn1/x509/zgw;->sis([I[BI)V

    return-object v3
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zgw;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/zgw;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/lqr;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/bvj;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ibl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ibl;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/bouncycastle/asn1/x509/zgw;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/bvj/tsu;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    new-instance p0, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :cond_1
    :goto_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/zgw;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse encoded general name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    check-cast p0, Lorg/bouncycastle/asn1/x509/zgw;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sis(Ljava/lang/String;[BI)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-eq p1, p0, :cond_0

    div-int/lit8 v0, p1, 0x8

    add-int/2addr v0, p3

    aget-byte v1, p2, v0

    rem-int/lit8 v2, p1, 0x8

    rsub-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sis([I[BI)V
    .locals 3

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-eq p0, v0, :cond_0

    mul-int/lit8 v0, p0, 0x2

    add-int v1, v0, p3

    aget v2, p1, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    aget v1, p1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private you(Ljava/lang/String;[BI)V
    .locals 2

    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, "./"

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    add-int/2addr p1, p3

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    move p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/zgw;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/lqr;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/lqr;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/zgw;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getName()Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    return-object p0
.end method

.method public getTagNo()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/x509/zgw;->tag:I

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/asn1/x509/zgw;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v2, 0x1

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-direct {v1, v2, v0, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-object v1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v2, 0x0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-direct {v1, v2, v0, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/bouncycastle/asn1/x509/zgw;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/bouncycastle/asn1/x509/zgw;->tag:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/zgw;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
