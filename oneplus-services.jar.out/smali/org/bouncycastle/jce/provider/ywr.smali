.class public Lorg/bouncycastle/jce/provider/ywr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/cert/PolicyNode;


# instance fields
.field protected Bsa:Ljava/util/Set;

.field protected LCa:Ljava/util/Set;

.field protected MCa:Ljava/lang/String;

.field protected children:Ljava/util/List;

.field protected critical:Z

.field protected depth:I

.field protected parent:Ljava/security/cert/PolicyNode;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ywr;->children:Ljava/util/List;

    iput p2, p0, Lorg/bouncycastle/jce/provider/ywr;->depth:I

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/ywr;->LCa:Ljava/util/Set;

    iput-object p4, p0, Lorg/bouncycastle/jce/provider/ywr;->parent:Ljava/security/cert/PolicyNode;

    iput-object p5, p0, Lorg/bouncycastle/jce/provider/ywr;->Bsa:Ljava/util/Set;

    iput-object p6, p0, Lorg/bouncycastle/jce/provider/ywr;->MCa:Ljava/lang/String;

    iput-boolean p7, p0, Lorg/bouncycastle/jce/provider/ywr;->critical:Z

    return-void
.end method


# virtual methods
.method public aa(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/ywr;->critical:Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/ywr;->copy()Lorg/bouncycastle/jce/provider/ywr;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/bouncycastle/jce/provider/ywr;
    .locals 9

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ywr;->LCa:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ywr;->Bsa:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v8, Lorg/bouncycastle/jce/provider/ywr;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lorg/bouncycastle/jce/provider/ywr;->depth:I

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/String;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ywr;->MCa:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lorg/bouncycastle/jce/provider/ywr;->critical:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jce/provider/ywr;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ywr;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/ywr;->copy()Lorg/bouncycastle/jce/provider/ywr;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/bouncycastle/jce/provider/ywr;->sis(Lorg/bouncycastle/jce/provider/ywr;)V

    invoke-virtual {v8, v0}, Lorg/bouncycastle/jce/provider/ywr;->zta(Lorg/bouncycastle/jce/provider/ywr;)V

    goto :goto_2

    :cond_2
    return-object v8
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ywr;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getDepth()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jce/provider/ywr;->depth:I

    return p0
.end method

.method public getExpectedPolicies()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ywr;->LCa:Ljava/util/Set;

    return-object p0
.end method

.method public getParent()Ljava/security/cert/PolicyNode;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ywr;->parent:Ljava/security/cert/PolicyNode;

    return-object p0
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ywr;->Bsa:Ljava/util/Set;

    return-object p0
.end method

.method public getValidPolicy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ywr;->MCa:Ljava/lang/String;

    return-object p0
.end method

.method public hasChildren()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ywr;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isCritical()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/ywr;->critical:Z

    return p0
.end method

.method public kth(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ywr;->LCa:Ljava/util/Set;

    return-void
.end method

.method public sis(Lorg/bouncycastle/jce/provider/ywr;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ywr;->parent:Ljava/security/cert/PolicyNode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/ywr;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ywr;->MCa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/ywr;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/ywr;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/ywr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jce/provider/ywr;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(Lorg/bouncycastle/jce/provider/ywr;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/ywr;->children:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public zta(Lorg/bouncycastle/jce/provider/ywr;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ywr;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/bouncycastle/jce/provider/ywr;->sis(Lorg/bouncycastle/jce/provider/ywr;)V

    return-void
.end method
