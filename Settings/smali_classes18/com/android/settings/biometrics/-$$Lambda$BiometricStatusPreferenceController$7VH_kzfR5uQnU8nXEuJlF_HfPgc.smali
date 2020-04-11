.class public final synthetic Lcom/android/settings/biometrics/-$$Lambda$BiometricStatusPreferenceController$7VH_kzfR5uQnU8nXEuJlF_HfPgc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/biometrics/-$$Lambda$BiometricStatusPreferenceController$7VH_kzfR5uQnU8nXEuJlF_HfPgc;->f$0:I

    iput-object p2, p0, Lcom/android/settings/biometrics/-$$Lambda$BiometricStatusPreferenceController$7VH_kzfR5uQnU8nXEuJlF_HfPgc;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/-$$Lambda$BiometricStatusPreferenceController$7VH_kzfR5uQnU8nXEuJlF_HfPgc;->f$0:I

    iget-object v1, p0, Lcom/android/settings/biometrics/-$$Lambda$BiometricStatusPreferenceController$7VH_kzfR5uQnU8nXEuJlF_HfPgc;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->lambda$updateState$0(ILjava/lang/String;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
