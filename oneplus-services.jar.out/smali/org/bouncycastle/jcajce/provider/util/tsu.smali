.class public Lorg/bouncycastle/jcajce/provider/util/tsu;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static PCa:Ljava/util/Set;

.field private static QCa:Ljava/util/Set;

.field private static RCa:Ljava/util/Set;

.field private static SCa:Ljava/util/Set;

.field private static Voa:Ljava/util/Map;

.field private static md5:Ljava/util/Set;

.field private static vza:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->md5:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->vza:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->PCa:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->QCa:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->RCa:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->SCa:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->md5:Ljava/util/Set;

    const-string v1, "MD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->md5:Ljava/util/Set;

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->md5:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->vza:Ljava/util/Set;

    const-string v2, "SHA1"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->vza:Ljava/util/Set;

    const-string v3, "SHA-1"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->vza:Ljava/util/Set;

    sget-object v4, Lorg/bouncycastle/asn1/gck/zta;->TNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->PCa:Ljava/util/Set;

    const-string v4, "SHA224"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->PCa:Ljava/util/Set;

    const-string v5, "SHA-224"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->PCa:Ljava/util/Set;

    sget-object v6, Lorg/bouncycastle/asn1/bio/you;->QLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->QCa:Ljava/util/Set;

    const-string v6, "SHA256"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->QCa:Ljava/util/Set;

    const-string v7, "SHA-256"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->QCa:Ljava/util/Set;

    sget-object v8, Lorg/bouncycastle/asn1/bio/you;->NLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->RCa:Ljava/util/Set;

    const-string v8, "SHA384"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->RCa:Ljava/util/Set;

    const-string v9, "SHA-384"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->RCa:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bio/you;->OLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->SCa:Ljava/util/Set;

    const-string v10, "SHA512"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->SCa:Ljava/util/Set;

    const-string v11, "SHA-512"

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->SCa:Ljava/util/Set;

    sget-object v12, Lorg/bouncycastle/asn1/bio/you;->PLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v12, Lorg/bouncycastle/asn1/dma/gwm;->md5:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->md5:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v12, Lorg/bouncycastle/asn1/dma/gwm;->md5:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->TNa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->TNa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->TNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/gck/zta;->TNa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->QLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->QLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->QLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/bio/you;->QLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->NLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->NLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->NLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/bio/you;->NLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->OLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->OLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->OLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/bio/you;->OLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->PLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->PLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->PLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/bio/you;->PLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->RLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA512(224)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->RLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-512(224)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->RLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/bio/you;->RLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->SLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA512(256)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->SLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-512(256)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->SLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/bio/you;->SLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->TLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA3-224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->TLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/bio/you;->TLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->ULa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA3-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->ULa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/bio/you;->ULa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->VLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA3-384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->VLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/bio/you;->VLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->WLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA3-512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->WLa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/bio/you;->WLa:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Da(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->Voa:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method

.method public static Ka(Ljava/lang/String;)Lorg/bouncycastle/crypto/qbh;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->vza:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->md5:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->veq()Lorg/bouncycastle/crypto/qbh;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->PCa:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->bud()Lorg/bouncycastle/crypto/qbh;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->QCa:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->oxb()Lorg/bouncycastle/crypto/qbh;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->RCa:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->ywr()Lorg/bouncycastle/crypto/qbh;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->SCa:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->wtn()Lorg/bouncycastle/crypto/qbh;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static qbh(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->vza:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->vza:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->PCa:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->PCa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->QCa:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->QCa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->RCa:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->RCa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->SCa:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->SCa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/tsu;->md5:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lorg/bouncycastle/jcajce/provider/util/tsu;->md5:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 p0, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
