.class public Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;-><init>(Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$1;)V

    iput-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    iput-object p2, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iget-object v0, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iget-object v0, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iget-object v0, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shortcut must have an intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shortcut must have a non-empty label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActivity(Landroid/content/ComponentName;)Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setAlwaysBadged()Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    return-object p0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIcon(Lcom/oneplus/support/core/graphics/drawable/IconCompat;)Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mIcon:Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->setIntents([Landroid/content/Intent;)Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIntents([Landroid/content/Intent;)Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # [Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    return-object p0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Lcom/oneplus/support/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
