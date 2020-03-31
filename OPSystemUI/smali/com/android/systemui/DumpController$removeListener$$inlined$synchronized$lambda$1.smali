.class final Lcom/android/systemui/DumpController$removeListener$$inlined$synchronized$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DumpController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DumpController;->removeListener(Lcom/android/systemui/Dumpable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/ref/WeakReference<",
        "Lcom/android/systemui/Dumpable;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $listener$inlined:Lcom/android/systemui/Dumpable;

.field final synthetic this$0:Lcom/android/systemui/DumpController;


# direct methods
.method constructor <init>(Lcom/android/systemui/DumpController;Lcom/android/systemui/Dumpable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DumpController$removeListener$$inlined$synchronized$lambda$1;->this$0:Lcom/android/systemui/DumpController;

    iput-object p2, p0, Lcom/android/systemui/DumpController$removeListener$$inlined$synchronized$lambda$1;->$listener$inlined:Lcom/android/systemui/Dumpable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/android/systemui/DumpController$removeListener$$inlined$synchronized$lambda$1;->invoke(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/Dumpable;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dumpable;

    iget-object p0, p0, Lcom/android/systemui/DumpController$removeListener$$inlined$synchronized$lambda$1;->$listener$inlined:Lcom/android/systemui/Dumpable;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
