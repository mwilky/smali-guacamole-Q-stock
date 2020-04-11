.class public Lorg/bouncycastle/x509/tsu;
.super Ljava/security/cert/PKIXParameters;
.source ""


# static fields
.field public static final Uma:I = 0x0

.field public static final Vma:I = 0x1


# instance fields
.field private Lma:Ljava/util/List;

.field private Mma:Z

.field private Nma:Ljava/util/List;

.field private Oma:Ljava/util/Set;

.field private Pma:Ljava/util/Set;

.field private Qma:Ljava/util/Set;

.field private Rma:Ljava/util/Set;

.field private Sma:I

.field private Tma:Z

.field private selector:Lorg/bouncycastle/util/dma;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/x509/tsu;->Sma:I

    iput-boolean p1, p0, Lorg/bouncycastle/x509/tsu;->Tma:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/tsu;->Lma:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/tsu;->Nma:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/tsu;->Oma:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/tsu;->Pma:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/tsu;->Qma:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/tsu;->Rma:Ljava/util/Set;

    return-void
.end method

.method public static zta(Ljava/security/cert/PKIXParameters;)Lorg/bouncycastle/x509/tsu;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/x509/tsu;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/tsu;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/tsu;->you(Ljava/security/cert/PKIXParameters;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Qf()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Nma:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public Rf()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Rma:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public Sf()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Pma:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public T(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/x509/tsu;->Mma:Z

    return-void
.end method

.method public Tf()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Qma:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public U(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/x509/tsu;->Tma:Z

    return-void
.end method

.method public Uf()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Lma:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public V(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/x509/tsu;->Sma:I

    return-void
.end method

.method public Vf()Lorg/bouncycastle/util/dma;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->selector:Lorg/bouncycastle/util/dma;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/util/dma;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/util/dma;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public Wf()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Oma:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public Xf()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/x509/tsu;->Sma:I

    return p0
.end method

.method public Yf()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/x509/tsu;->Mma:Z

    return p0
.end method

.method public Zf()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/x509/tsu;->Tma:Z

    return p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/x509/tsu;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/tsu;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/x509/tsu;->you(Ljava/security/cert/PKIXParameters;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cno(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/tsu;->Lma:Ljava/util/List;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/util/ywr;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "All elements of list must be of type org.bouncycastle.util.Store."

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/tsu;->Lma:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public setCertStores(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStore;

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    if-eqz p1, :cond_0

    check-cast p1, Ljava/security/cert/X509CertSelector;

    invoke-static {p1}, Lorg/bouncycastle/x509/bio;->zta(Ljava/security/cert/X509CertSelector;)Lorg/bouncycastle/x509/bio;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/x509/tsu;->selector:Lorg/bouncycastle/util/dma;

    return-void
.end method

.method public sis(Ljava/util/Set;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Qma:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "All elements of set must be of type String."

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/x509/tsu;->Qma:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Qma:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public sis(Lorg/bouncycastle/util/ywr;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Lma:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public tsu(Ljava/util/Set;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Oma:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "All elements of set must be of type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/x509/tsu;->Oma:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Oma:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected you(Ljava/security/cert/PKIXParameters;)V
    .locals 2

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/tsu;->setCertStores(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setAnyPolicyInhibited(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setExplicitPolicyRequired(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setPolicyMappingInhibited(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setPolicyQualifiersRejected(Z)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setSigProvider(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/tsu;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v0, p1, Lorg/bouncycastle/x509/tsu;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/x509/tsu;

    iget v0, p1, Lorg/bouncycastle/x509/tsu;->Sma:I

    iput v0, p0, Lorg/bouncycastle/x509/tsu;->Sma:I

    iget-boolean v0, p1, Lorg/bouncycastle/x509/tsu;->Tma:Z

    iput-boolean v0, p0, Lorg/bouncycastle/x509/tsu;->Tma:Z

    iget-boolean v0, p1, Lorg/bouncycastle/x509/tsu;->Mma:Z

    iput-boolean v0, p0, Lorg/bouncycastle/x509/tsu;->Mma:Z

    iget-object v0, p1, Lorg/bouncycastle/x509/tsu;->selector:Lorg/bouncycastle/util/dma;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/bouncycastle/util/dma;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/util/dma;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/x509/tsu;->selector:Lorg/bouncycastle/util/dma;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/bouncycastle/x509/tsu;->Lma:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/tsu;->Lma:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/bouncycastle/x509/tsu;->Nma:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/tsu;->Nma:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lorg/bouncycastle/x509/tsu;->Oma:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/tsu;->Oma:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lorg/bouncycastle/x509/tsu;->Qma:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/tsu;->Qma:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lorg/bouncycastle/x509/tsu;->Pma:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/tsu;->Pma:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Lorg/bouncycastle/x509/tsu;->Rma:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/tsu;->Rma:Ljava/util/Set;

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public you(Ljava/util/Set;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Pma:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "All elements of set must be of type String."

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/x509/tsu;->Pma:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Pma:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public you(Lorg/bouncycastle/util/dma;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/util/dma;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/util/dma;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/x509/tsu;->selector:Lorg/bouncycastle/util/dma;

    return-void
.end method

.method public you(Lorg/bouncycastle/util/ywr;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Nma:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public zta(Ljava/util/Set;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Rma:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/x509/rtg;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "All elements of set must be of type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lorg/bouncycastle/x509/rtg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/x509/tsu;->Rma:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lorg/bouncycastle/x509/tsu;->Rma:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public zta(Lorg/bouncycastle/util/ywr;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/tsu;->you(Lorg/bouncycastle/util/ywr;)V

    return-void
.end method
