.class public Lcom/oneplus/android/server/zta/zta/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/am/connor/IConnor;


# static fields
.field private static final TAG:Ljava/lang/String; = "Connor"


# instance fields
.field private fba:Landroid/app/prediction/AppPredictor;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/zta/zta/zta;->fba:Landroid/app/prediction/AppPredictor;

    return-void
.end method


# virtual methods
.method public feed(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/zta/zta/zta;->fba:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_3

    new-instance v0, Landroid/app/prediction/AppTargetEvent$Builder;

    new-instance v1, Landroid/app/prediction/AppTarget$Builder;

    new-instance v2, Landroid/app/prediction/AppTargetId;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/app/prediction/AppTarget$Builder;->setTarget(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    const-string p1, "launcher"

    invoke-virtual {v0, p1}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    :cond_3
    return-void
.end method

.method public feed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/zta/zta/zta;->fba:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_1

    new-instance v0, Landroid/app/prediction/AppTargetEvent$Builder;

    new-instance v1, Landroid/app/prediction/AppTarget$Builder;

    new-instance v2, Landroid/app/prediction/AppTargetId;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/app/prediction/AppTarget$Builder;->setTarget(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    const-string p1, "launcher"

    invoke-virtual {v0, p1}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    :cond_1
    return-void
.end method

.method public initInstance(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/android/server/zta/zta/zta;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/android/server/zta/zta/zta;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionManager;

    new-instance v0, Landroid/app/prediction/AppPredictionContext$Builder;

    iget-object v1, p0, Lcom/oneplus/android/server/zta/zta/zta;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "launch"

    invoke-virtual {v0, v1}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/zta/zta/zta;->fba:Landroid/app/prediction/AppPredictor;

    return-void
.end method
