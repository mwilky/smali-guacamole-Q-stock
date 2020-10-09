.class public Lorg/bouncycastle/jcajce/wtn$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/wtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field private final AEa:Ljava/security/cert/PKIXParameters;

.field private BEa:Lorg/bouncycastle/jcajce/cno;

.field private CEa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/rtg;",
            ">;"
        }
    .end annotation
.end field

.field private DEa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/zgw;",
            "Lorg/bouncycastle/jcajce/rtg;",
            ">;"
        }
    .end annotation
.end field

.field private EEa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/you;",
            ">;"
        }
    .end annotation
.end field

.field private FEa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/zgw;",
            "Lorg/bouncycastle/jcajce/you;",
            ">;"
        }
    .end annotation
.end field

.field private GEa:Z

.field private HEa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final date:Ljava/util/Date;

.field private pqa:I

.field private qqa:Z


# direct methods
.method public constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->CEa:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->DEa:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->EEa:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->FEa:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->pqa:I

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->qqa:Z

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->AEa:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/jcajce/cno$zta;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/cno$zta;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/cno$zta;->build()Lorg/bouncycastle/jcajce/cno;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->BEa:Lorg/bouncycastle/jcajce/cno;

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->date:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->GEa:Z

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/wtn$zta;->HEa:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/wtn;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->CEa:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->DEa:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->EEa:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->FEa:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->pqa:I

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->qqa:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn;->zta(Lorg/bouncycastle/jcajce/wtn;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->AEa:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn;->you(Lorg/bouncycastle/jcajce/wtn;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->date:Ljava/util/Date;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn;->sis(Lorg/bouncycastle/jcajce/wtn;)Lorg/bouncycastle/jcajce/cno;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->BEa:Lorg/bouncycastle/jcajce/cno;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn;->tsu(Lorg/bouncycastle/jcajce/wtn;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->CEa:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn;->rtg(Lorg/bouncycastle/jcajce/wtn;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->DEa:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn;->ssp(Lorg/bouncycastle/jcajce/wtn;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->EEa:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn;->cno(Lorg/bouncycastle/jcajce/wtn;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->FEa:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn;->kth(Lorg/bouncycastle/jcajce/wtn;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->qqa:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn;->bio(Lorg/bouncycastle/jcajce/wtn;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->pqa:I

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/wtn;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->GEa:Z

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/wtn;->getTrustAnchors()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/wtn$zta;->HEa:Ljava/util/Set;

    return-void
.end method

.method static synthetic bio(Lorg/bouncycastle/jcajce/wtn$zta;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->qqa:Z

    return p0
.end method

.method static synthetic cno(Lorg/bouncycastle/jcajce/wtn$zta;)Lorg/bouncycastle/jcajce/cno;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->BEa:Lorg/bouncycastle/jcajce/cno;

    return-object p0
.end method

.method static synthetic igw(Lorg/bouncycastle/jcajce/wtn$zta;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->pqa:I

    return p0
.end method

.method static synthetic kth(Lorg/bouncycastle/jcajce/wtn$zta;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->GEa:Z

    return p0
.end method

.method static synthetic rtg(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->EEa:Ljava/util/List;

    return-object p0
.end method

.method static synthetic sis(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->CEa:Ljava/util/List;

    return-object p0
.end method

.method static synthetic ssp(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->FEa:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic tsu(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->DEa:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic wtn(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->HEa:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic you(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->date:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic zta(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/security/cert/PKIXParameters;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->AEa:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method


# virtual methods
.method public W(Z)Lorg/bouncycastle/jcajce/wtn$zta;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/wtn$zta;->qqa:Z

    return-object p0
.end method

.method public ba(I)Lorg/bouncycastle/jcajce/wtn$zta;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jcajce/wtn$zta;->pqa:I

    return-object p0
.end method

.method public build()Lorg/bouncycastle/jcajce/wtn;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/wtn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/wtn;-><init>(Lorg/bouncycastle/jcajce/wtn$zta;Lorg/bouncycastle/jcajce/igw;)V

    return-object v0
.end method

.method public setRevocationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/wtn$zta;->GEa:Z

    return-void
.end method

.method public setTrustAnchors(Ljava/util/Set;)Lorg/bouncycastle/jcajce/wtn$zta;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Lorg/bouncycastle/jcajce/wtn$zta;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jcajce/wtn$zta;->HEa:Ljava/util/Set;

    return-object p0
.end method

.method public you(Lorg/bouncycastle/jcajce/cno;)Lorg/bouncycastle/jcajce/wtn$zta;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/wtn$zta;->BEa:Lorg/bouncycastle/jcajce/cno;

    return-object p0
.end method

.method public zta(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/jcajce/wtn$zta;
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/wtn$zta;->HEa:Ljava/util/Set;

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/x509/zgw;Lorg/bouncycastle/jcajce/rtg;)Lorg/bouncycastle/jcajce/wtn$zta;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->DEa:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/x509/zgw;Lorg/bouncycastle/jcajce/you;)Lorg/bouncycastle/jcajce/wtn$zta;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->FEa:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/jcajce/rtg;)Lorg/bouncycastle/jcajce/wtn$zta;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->CEa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/jcajce/you;)Lorg/bouncycastle/jcajce/wtn$zta;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/wtn$zta;->EEa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
