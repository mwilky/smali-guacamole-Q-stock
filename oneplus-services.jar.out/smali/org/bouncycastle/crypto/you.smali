.class public Lorg/bouncycastle/crypto/you;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private awa:Lorg/bouncycastle/crypto/wtn/you;

.field private bwa:Lorg/bouncycastle/crypto/wtn/you;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/kth;Lorg/bouncycastle/crypto/kth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lorg/bouncycastle/crypto/wtn/you;

    iput-object p1, p0, Lorg/bouncycastle/crypto/you;->awa:Lorg/bouncycastle/crypto/wtn/you;

    check-cast p2, Lorg/bouncycastle/crypto/wtn/you;

    iput-object p2, p0, Lorg/bouncycastle/crypto/you;->bwa:Lorg/bouncycastle/crypto/wtn/you;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/wtn/you;Lorg/bouncycastle/crypto/wtn/you;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/you;->awa:Lorg/bouncycastle/crypto/wtn/you;

    iput-object p2, p0, Lorg/bouncycastle/crypto/you;->bwa:Lorg/bouncycastle/crypto/wtn/you;

    return-void
.end method


# virtual methods
.method public getPrivate()Lorg/bouncycastle/crypto/wtn/you;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you;->bwa:Lorg/bouncycastle/crypto/wtn/you;

    return-object p0
.end method

.method public getPublic()Lorg/bouncycastle/crypto/wtn/you;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you;->awa:Lorg/bouncycastle/crypto/wtn/you;

    return-object p0
.end method
