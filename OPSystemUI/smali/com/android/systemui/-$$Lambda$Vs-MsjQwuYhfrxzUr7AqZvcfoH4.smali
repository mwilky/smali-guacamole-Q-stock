.class public final synthetic Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/Dependency$LazyDependencyCreator;


# instance fields
.field private final synthetic f$0:Ldagger/Lazy;


# direct methods
.method public synthetic constructor <init>(Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;->f$0:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;->f$0:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
