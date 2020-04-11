.class Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mInfo:Lcom/oneplus/support/lifecycle/ClassesInfoCache$CallbackInfo;

.field private final mWrapped:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/support/lifecycle/ClassesInfoCache;->sInstance:Lcom/oneplus/support/lifecycle/ClassesInfoCache;

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Lcom/oneplus/support/lifecycle/ClassesInfoCache$CallbackInfo;

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Lcom/oneplus/support/lifecycle/ClassesInfoCache$CallbackInfo;

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/support/lifecycle/ClassesInfoCache$CallbackInfo;->invokeCallbacks(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    return-void
.end method
