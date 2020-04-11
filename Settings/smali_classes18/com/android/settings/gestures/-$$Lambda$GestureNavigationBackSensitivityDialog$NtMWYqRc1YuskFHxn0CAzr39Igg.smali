.class public final synthetic Lcom/android/settings/gestures/-$$Lambda$GestureNavigationBackSensitivityDialog$NtMWYqRc1YuskFHxn0CAzr39Igg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;

.field private final synthetic f$1:Landroid/widget/SeekBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationBackSensitivityDialog$NtMWYqRc1YuskFHxn0CAzr39Igg;->f$0:Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;

    iput-object p2, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationBackSensitivityDialog$NtMWYqRc1YuskFHxn0CAzr39Igg;->f$1:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationBackSensitivityDialog$NtMWYqRc1YuskFHxn0CAzr39Igg;->f$0:Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;

    iget-object v1, p0, Lcom/android/settings/gestures/-$$Lambda$GestureNavigationBackSensitivityDialog$NtMWYqRc1YuskFHxn0CAzr39Igg;->f$1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->lambda$onCreateDialog$0$GestureNavigationBackSensitivityDialog(Landroid/widget/SeekBar;Landroid/content/DialogInterface;I)V

    return-void
.end method
