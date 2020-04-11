.class public Lcom/android/settings/biometrics/face/ParticleCollection;
.super Ljava/lang/Object;
.source "ParticleCollection.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/face/ParticleCollection$Listener;
    }
.end annotation


# static fields
.field private static final NUM_PARTICLES:I = 0xc

.field public static final STATE_COMPLETE:I = 0x4

.field public static final STATE_STARTED:I = 0x1

.field public static final STATE_STOPPED_COLORFUL:I = 0x2

.field public static final STATE_STOPPED_GRAY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AnimationController"


# instance fields
.field private mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

.field private final mParticleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/biometrics/face/AnimationParticle;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticleListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

.field private final mPrimariesInProgress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/ParticleCollection$Listener;Landroid/graphics/Rect;I)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/settings/biometrics/face/ParticleCollection$1;

    invoke-direct {v1, v0}, Lcom/android/settings/biometrics/face/ParticleCollection$1;-><init>(Lcom/android/settings/biometrics/face/ParticleCollection;)V

    iput-object v1, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v3, 0x7f060171

    invoke-virtual {v12, v3, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f060172

    invoke-virtual {v12, v3, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f060173

    invoke-virtual {v12, v3, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f060174

    invoke-virtual {v12, v3, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v4, v13

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mPrimariesInProgress:Ljava/util/List;

    const/16 v14, 0xc

    new-array v3, v14, [I

    fill-array-data v3, :array_0

    move-object v15, v3

    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v14, :cond_1

    new-instance v16, Lcom/android/settings/biometrics/face/AnimationParticle;

    iget-object v5, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

    aget v8, v15, v10

    const/16 v9, 0xc

    move-object/from16 v3, v16

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v17, v10

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/settings/biometrics/face/AnimationParticle;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/AnimationParticle$Listener;Landroid/graphics/Rect;IIILjava/util/List;)V

    iget-object v4, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mPrimariesInProgress:Ljava/util/List;

    aget v5, v15, v17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/biometrics/face/AnimationParticle;->setAsPrimary()V

    :cond_0
    iget-object v4, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v17, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {v0, v13}, Lcom/android/settings/biometrics/face/ParticleCollection;->updateState(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x7
        0xb
        0x2
        0x6
        0xa
        0x1
        0x5
        0x9
        0x0
        0x4
        0x8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/ParticleCollection;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mPrimariesInProgress:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/ParticleCollection;)Lcom/android/settings/biometrics/face/ParticleCollection$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    return-object v0
.end method

.method private updateState(I)V
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mState:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/face/AnimationParticle;

    invoke-virtual {v1, p1}, Lcom/android/settings/biometrics/face/AnimationParticle;->updateState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mState:I

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/face/AnimationParticle;

    invoke-virtual {v1, p1}, Lcom/android/settings/biometrics/face/AnimationParticle;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/face/ParticleCollection;->updateState(I)V

    :cond_0
    return-void
.end method

.method public update(JJ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/face/AnimationParticle;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/biometrics/face/AnimationParticle;->update(JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
