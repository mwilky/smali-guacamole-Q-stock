.class Lcom/android/systemui/Dependency$1;
.super Ljava/lang/Object;
.source "Dependency.java"

# interfaces
.implements Lcom/android/systemui/Dependency$LazyDependencyCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/Dependency;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/Dependency;


# direct methods
.method constructor <init>(Lcom/android/systemui/Dependency;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/Dependency$1;->this$0:Lcom/android/systemui/Dependency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDependency()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iget-object p0, p0, Lcom/android/systemui/Dependency$1;->this$0:Lcom/android/systemui/Dependency;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
