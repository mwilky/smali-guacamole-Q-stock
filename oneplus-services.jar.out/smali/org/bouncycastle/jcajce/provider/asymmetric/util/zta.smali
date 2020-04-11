.class public abstract Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;
.super Ljavax/crypto/KeyAgreementSpi;
.source ""


# static fields
.field private static final Soa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/asn1/bvj;",
            ">;"
        }
    .end annotation
.end field

.field private static final Toa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final Uoa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Voa:Ljava/util/Hashtable;

.field private static final Woa:Ljava/util/Hashtable;


# instance fields
.field protected final Cma:Lorg/bouncycastle/crypto/dma;

.field protected final Qoa:Ljava/lang/String;

.field protected Roa:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Soa:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Voa:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Woa:Ljava/util/Hashtable;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc0

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x100

    invoke-static {v3}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    const-string v5, "DES"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    const-string v6, "DESEDE"

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    const-string v7, "BLOWFISH"

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    const-string v7, "AES"

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->dMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->lMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->tMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->eMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->mMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->uMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->gMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->oMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->wMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->fMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->nMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->vMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->hMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->pMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->xMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->jMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->rMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->zMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->iMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->qMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->yMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/wtn/zta;->INa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/wtn/zta;->JNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/wtn/zta;->KNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/asn1/cno/zta;->YKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->id_alg_CMS3DESwrap:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->des_EDE3_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v2, Lorg/bouncycastle/asn1/gck/zta;->PNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA384:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x180

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x200

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Soa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->des_EDE3_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Soa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->uMa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Soa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/wtn/zta;->HNa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "CAMELLIA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Soa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cno/zta;->VKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SEED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Soa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->PNa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/kth/zta;->tLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CAST5"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/kth/zta;->uLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IDEA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/kth/zta;->xLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Blowfish"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/kth/zta;->yLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/kth/zta;->zLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/kth/zta;->ALa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->ONa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->PNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->RNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->QNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->SNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DESede"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->des_EDE3_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_alg_CMS3DESwrap:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_alg_CMSRC2wrap:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RC2"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HmacSHA1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA224:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HmacSHA224"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HmacSHA256"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA384:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HmacSHA384"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HmacSHA512"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/wtn/zta;->FNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Camellia"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/wtn/zta;->GNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/wtn/zta;->HNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/wtn/zta;->INa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/wtn/zta;->JNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/wtn/zta;->KNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cno/zta;->YKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cno/zta;->VKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cno/zta;->WKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->hMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->jMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->jMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Voa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->des_EDE3_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Voa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->uMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Voa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->PNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Woa:Ljava/util/Hashtable;

    invoke-virtual {v0, v5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Woa:Ljava/util/Hashtable;

    invoke-virtual {v0, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Woa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->PNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Woa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->des_EDE3_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Woa:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_alg_CMS3DESwrap:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/dma;)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Qoa:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Cma:Lorg/bouncycastle/crypto/dma;

    return-void
.end method

.method protected static kth([B)[B
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    array-length v3, v2

    invoke-static {p0, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method protected static va(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/bio/you;->cMa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "AES"

    return-object p0

    :cond_1
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Uoa:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method protected static wa(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Toa:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private zta([BLjava/lang/String;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Cma:Lorg/bouncycastle/crypto/dma;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ltz p3, :cond_0

    div-int/lit8 p3, p3, 0x8

    new-array p2, p3, [B

    new-instance p3, Lorg/bouncycastle/crypto/wtn/oxb;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Roa:[B

    invoke-direct {p3, p1, v0}, Lorg/bouncycastle/crypto/wtn/oxb;-><init>([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Cma:Lorg/bouncycastle/crypto/dma;

    invoke-interface {v0, p3}, Lorg/bouncycastle/crypto/dma;->zta(Lorg/bouncycastle/crypto/ywr;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Cma:Lorg/bouncycastle/crypto/dma;

    array-length p3, p2

    invoke-interface {p0, p2, v1, p3}, Lorg/bouncycastle/crypto/dma;->zta([BII)I

    invoke-static {p1}, Lorg/bouncycastle/util/zta;->ugm([B)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown algorithm encountered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-lez p3, :cond_2

    div-int/lit8 p3, p3, 0x8

    new-array p0, p3, [B

    array-length p2, p0

    invoke-static {p1, v1, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lorg/bouncycastle/util/zta;->ugm([B)V

    return-object p0

    :cond_2
    return-object p1
.end method


# virtual methods
.method protected engineGenerateSecret([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->engineGenerateSecret()[B

    move-result-object v0

    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/4 p0, 0x0

    array-length v1, v0

    invoke-static {v0, p0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v0

    return p0

    :cond_0
    new-instance p1, Ljavax/crypto/ShortBufferException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Qoa:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " key agreement: need "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Voa:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Voa:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->wa(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->kg()[B

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->zta([BLjava/lang/String;I)[B

    move-result-object p0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->va(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Woa:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/crypto/wtn/sis;->bvj([B)V

    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineGenerateSecret()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Cma:Lorg/bouncycastle/crypto/dma;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->kg()[B

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->zta([BLjava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->kg()[B

    move-result-object p0

    return-object p0
.end method

.method protected abstract kg()[B
.end method
