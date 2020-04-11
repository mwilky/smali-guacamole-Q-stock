.class public final synthetic Lcom/android/server/policy/zta;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic GD:Lcom/android/server/policy/oxb;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/oxb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/zta;->GD:Lcom/android/server/policy/oxb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/zta;->GD:Lcom/android/server/policy/oxb;

    invoke-virtual {p0}, Lcom/android/server/policy/oxb;->Oc()V

    return-void
.end method
