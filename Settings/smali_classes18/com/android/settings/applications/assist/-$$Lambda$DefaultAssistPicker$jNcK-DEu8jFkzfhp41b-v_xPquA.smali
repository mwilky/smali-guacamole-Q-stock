.class public final synthetic Lcom/android/settings/applications/assist/-$$Lambda$DefaultAssistPicker$jNcK-DEu8jFkzfhp41b-v_xPquA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/assist/-$$Lambda$DefaultAssistPicker$jNcK-DEu8jFkzfhp41b-v_xPquA;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/assist/-$$Lambda$DefaultAssistPicker$jNcK-DEu8jFkzfhp41b-v_xPquA;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->lambda$setRoleHolderAsUser$1(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
