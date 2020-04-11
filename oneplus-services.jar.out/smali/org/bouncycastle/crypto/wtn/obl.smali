.class public Lorg/bouncycastle/crypto/wtn/obl;
.super Lorg/bouncycastle/crypto/wtn/ugm;
.source ""


# instance fields
.field private final Q:Lyou/zta/sis/zta/wtn;


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/wtn;Lorg/bouncycastle/crypto/wtn/ibl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/wtn/ugm;-><init>(ZLorg/bouncycastle/crypto/wtn/ibl;)V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/bouncycastle/crypto/wtn/ibl;->zta(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/obl;->Q:Lyou/zta/sis/zta/wtn;

    return-void
.end method


# virtual methods
.method public getQ()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/obl;->Q:Lyou/zta/sis/zta/wtn;

    return-object p0
.end method
