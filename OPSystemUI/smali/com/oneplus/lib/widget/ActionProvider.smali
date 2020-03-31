.class public abstract Lcom/oneplus/lib/widget/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;,
        Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubUiVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/ActionProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract hasSubMenu()Z
.end method

.method public isVisible()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public abstract onPerformDefaultAction()Z
.end method

.method public abstract onPrepareSubMenu(Landroid/view/SubMenu;)V
.end method

.method public overridesItemVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setSubUiVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/ActionProvider;->mSubUiVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;

    return-void
.end method

.method public setVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/ActionProvider;->mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " instance while it is still in use somewhere else?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionProvider(support)"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/ActionProvider;->mVisibilityListener:Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;

    return-void
.end method
