import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A116200: Numbers k such that k concatenated with k+6 gives the product of two numbers which differ by 5.

The programs for A116200, there is no canonical definition to state claims against.
-/

/-! ## A116200.P11784311565421617955

`record[A116109(n+2)%A116240(n+2)]`
-/

namespace A116200.P11784311565421617955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116109 (n + 2)) (A116240 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116200.P11784311565421617955

/-! ## A116200.P14520338663136256082

`A116109(lt[A135894(n), A213074(2*(n+3))])`
-/

namespace A116200.P14520338663136256082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213074 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116109 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A116200.P14520338663136256082

/-! ## A116200.P180281856975270447

`A116109(lt[A046063(n+1), A213074(2*(n+3))])`
-/

namespace A116200.P180281856975270447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213074 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116109 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A116200.P180281856975270447

/-! ## A116200.P12235241217375493433

`A116109(lt[A270339(n+1), A213074(2*(n+3))])`
-/

namespace A116200.P12235241217375493433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213074 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116109 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A116200.P12235241217375493433

/-!
# A116201: a(n) = a(n-1) + a(n-2) + a(n-3) - a(n-4); a(0)=0, a(1)=1, a(2)=1, a(3)=1.

The programs for A116201, the canonical program `A116201.P140355599782389315` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116201 has offset 0).

The definition of A116201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)-a(n-4)` (program `A116201.P140355599782389315`, by `A116201.P140355599782389315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116201.P140355599782389315

`a(n-1)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116201

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)` -/
def P140355599782389315.Spec : Prop :=
  ∀ n, P140355599782389315.a n = A116201 n

theorem P140355599782389315.correct : P140355599782389315.Spec := by
  intro n
  simp only [A116201]

end A116201

/-! ## A116201.P114354319231677444

`A116732(n+2)-A116732(n)`
-/

namespace A116201.P114354319231677444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 2) - A116732 n

end

end A116201.P114354319231677444

namespace A116201

/-- `A116732(n+2)-A116732(n)` -/
def P114354319231677444.Spec : Prop :=
  ∀ n, P114354319231677444.a n = A116201 n

end A116201

/-! ## A116201.P984961372146663342

`ogf((-x+x^3)/(-1+x+x^2+x^3-x^4))`
-/

namespace A116201.P984961372146663342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, -1, -1, -1, 1] n

end

end A116201.P984961372146663342

namespace A116201

/-- `ogf((-x+x^3)/(-1+x+x^2+x^3-x^4))` -/
def P984961372146663342.Spec : Prop :=
  ∀ n, P984961372146663342.a n = A116201 n

end A116201

/-! ## A116201.P12005184315045147375

`Δ[A116732(n+1)]+Δ[A116732(n)]`
-/

namespace A116201.P12005184315045147375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A116201.P12005184315045147375

namespace A116201

/-- `Δ[A116732(n+1)]+Δ[A116732(n)]` -/
def P12005184315045147375.Spec : Prop :=
  ∀ n, P12005184315045147375.a n = A116201 n

end A116201

/-! ## A116201.P6545150705507679563

`A239909(n+1)-A052527(n)`
-/

namespace A116201.P6545150705507679563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 1) - A052527 n

end

end A116201.P6545150705507679563

namespace A116201

/-- `A239909(n+1)-A052527(n)` -/
def P6545150705507679563.Spec : Prop :=
  ∀ n, P6545150705507679563.a n = A116201 n

end A116201

/-! ## A116201.P11349352478884213980

`Δ[A116732(n+1)+A116732(n)]`
-/

namespace A116201.P11349352478884213980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 1) + A116732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116201.P11349352478884213980

namespace A116201

/-- `Δ[A116732(n+1)+A116732(n)]` -/
def P11349352478884213980.Spec : Prop :=
  ∀ n, P11349352478884213980.a n = A116201 n

end A116201

/-! ## A116201.P7092230690359026927

`∑[A052527(n)]-A052527(n)-A116732(n)`
-/

namespace A116201.P7092230690359026927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052527 n - A116732 n

end

end A116201.P7092230690359026927

namespace A116201

/-- `∑[A052527(n)]-A052527(n)-A116732(n)` -/
def P7092230690359026927.Spec : Prop :=
  ∀ n, P7092230690359026927.a n = A116201 n

end A116201

/-! ## A116201.P14509029226832886514

`A239909(n+2)-Δ[A239909(n+2)]`
-/

namespace A116201.P14509029226832886514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 2) - (f1 (n + 1) - f1 n)

end

end A116201.P14509029226832886514

namespace A116201

/-- `A239909(n+2)-Δ[A239909(n+2)]` -/
def P14509029226832886514.Spec : Prop :=
  ∀ n, P14509029226832886514.a n = A116201 n

end A116201

/-!
# A116204: a(0) = 1; for n >= 1, a(n) = the number of positive divisors of n which are coprime to a(n-1).

The programs for A116204, the canonical program `A116204.P4596117724917585290` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116204 has offset 0).

The definition of A116204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116204.P4596117724917585290

`A000005(n/gcd(n, A010805(a(n-1))))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A116204

/-- `A000005(n/gcd(n, A010805(a(n-1))))` -/
def P4596117724917585290.Spec : Prop :=
  ∀ n, P4596117724917585290.a n = A116204 n

theorem P4596117724917585290.correct : P4596117724917585290.Spec := by
  intro n
  simp only [A116204]

end A116204

/-! ## A116204.P3326315110932377152

`A069283(n)+A056926(A261247(n+1))`
-/

namespace A116204.P3326315110932377152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n + A056926 (A261247 (n + 1)).toNat

end

end A116204.P3326315110932377152

namespace A116204

/-- `A069283(n)+A056926(A261247(n+1))` -/
def P3326315110932377152.Spec : Prop :=
  ∀ n, P3326315110932377152.a n = A116204 n

end A116204

/-! ## A116204.P4146437295561867780

`A299485(A000005(2*n+5)*A028310(n))`
-/

namespace A116204.P4146437295561867780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299485 (A000005 (2 * n + 5) * A028310 n).toNat

end

end A116204.P4146437295561867780

namespace A116204

/-- `A299485(A000005(2*n+5)*A028310(n))` -/
def P4146437295561867780.Spec : Prop :=
  ∀ n, P4146437295561867780.a n = A116204 n

end A116204

/-! ## A116204.P15031924001814440044

`A001826(A004277(n)*A109996(n+1))`
-/

namespace A116204.P15031924001814440044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (A004277 n * A109996 (n + 1)).toNat

end

end A116204.P15031924001814440044

namespace A116204

/-- `A001826(A004277(n)*A109996(n+1))` -/
def P15031924001814440044.Spec : Prop :=
  ∀ n, P15031924001814440044.a n = A116204 n

end A116204

/-!
# A116205: Numbers k such that k concatenated with k+7 gives the product of two numbers which differ by 3.

The programs for A116205, there is no canonical definition to state claims against.
-/

/-! ## A116205.P4577825915888946692

`A116179(A057427(n)+1+n)`
-/

namespace A116205.P4577825915888946692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116179 (A057427 n + 1 + (n : ℤ)).toNat

end

end A116205.P4577825915888946692

/-! ## A116205.P15540293425150576450

`A116179(2-A000007(n)+n)`
-/

namespace A116205.P15540293425150576450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116179 (2 - A000007 n + (n : ℤ)).toNat

end

end A116205.P15540293425150576450

/-! ## A116205.P87432053312022360

`A116179(2-(A000007(n)-n))`
-/

namespace A116205.P87432053312022360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116179 (2 - (A000007 n - (n : ℤ))).toNat

end

end A116205.P87432053312022360

/-! ## A116205.P14703657476000724552

`record[A116179(A050873(n+4))]`
-/

namespace A116205.P14703657476000724552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116179 (A050873 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116205.P14703657476000724552

/-!
# A116207: Numbers k such that k concatenated with k+7 gives the product of two numbers which differ by 5.

The programs for A116207, there is no canonical definition to state claims against.
-/

/-! ## A116207.P17302601111551267690

`A116114(n+2)`
-/

namespace A116207.P17302601111551267690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116114 (n + 2)

end

end A116207.P17302601111551267690

/-! ## A116207.P11502785543800932679

`A116167(n+2)`
-/

namespace A116207.P11502785543800932679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116167 (n + 2)

end

end A116207.P11502785543800932679

/-! ## A116207.P2270962264995521953

`record[A116114(Δ[A061885(n)])]`
-/

namespace A116207.P2270962264995521953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116114 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116207.P2270962264995521953

/-! ## A116207.P10086894907244428936

`record[A116114(or(n, A000038(n)))]`
-/

namespace A116207.P10086894907244428936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116114 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116207.P10086894907244428936

/-! ## A116207.P18431899761286299463

`record[A116114(xor(n, A000038(n)))]`
-/

namespace A116207.P18431899761286299463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116114 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116207.P18431899761286299463

/-!
# A116208: Numbers k such that k concatenated with k+7 gives the product of two numbers which differ by 6.

The programs for A116208, there is no canonical definition to state claims against.
-/

/-! ## A116208.P10573543989128357426

`record[A116161(n+3)%A116292(n+3)]`
-/

namespace A116208.P10573543989128357426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116161 (n + 3)) (A116292 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116208.P10573543989128357426

/-! ## A116208.P2649700874108963340

`filter[A116161(n+1), A379117(#)]`
-/

namespace A116208.P2649700874108963340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379117 (f1 j).toNat = 1) n)

end

end A116208.P2649700874108963340

/-! ## A116208.P3380476012758013274

`filter[A116161(n+2), A374045(#)]`
-/

namespace A116208.P3380476012758013274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116161 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A116208.P3380476012758013274

/-!
# A116209: Numbers k such that k concatenated with k+7 gives the product of two numbers which differ by 7.

The programs for A116209, there is no canonical definition to state claims against.
-/

/-! ## A116209.P9127994452633876006

`A116153(n%round(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A116209.P9127994452633876006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116153 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)))).toNat

end

end A116209.P9127994452633876006

/-! ## A116209.P4549783550856040557

`A116153(A028310(n))%A116340(n+1)`
-/

namespace A116209.P4549783550856040557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116153 (A028310 n).toNat) (A116340 (n + 1))

end

end A116209.P4549783550856040557

/-! ## A116209.P16922418442426804978

`A116153(A000007(n)+n)%A116340(n+1)`
-/

namespace A116209.P16922418442426804978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116153 (A000007 n + (n : ℤ)).toNat) (A116340 (n + 1))

end

end A116209.P16922418442426804978

/-! ## A116209.P6792440375417844312

`gcd(A116153(A151878(n)+n), A151878(n))`
-/

namespace A116209.P6792440375417844312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116153 (A151878 n + (n : ℤ)).toNat) (A151878 n)

end

end A116209.P6792440375417844312

/-! ## A116209.P8861598584601133020

`∏{e}[A000079(n), A116153(#)]`
-/

namespace A116209.P8861598584601133020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A116153 (Nat.factorization (f1 n).natAbs p)

end

end A116209.P8861598584601133020

/-!
# A116212: List of the positive divisors of each term of A116137.

The programs for A116212, there is no canonical definition to state claims against.
-/

/-! ## A116212.P12320263123871545902

`A116137(n+1)-A116137(n)`
-/

namespace A116212.P12320263123871545902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116137 (n + 1) - A116137 n

end

end A116212.P12320263123871545902

/-! ## A116212.P9935066996541486015

`Δ[A116137(n)]`
-/

namespace A116212.P9935066996541486015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116212.P9935066996541486015

/-! ## A116212.P4031137332993073284

`record[A116137(abs(1-n))]-A116137(n)`
-/

namespace A116212.P4031137332993073284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116137 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A116137 n

end

end A116212.P4031137332993073284

/-! ## A116212.P12336814655934832570

`A161901(lt[A304209(2*n), A031176(2*n+1)])`
-/

namespace A116212.P12336814655934832570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304209 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161901 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A116212.P12336814655934832570

/-! ## A116212.P14070668580922200190

`A079068(n+1)-A185254(A320198(n))`
-/

namespace A116212.P14070668580922200190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (n + 1) - A185254 (A320198 n).toNat

end

end A116212.P14070668580922200190

/-!
# A116214: Numbers k such that both k*(k+2)-(k+1) and k*(k+2)+(k+1) are primes.

The programs for A116214, there is no canonical definition to state claims against.
-/

/-! ## A116214.P3941810287144740596

`A081944(n+1)-1`
-/

namespace A116214.P3941810287144740596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1) - 1

end

end A116214.P3941810287144740596

/-! ## A116214.P5981501512202386643

`∩[A002328(n+1), A076597(n+1)]-2`
-/

namespace A116214.P5981501512202386643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A116214.P5981501512202386643

/-! ## A116214.P2190875537450709278

`A045546(eq[1, A002327(n+1)%A002328(n+2)]+1)`
-/

namespace A116214.P2190875537450709278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002327 (n + 1)) (A002328 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A116214.P2190875537450709278

/-! ## A116214.P14956844503420823769

`A045546(eq[1, A002328(n+2)%A002328(n+1)]+1)`
-/

namespace A116214.P14956844503420823769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002328 (n + 2)) (A002328 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A116214.P14956844503420823769

/-! ## A116214.P11060100622038985461

`∩[A045546(n+1), A094210(n+1)]`
-/

namespace A116214.P11060100622038985461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116214.P11060100622038985461

/-! ## A116214.P4792432878331811739

`∩[A002328(n+1), A045546(n+1)]-1`
-/

namespace A116214.P4792432878331811739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A116214.P4792432878331811739

/-! ## A116214.P7125638401305622435

`∩[A002328(n+1)-1, A094210(n+1)]`
-/

namespace A116214.P7125638401305622435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116214.P7125638401305622435

/-! ## A116214.P12060948106840396018

`∩[A045546(n+2)-1, A045546(n+1)]`
-/

namespace A116214.P12060948106840396018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116214.P12060948106840396018

/-! ## A116214.P8919347975600381958

`∩[A076597(n+1)-2, A094210(n+1)]`
-/

namespace A116214.P8919347975600381958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116214.P8919347975600381958

/-! ## A116214.P10810920617071606930

`A045546(eq[1, A045546(n+2)-A045546(n+1)]+1)`
-/

namespace A116214.P10810920617071606930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 2) - A045546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A116214.P10810920617071606930

/-! ## A116214.P1171798712340941162

`A045546(lt[A045546(n+2)-A045546(n+1), 2]+1)`
-/

namespace A116214.P1171798712340941162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 2) - A045546 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A116214.P1171798712340941162

/-! ## A116214.P10501776403843126411

`A023443(A081944(n+1))`
-/

namespace A116214.P10501776403843126411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A081944 (n + 1)).toNat

end

end A116214.P10501776403843126411

/-! ## A116214.P13310640215011049553

`A023443(∩[A002328(n+1), A045546(n+1)])`
-/

namespace A116214.P13310640215011049553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A116214.P13310640215011049553

/-! ## A116214.P9304412901338673769

`A023444(∩[A002328(n+1)+1, A002328(n+1)])`
-/

namespace A116214.P9304412901338673769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A116214.P9304412901338673769

/-! ## A116214.P14303633533172831944

`A023445(∩[A002328(n+1), A076597(n+1)]+1)`
-/

namespace A116214.P14303633533172831944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A116214.P14303633533172831944

/-! ## A116214.P13591759833975703083

`A023443(∩[A045546(n+1)+1, A045546(n+1)])`
-/

namespace A116214.P13591759833975703083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A116214.P13591759833975703083

/-! ## A116214.P6020090740894857027

`A023445(∩[A076597(n+1)+1, A076597(n+1)])`
-/

namespace A116214.P6020090740894857027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A116214.P6020090740894857027

/-! ## A116214.P17089808362757602685

`A023446(∩[A089362(n+1)+1, A089362(n+1)])`
-/

namespace A116214.P17089808362757602685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A116214.P17089808362757602685

/-! ## A116214.P9771055053024712336

`A023443(∩[A002328(n+1)-1, A002328(n+1)])`
-/

namespace A116214.P9771055053024712336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A116214.P9771055053024712336

/-! ## A116214.P4641501078295546341

`floor(sqrt(A069826(n+1)))`
-/

namespace A116214.P4641501078295546341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A069826 (n + 1))

end

end A116214.P4641501078295546341

/-!
# A116215: Numbers k such that k concatenated with k+8 gives the product of two numbers which differ by 7.

The programs for A116215, there is no canonical definition to state claims against.
-/

/-! ## A116215.P2359784088079740196

`filter[A116162(n+1), A308187(#)]`
-/

namespace A116215.P2359784088079740196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A308187 (f1 j).toNat = 1) n)

end

end A116215.P2359784088079740196

/-! ## A116215.P4736743451498782965

`filter[A116162(n+1), A011696(#)]`
-/

namespace A116215.P4736743451498782965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011696 (f1 j).toNat = 1) n)

end

end A116215.P4736743451498782965

/-!
# A116218: If X_1,...,X_n is a partition of a 2n-set X into 2-blocks (or pairs) then a(n) is equal to the number of permutations f of X such that f(X_i) != X_i for all i=1,...n.

The programs for A116218, there is no canonical definition to state claims against.
-/

/-! ## A116218.P16905621443903064014

`A000079(n)*A374980(n)`
-/

namespace A116218.P16905621443903064014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A374980 n

end

end A116218.P16905621443903064014

/-! ## A116218.P13963161094869854054

`∑[A011782(n)]*A374980(n)`
-/

namespace A116218.P13963161094869854054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A374980 n

end

end A116218.P13963161094869854054

/-! ## A116218.P15068025930564819772

`(A000225(n)+1)*A374980(n)`
-/

namespace A116218.P15068025930564819772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) * A374980 n

end

end A116218.P15068025930564819772

/-! ## A116218.P16598332004143883060

`A011782(n+1)*A374980(n)`
-/

namespace A116218.P16598332004143883060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A374980 n

end

end A116218.P16598332004143883060

/-! ## A116218.P1374368999699918911

`A375222(n+1)/(n+1)*∑[A011782(n)]`
-/

namespace A116218.P1374368999699918911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375222 (n + 1) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A116218.P1374368999699918911

/-!
# A116222: Numbers k such that k+(k+1) is prime and sum of the prime factors of k and k+1 is also prime.

The programs for A116222, there is no canonical definition to state claims against.
-/

/-! ## A116222.P14272626611833721181

`∑[A290496(∑[A247711(n)])]`
-/

namespace A116222.P14272626611833721181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290496 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116222.P14272626611833721181

/-!
# A116226: n times n+2 gives the concatenation of two numbers m and m-9.

The programs for A116226, there is no canonical definition to state claims against.
-/

/-! ## A116226.P5700649808351408221

`A115446(n+1)-1`
-/

namespace A116226.P5700649808351408221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115446 (n + 1) - 1

end

end A116226.P5700649808351408221

/-! ## A116226.P7669903495037537806

`record[A115446(A126759(n))-1]`
-/

namespace A116226.P7669903495037537806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115446 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116226.P7669903495037537806

/-! ## A116226.P8783762938332394148

`record[A115446(A133310(n))-1]`
-/

namespace A116226.P8783762938332394148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115446 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116226.P8783762938332394148

/-! ## A116226.P9683533693254728775

`record[A115446(A263111(n))-1]`
-/

namespace A116226.P9683533693254728775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115446 (A263111 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116226.P9683533693254728775

/-! ## A116226.P13699976576472974160

`A260196(n+2)+A115446(n+1)`
-/

namespace A116226.P13699976576472974160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A115446 (n + 1)

end

end A116226.P13699976576472974160

/-! ## A116226.P5293615743572187733

`A321804(A107782(n))+A115446(n+1)`
-/

namespace A116226.P5293615743572187733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A107782 n).toNat + A115446 (n + 1)

end

end A116226.P5293615743572187733

/-! ## A116226.P5195163204266246507

`A142720(A097031(n+1))+A115446(n+1)`
-/

namespace A116226.P5195163204266246507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142720 (A097031 (n + 1)).toNat + A115446 (n + 1)

end

end A116226.P5195163204266246507

/-! ## A116226.P17065448428381700485

`A126965(C(2, A115446(n+1)))+A115446(n+1)`
-/

namespace A116226.P17065448428381700485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126965 (Nat.choose 2 (A115446 (n + 1)).toNat) + A115446 (n + 1)

end

end A116226.P17065448428381700485

/-! ## A116226.P13690327039428898529

`A142720(A007318(floor(1/(n+1))))+A115446(n+1)`
-/

namespace A116226.P13690327039428898529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142720 (A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat).toNat + A115446 (n + 1)

end

end A116226.P13690327039428898529

/-! ## A116226.P9005967354857225852

`A115513(A013615(∑[n]))+A115446(n+1)`
-/

namespace A116226.P9005967354857225852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115513 (A013615 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A115446 (n + 1)

end

end A116226.P9005967354857225852

/-!
# A116227: n times n+4 gives the concatenation of two numbers m and m-9.

The programs for A116227, there is no canonical definition to state claims against.
-/

/-! ## A116227.P7018288728701472236

`A116247(n+1)-1`
-/

namespace A116227.P7018288728701472236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116247 (n + 1) - 1

end

end A116227.P7018288728701472236

/-! ## A116227.P6191121166622850002

`A115444(n+1)-2`
-/

namespace A116227.P6191121166622850002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115444 (n + 1) - 2

end

end A116227.P6191121166622850002

/-! ## A116227.P13537026353717659090

`A134824(n+2)+A116247(n+1)`
-/

namespace A116227.P13537026353717659090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A116247 (n + 1)

end

end A116227.P13537026353717659090

/-! ## A116227.P8852944815820430005

`A153881(n+2)+A116247(n+1)`
-/

namespace A116227.P8852944815820430005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A116247 (n + 1)

end

end A116227.P8852944815820430005

/-! ## A116227.P17774849855280345103

`A260196(n+2)+A116247(n+1)`
-/

namespace A116227.P17774849855280345103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116247 (n + 1)

end

end A116227.P17774849855280345103

/-!
# A116229: Numbers k such that k*(k+6) gives the concatenation of two numbers m and m-9.

The programs for A116229, there is no canonical definition to state claims against.
-/

/-! ## A116229.P14644074103378789224

`A116260(n+1)-1`
-/

namespace A116229.P14644074103378789224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116260 (n + 1) - 1

end

end A116229.P14644074103378789224

/-! ## A116229.P13878919711661928886

`record[A116260(A028920(n))-1]`
-/

namespace A116229.P13878919711661928886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116260 (A028920 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116229.P13878919711661928886

/-! ## A116229.P3951297840045474566

`record[A116260(A126759(n))-1]`
-/

namespace A116229.P3951297840045474566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116260 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116229.P3951297840045474566

/-! ## A116229.P13865024022635668747

`record[A116260(A134478(n))-1]`
-/

namespace A116229.P13865024022635668747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116260 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116229.P13865024022635668747

/-! ## A116229.P550983263477177420

`A134824(n+2)+A116260(n+1)`
-/

namespace A116229.P550983263477177420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A116260 (n + 1)

end

end A116229.P550983263477177420

/-! ## A116229.P12752489189682420993

`A129667(A020484(n))+A116260(n+1)`
-/

namespace A116229.P12752489189682420993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (A020484 n).toNat + A116260 (n + 1)

end

end A116229.P12752489189682420993

/-! ## A116229.P2788809962174013469

`record[A116260(A137735(n))-1]`
-/

namespace A116229.P2788809962174013469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116260 (A137735 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116229.P2788809962174013469

/-!
# A116233: n times n+2 gives the concatenation of two numbers m and m-8.

The programs for A116233, there is no canonical definition to state claims against.
-/

/-! ## A116233.P15857615828838582919

`A115445(n+2)-1`
-/

namespace A116233.P15857615828838582919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115445 (n + 2) - 1

end

end A116233.P15857615828838582919

/-!
# A116235: n times n+4 gives the concatenation of two numbers m and m-8.

The programs for A116235, there is no canonical definition to state claims against.
-/

/-! ## A116235.P16744564563465230526

`A116252(n+1)-1`
-/

namespace A116235.P16744564563465230526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116252 (n + 1) - 1

end

end A116235.P16744564563465230526

/-! ## A116235.P4328817381208041424

`A115443(n+1)-2`
-/

namespace A116235.P4328817381208041424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115443 (n + 1) - 2

end

end A116235.P4328817381208041424

/-! ## A116235.P870472167293253745

`A134824(n+2)+A116252(n+1)`
-/

namespace A116235.P870472167293253745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A116252 (n + 1)

end

end A116235.P870472167293253745

/-! ## A116235.P2574528418698039619

`A153881(n+2)+A116252(n+1)`
-/

namespace A116235.P2574528418698039619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A116252 (n + 1)

end

end A116235.P2574528418698039619

/-! ## A116235.P6886427006257907866

`A260196(n+2)+A116252(n+1)`
-/

namespace A116235.P6886427006257907866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116252 (n + 1)

end

end A116235.P6886427006257907866

/-!
# A116239: Numbers k such that k*(k+8) gives the concatenation of two numbers m and m-8.

The programs for A116239, there is no canonical definition to state claims against.
-/

/-! ## A116239.P16629687550521601954

`A116282(n+1)-1`
-/

namespace A116239.P16629687550521601954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116282 (n + 1) - 1

end

end A116239.P16629687550521601954

/-! ## A116239.P2619942317813961507

`A116317(n+1)-2`
-/

namespace A116239.P2619942317813961507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116317 (n + 1) - 2

end

end A116239.P2619942317813961507

/-! ## A116239.P4617828107071920633

`A116335(n+1)-3`
-/

namespace A116239.P4617828107071920633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116335 (n + 1) - 3

end

end A116239.P4617828107071920633

/-! ## A116239.P3121677596787701905

`A115440(n+1)-4`
-/

namespace A116239.P3121677596787701905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115440 (n + 1) - 4

end

end A116239.P3121677596787701905

/-! ## A116239.P9901280144463265245

`record[A116282(A126759(n))-1]`
-/

namespace A116239.P9901280144463265245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116282 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116239.P9901280144463265245

/-! ## A116239.P10338948474687875236

`record[A116317(A126759(2*n))-2]`
-/

namespace A116239.P10338948474687875236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116317 (A126759 (2 * n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116239.P10338948474687875236

/-!
# A116240: n times n+9 gives the concatenation of two numbers m and m-8.

The programs for A116240, there is no canonical definition to state claims against.
-/

/-! ## A116240.P1231982083588935537

`A023443(A116291(n+2))`
-/

namespace A116240.P1231982083588935537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A116291 (n + 2)).toNat

end

end A116240.P1231982083588935537

/-!
# A116241: n times n+3 gives the concatenation of two numbers m and m-7.

The programs for A116241, there is no canonical definition to state claims against.
-/

/-! ## A116241.P10246286582712434049

`A116251(n+2)-1`
-/

namespace A116241.P10246286582712434049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116251 (n + 2) - 1

end

end A116241.P10246286582712434049

/-! ## A116241.P8702809193711517129

`Δ[A001478(n+1)+∑[A116251(n+1)]]`
-/

namespace A116241.P8702809193711517129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116251 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116241.P8702809193711517129

/-! ## A116241.P7633791068898672007

`A204130(A087229(2*n))+A116251(n+2)`
-/

namespace A116241.P7633791068898672007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204130 (A087229 (2 * n)).toNat + A116251 (n + 2)

end

end A116241.P7633791068898672007

/-!
# A116242: Numbers k such that k*(k+6) gives the concatenation of two numbers m and m-7.

The programs for A116242, there is no canonical definition to state claims against.
-/

/-! ## A116242.P14069358769127013023

`A116275(n+1)-1`
-/

namespace A116242.P14069358769127013023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116275 (n + 1) - 1

end

end A116242.P14069358769127013023

/-! ## A116242.P13359212586312213961

`A116295(n+1)-2`
-/

namespace A116242.P13359212586312213961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116295 (n + 1) - 2

end

end A116242.P13359212586312213961

/-! ## A116242.P8109529965584752310

`A115427(n+1)-3`
-/

namespace A116242.P8109529965584752310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115427 (n + 1) - 3

end

end A116242.P8109529965584752310

/-! ## A116242.P15508045164984200295

`record[A116275(A126759(n))-1]`
-/

namespace A116242.P15508045164984200295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116275 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116242.P15508045164984200295

/-! ## A116242.P14105715148636117731

`record[A116275(A133310(n))-1]`
-/

namespace A116242.P14105715148636117731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116275 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116242.P14105715148636117731

/-! ## A116242.P5781150618582240730

`record[A116295(A126759(2*n))-2]`
-/

namespace A116242.P5781150618582240730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116295 (A126759 (2 * n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116242.P5781150618582240730

/-!
# A116243: n times n+7 gives the concatenation of two numbers m and m-7.

The programs for A116243, there is no canonical definition to state claims against.
-/

/-! ## A116243.P15259514867479721065

`A116281(n+1)-1`
-/

namespace A116243.P15259514867479721065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116281 (n + 1) - 1

end

end A116243.P15259514867479721065

/-! ## A116243.P5772523610134311156

`A116309(n+1)-2`
-/

namespace A116243.P5772523610134311156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116309 (n + 1) - 2

end

end A116243.P5772523610134311156

/-! ## A116243.P7375631314408535114

`A116322(n+1)-3`
-/

namespace A116243.P7375631314408535114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116322 (n + 1) - 3

end

end A116243.P7375631314408535114

/-! ## A116243.P12797066971939277247

`record[A116281(A134478(n))-1]`
-/

namespace A116243.P12797066971939277247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116281 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116243.P12797066971939277247

/-! ## A116243.P9940489915225848283

`A260196(n+2)+A116281(n+1)`
-/

namespace A116243.P9940489915225848283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116281 (n + 1)

end

end A116243.P9940489915225848283

/-!
# A116244: Numbers k such that k * (k + 8) is the concatenation of two numbers m and m-7.

The programs for A116244, there is no canonical definition to state claims against.
-/

/-! ## A116244.P4891755939829660836

`A116290(n+2)-1`
-/

namespace A116244.P4891755939829660836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116290 (n + 2) - 1

end

end A116244.P4891755939829660836

/-! ## A116244.P17882846624988488893

`A153881(n+2)+A116290(n+2)`
-/

namespace A116244.P17882846624988488893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A116290 (n + 2)

end

end A116244.P17882846624988488893

/-! ## A116244.P6750137914121161305

`xor(-A116290(n+2), A033999(2*n+1))`
-/

namespace A116244.P6750137914121161305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A116290 (n + 2)) (A033999 (2 * n + 1))

end

end A116244.P6750137914121161305

/-! ## A116244.P6443033945686334606

`A033999(2*n+1)+A033999(2*n)*A116290(n+2)`
-/

namespace A116244.P6443033945686334606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033999 (2 * n) * A116290 (n + 2)

end

end A116244.P6443033945686334606

/-! ## A116244.P17024062458720815279

`xor(-A116290(n+2), A008683(A098974(n+1)))`
-/

namespace A116244.P17024062458720815279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A116290 (n + 2)) (A008683 (A098974 (n + 1)).toNat)

end

end A116244.P17024062458720815279

/-!
# A116245: n times n+9 gives the concatenation of two numbers m and m-7.

The programs for A116245, there is no canonical definition to state claims against.
-/

/-! ## A116245.P15413544694017614857

`A116298(n+1)-A261968(C(2, n+2))`
-/

namespace A116245.P15413544694017614857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116298 (n + 1) - A261968 (Nat.choose 2 (n + 2))

end

end A116245.P15413544694017614857

/-! ## A116245.P14068298557128555622

`A118821(A270024(n))+A116298(n+1)`
-/

namespace A116245.P14068298557128555622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118821 (A270024 n).toNat + A116298 (n + 1)

end

end A116245.P14068298557128555622

/-! ## A116245.P5283122420666945546

`A118821(A141056(n))+A116298(n+1)`
-/

namespace A116245.P5283122420666945546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118821 (A141056 n).toNat + A116298 (n + 1)

end

end A116245.P5283122420666945546

/-! ## A116245.P3245259482723019546

`A132954(A131801(n))+A116298(n+1)`
-/

namespace A116245.P3245259482723019546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 (A131801 n).toNat + A116298 (n + 1)

end

end A116245.P3245259482723019546

/-! ## A116245.P2483652592517904376

`A132954(A131822(n+1))+A116298(n+1)`
-/

namespace A116245.P2483652592517904376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 (A131822 (n + 1)).toNat + A116298 (n + 1)

end

end A116245.P2483652592517904376

/-!
# A116247: n times n+2 gives the concatenation of two numbers m and m-6.

The programs for A116247, there is no canonical definition to state claims against.
-/

/-! ## A116247.P13613102719738095945

`A116227(n+1)+1`
-/

namespace A116247.P13613102719738095945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116227 (n + 1) + 1

end

end A116247.P13613102719738095945

/-! ## A116247.P1769718335253341784

`A115444(n+1)-1`
-/

namespace A116247.P1769718335253341784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115444 (n + 1) - 1

end

end A116247.P1769718335253341784

/-! ## A116247.P17901732612323300928

`A134824(n+2)+A115444(n+1)`
-/

namespace A116247.P17901732612323300928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A115444 (n + 1)

end

end A116247.P17901732612323300928

/-! ## A116247.P2559209581170814748

`A153881(n+2)+A115444(n+1)`
-/

namespace A116247.P2559209581170814748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A115444 (n + 1)

end

end A116247.P2559209581170814748

/-! ## A116247.P12646725719445774750

`A260196(n+2)+A115444(n+1)`
-/

namespace A116247.P12646725719445774750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A115444 (n + 1)

end

end A116247.P12646725719445774750

/-!
# A116248: n times n+4 gives the concatenation of two numbers m and m-6.

The programs for A116248, there is no canonical definition to state claims against.
-/

/-! ## A116248.P13950580252305347488

`A116266(n+2)-1`
-/

namespace A116248.P13950580252305347488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116266 (n + 2) - 1

end

end A116248.P13950580252305347488

/-! ## A116248.P8050579947071209741

`A115442(n+2)-2`
-/

namespace A116248.P8050579947071209741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115442 (n + 2) - 2

end

end A116248.P8050579947071209741

/-! ## A116248.P7764724162408516447

`A153881(n+2)+A116266(n+2)`
-/

namespace A116248.P7764724162408516447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A116266 (n + 2)

end

end A116248.P7764724162408516447

/-! ## A116248.P16358699992348031350

`A260196(2*(n+1))+A116266(n+2)`
-/

namespace A116248.P16358699992348031350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * (n + 1)) + A116266 (n + 2)

end

end A116248.P16358699992348031350

/-! ## A116248.P15609282600258124177

`Δ[A001478(n+1)+∑[A116266(n+1)]]`
-/

namespace A116248.P15609282600258124177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116248.P15609282600258124177

/-!
# A116250: n times n+7 gives the concatenation of two numbers m and m-6.

The programs for A116250, there is no canonical definition to state claims against.
-/

/-! ## A116250.P6008272872973674890

`A116289(n+2)-1`
-/

namespace A116250.P6008272872973674890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116289 (n + 2) - 1

end

end A116250.P6008272872973674890

/-! ## A116250.P15915372539704418136

`A153881(n+2)+A116289(n+2)`
-/

namespace A116250.P15915372539704418136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A116289 (n + 2)

end

end A116250.P15915372539704418136

/-! ## A116250.P5956970915942573245

`A134824(or(3, n))+A116289(n+2)`
-/

namespace A116250.P5956970915942573245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (Nat.lor 3 n) + A116289 (n + 2)

end

end A116250.P5956970915942573245

/-! ## A116250.P17623171406575519452

`A134824(n+2)+A116289(n+2)`
-/

namespace A116250.P17623171406575519452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A116289 (n + 2)

end

end A116250.P17623171406575519452

/-! ## A116250.P160426544757712113

`A260196(2*(n+2))+A116289(n+2)`
-/

namespace A116250.P160426544757712113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * (n + 2)) + A116289 (n + 2)

end

end A116250.P160426544757712113

/-!
# A116252: n times n+2 gives the concatenation of two numbers m and m-5.

The programs for A116252, there is no canonical definition to state claims against.
-/

/-! ## A116252.P17033795245510133794

`A116235(n+1)+1`
-/

namespace A116252.P17033795245510133794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116235 (n + 1) + 1

end

end A116252.P17033795245510133794

/-! ## A116252.P9700509930435481953

`A115443(n+1)-1`
-/

namespace A116252.P9700509930435481953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115443 (n + 1) - 1

end

end A116252.P9700509930435481953

/-! ## A116252.P17611635166024606573

`A134824(n+2)+A115443(n+1)`
-/

namespace A116252.P17611635166024606573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A115443 (n + 1)

end

end A116252.P17611635166024606573

/-! ## A116252.P5819092852067665270

`A153881(n+2)+A115443(n+1)`
-/

namespace A116252.P5819092852067665270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A115443 (n + 1)

end

end A116252.P5819092852067665270

/-! ## A116252.P17939861168916094629

`A260196(n+2)+A115443(n+1)`
-/

namespace A116252.P17939861168916094629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A115443 (n + 1)

end

end A116252.P17939861168916094629

/-!
# A116254: k times k+4 gives the concatenation of two numbers m and m-5.

The programs for A116254, there is no canonical definition to state claims against.
-/

/-! ## A116254.P10576671475000040811

`A116273(n+1)-1`
-/

namespace A116254.P10576671475000040811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116273 (n + 1) - 1

end

end A116254.P10576671475000040811

/-! ## A116254.P17837023294155805471

`record[A116273(A133310(n))-1]`
-/

namespace A116254.P17837023294155805471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116273 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116254.P17837023294155805471

/-! ## A116254.P4328302777414375227

`record[A116273(A126759(n))-1]`
-/

namespace A116254.P4328302777414375227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116273 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116254.P4328302777414375227

/-! ## A116254.P9139195767991458708

`A054216(n+1)-2`
-/

namespace A116254.P9139195767991458708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054216 (n + 1) - 2

end

end A116254.P9139195767991458708

/-! ## A116254.P5155669829403359307

`record[A054216(A126759(2*n))-2]`
-/

namespace A116254.P5155669829403359307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054216 (A126759 (2 * n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116254.P5155669829403359307

/-! ## A116254.P7299691574243914507

`record[A116273(A116549(n))-1]`
-/

namespace A116254.P7299691574243914507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116273 (A116549 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116254.P7299691574243914507

/-!
# A116255: n times n+5 gives the concatenation of two numbers m and m-5.

The programs for A116255, there is no canonical definition to state claims against.
-/

/-! ## A116255.P6937196919086165796

`A116280(n+2)-1`
-/

namespace A116255.P6937196919086165796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116280 (n + 2) - 1

end

end A116255.P6937196919086165796

/-! ## A116255.P2875540540026613985

`A116294(n+3)-2`
-/

namespace A116255.P2875540540026613985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116294 (n + 3) - 2

end

end A116255.P2875540540026613985

/-! ## A116255.P17714621127925677585

`A260196(n+2)+A116280(n+2)`
-/

namespace A116255.P17714621127925677585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116280 (n + 2)

end

end A116255.P17714621127925677585

/-! ## A116255.P16551791813200356928

`A129667(A038881(n+1))+A116280(n+2)`
-/

namespace A116255.P16551791813200356928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (A038881 (n + 1)).toNat + A116280 (n + 2)

end

end A116255.P16551791813200356928

/-! ## A116255.P17852347443663970023

`A117373(A166651(2*(n+1)))+A116280(n+2)`
-/

namespace A116255.P17852347443663970023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117373 (A166651 (2 * (n + 1))).toNat + A116280 (n + 2)

end

end A116255.P17852347443663970023

/-!
# A116256: Numbers k such that k*(k+6) gives the concatenation of two numbers m and m-5.

The programs for A116256, there is no canonical definition to state claims against.
-/

/-! ## A116256.P4621078427764694698

`A116288(n+1)-1`
-/

namespace A116256.P4621078427764694698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116288 (n + 1) - 1

end

end A116256.P4621078427764694698

/-! ## A116256.P7202918338803504426

`abs(A116288(n+1)+A008683(A020484(n)))`
-/

namespace A116256.P7202918338803504426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116288 (n + 1) + A008683 (A020484 n).toNat|

end

end A116256.P7202918338803504426

/-! ## A116256.P10496898738011340497

`A134824(n+2)+A116288(n+1)`
-/

namespace A116256.P10496898738011340497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A116288 (n + 1)

end

end A116256.P10496898738011340497

/-! ## A116256.P14050084219415367697

`A260196(n+2)+A116288(n+1)`
-/

namespace A116256.P14050084219415367697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116288 (n + 1)

end

end A116256.P14050084219415367697

/-! ## A116256.P6967666284519724148

`A129667(A020484(n))+A116288(n+1)`
-/

namespace A116256.P6967666284519724148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (A020484 n).toNat + A116288 (n + 1)

end

end A116256.P6967666284519724148

/-! ## A116256.P6851344960425084481

`record[A116288(A126759(n))-1]`
-/

namespace A116256.P6851344960425084481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116288 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116256.P6851344960425084481

/-! ## A116256.P13349153424977506802

`record[A116288(A193592(n))-1]`
-/

namespace A116256.P13349153424977506802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116288 (A193592 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116256.P13349153424977506802

/-!
# A116260: n times n+4 gives the concatenation of two numbers m and m-4.

The programs for A116260, there is no canonical definition to state claims against.
-/

/-! ## A116260.P17728812843724511445

`A116229(n+1)+1`
-/

namespace A116260.P17728812843724511445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116229 (n + 1) + 1

end

end A116260.P17728812843724511445

/-! ## A116260.P3697038600080172130

`Δ[∑[10^n-1]^gcd(11, n)]`
-/

namespace A116260.P3697038600080172130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.gcd 11 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116260.P3697038600080172130

/-! ## A116260.P13584210464052332136

`10^∑[n^(n-dr(n))]-1`
-/

namespace A116260.P13584210464052332136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - 1

end

end A116260.P13584210464052332136

/-! ## A116260.P10035870820484696100

`∑[Δ[10^n]^C(n, ∑{digits}[n, #])]`
-/

namespace A116260.P10035870820484696100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ Nat.choose n ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116260.P10035870820484696100

/-! ## A116260.P11909739820124639780

`10^∑[∑[char[10*n]]^n]-1`
-/

namespace A116260.P11909739820124639780
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A116260.P11909739820124639780

/-!
# A116261: Numbers k such that k*(k+5) gives the concatenation of two numbers m and m-4.

The programs for A116261, there is no canonical definition to state claims against.
-/

/-! ## A116261.P9979901572970407997

`A116287(n+1)-1`
-/

namespace A116261.P9979901572970407997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116287 (n + 1) - 1

end

end A116261.P9979901572970407997

/-! ## A116261.P14127337005460018920

`abs(A116287(n+1)+A008683(A020484(n)))`
-/

namespace A116261.P14127337005460018920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116287 (n + 1) + A008683 (A020484 n).toNat|

end

end A116261.P14127337005460018920

/-! ## A116261.P10763437484630281868

`(A116287(n+1)+A008683(A020484(n)))*A020985(n)²`
-/

namespace A116261.P10763437484630281868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116287 (n + 1) + A008683 (A020484 n).toNat) * A020985 n ^ 2

end

end A116261.P10763437484630281868

/-! ## A116261.P6377240686487524392

`A260196(n+2)+A116287(n+1)`
-/

namespace A116261.P6377240686487524392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116287 (n + 1)

end

end A116261.P6377240686487524392

/-! ## A116261.P758323354180730515

`A244895((10*n+8)/2)+A116287(n+1)`
-/

namespace A116261.P758323354180730515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (SequenceMachineLib.roundAway ((10 * n + 8 : ℚ) / 2)).toNat + A116287 (n + 1)

end

end A116261.P758323354180730515

/-!
# A116262: n times n+6 gives the concatenation of two numbers m and m-4.

The programs for A116262, there is no canonical definition to state claims against.
-/

/-! ## A116262.P14000012138433618551

`A116297(n+3)-1`
-/

namespace A116262.P14000012138433618551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116297 (n + 3) - 1

end

end A116262.P14000012138433618551

/-! ## A116262.P9298366549086932197

`A116315(n+3)-2`
-/

namespace A116262.P9298366549086932197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116315 (n + 3) - 2

end

end A116262.P9298366549086932197

/-! ## A116262.P14221527849560267628

`A115439(n+3)-3`
-/

namespace A116262.P14221527849560267628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115439 (n + 3) - 3

end

end A116262.P14221527849560267628

/-! ## A116262.P13576267077693326899

`A134824(2*(n+1))+A116297(n+3)`
-/

namespace A116262.P13576267077693326899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * (n + 1)) + A116297 (n + 3)

end

end A116262.P13576267077693326899

/-! ## A116262.P7394133209489540473

`A260196(3*(n+1))+A116297(n+3)`
-/

namespace A116262.P7394133209489540473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (3 * (n + 1)) + A116297 (n + 3)

end

end A116262.P7394133209489540473

/-!
# A116263: n times n+7 gives the concatenation of two numbers m and m-4.

The programs for A116263, there is no canonical definition to state claims against.
-/

/-! ## A116263.P1100030128355247992

`A116303(n+2)-1`
-/

namespace A116263.P1100030128355247992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116303 (n + 2) - 1

end

end A116263.P1100030128355247992

/-! ## A116263.P7465826099458547290

`A116330(n+2)-2`
-/

namespace A116263.P7465826099458547290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116330 (n + 2) - 2

end

end A116263.P7465826099458547290

/-! ## A116263.P9938913454750882231

`A116343(n+2)-3`
-/

namespace A116263.P9938913454750882231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116343 (n + 2) - 3

end

end A116263.P9938913454750882231

/-! ## A116263.P13889791668949979772

`A260196(n+2)+A116303(n+2)`
-/

namespace A116263.P13889791668949979772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116303 (n + 2)

end

end A116263.P13889791668949979772

/-! ## A116263.P16440002776250222182

`A197870(gcd(n, n+1))+A116303(n+2)`
-/

namespace A116263.P16440002776250222182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (Nat.gcd n (n + 1)) + A116303 (n + 2)

end

end A116263.P16440002776250222182

/-!
# A116266: n times n+2 gives the concatenation of two numbers m and m-3.

The programs for A116266, there is no canonical definition to state claims against.
-/

/-! ## A116266.P17155924074805281491

`A115442(n+1)-1`
-/

namespace A116266.P17155924074805281491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115442 (n + 1) - 1

end

end A116266.P17155924074805281491

/-! ## A116266.P633667654209908637

`record[A115442(A126759(n))-1]`
-/

namespace A116266.P633667654209908637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115442 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116266.P633667654209908637

/-! ## A116266.P15810762913004850416

`A134824(n+2)+A115442(n+1)`
-/

namespace A116266.P15810762913004850416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A115442 (n + 1)

end

end A116266.P15810762913004850416

/-! ## A116266.P4861148986653919737

`A153881(n+2)+A115442(n+1)`
-/

namespace A116266.P4861148986653919737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A115442 (n + 1)

end

end A116266.P4861148986653919737

/-! ## A116266.P5270965271133429374

`record[A115442(A134478(n))-1]`
-/

namespace A116266.P5270965271133429374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115442 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116266.P5270965271133429374

/-!
# A116267: Numbers k such that k*(k+4) gives the concatenation of two numbers m and m-3.

The programs for A116267, there is no canonical definition to state claims against.
-/

/-! ## A116267.P6495686773026818487

`A116286(n+1)-1`
-/

namespace A116267.P6495686773026818487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116286 (n + 1) - 1

end

end A116267.P6495686773026818487

/-! ## A116267.P13605402477262590201

`A001478(n+1)+A116286(n+1)+n`
-/

namespace A116267.P13605402477262590201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A116286 (n + 1) + (n : ℤ))

end

end A116267.P13605402477262590201

/-! ## A116267.P7131274243426486058

`abs(A116286(n+1)+A008683(A020484(n)))`
-/

namespace A116267.P7131274243426486058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116286 (n + 1) + A008683 (A020484 n).toNat|

end

end A116267.P7131274243426486058

/-! ## A116267.P16694941517075856100

`record[A116286(A126759(n))-1]`
-/

namespace A116267.P16694941517075856100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116286 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116267.P16694941517075856100

/-! ## A116267.P17304245553187704371

`record[A116286(A134478(n))-1]`
-/

namespace A116267.P17304245553187704371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116286 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116267.P17304245553187704371

/-!
# A116269: Numbers k such that k*(k+7) gives the concatenation of two numbers m and m-3.

The programs for A116269, there is no canonical definition to state claims against.
-/

/-! ## A116269.P18208474735808500983

`A116310(n+3)-1`
-/

namespace A116269.P18208474735808500983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116310 (n + 3) - 1

end

end A116269.P18208474735808500983

/-! ## A116269.P5975936419234266596

`A116336(n+2)-2`
-/

namespace A116269.P5975936419234266596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116336 (n + 2) - 2

end

end A116269.P5975936419234266596

/-! ## A116269.P3849693577725998933

`A116348(n+2)-3`
-/

namespace A116269.P3849693577725998933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116348 (n + 2) - 3

end

end A116269.P3849693577725998933

/-! ## A116269.P4936622411179596023

`∑[abs(Δ[A116336(n+1)])]+1`
-/

namespace A116269.P4936622411179596023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116336 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116269.P4936622411179596023

/-! ## A116269.P13113117711400728750

`A260196(n+2)+A116310(n+3)`
-/

namespace A116269.P13113117711400728750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116310 (n + 3)

end

end A116269.P13113117711400728750

/-!
# A116270: 

The programs for A116270, there is no canonical definition to state claims against.
-/

/-! ## A116270.P6834954600854701072

`A116318(n+2)-1`
-/

namespace A116270.P6834954600854701072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116318 (n + 2) - 1

end

end A116270.P6834954600854701072

/-! ## A116270.P16918653789965235429

`A116350(n+2)-2`
-/

namespace A116270.P16918653789965235429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116350 (n + 2) - 2

end

end A116270.P16918653789965235429

/-!
# A116273: Numbers k such that k*(k+2) gives the concatenation of two numbers m and m-2.

The programs for A116273, there is no canonical definition to state claims against.
-/

/-! ## A116273.P18368148740599435097

`A116254(n+1)+1`
-/

namespace A116273.P18368148740599435097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116254 (n + 1) + 1

end

end A116273.P18368148740599435097

/-! ## A116273.P11590809394867953888

`A054216(n+1)-1`
-/

namespace A116273.P11590809394867953888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054216 (n + 1) - 1

end

end A116273.P11590809394867953888

/-! ## A116273.P17201586750087076819

`record[A054216(A126759(n))-1]`
-/

namespace A116273.P17201586750087076819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054216 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116273.P17201586750087076819

/-! ## A116273.P16457673692635673943

`record[A054216(A133310(n))-1]`
-/

namespace A116273.P16457673692635673943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054216 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116273.P16457673692635673943

/-! ## A116273.P2740286752115961062

`A153881(n+2)+A054216(n+1)`
-/

namespace A116273.P2740286752115961062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A054216 (n + 1)

end

end A116273.P2740286752115961062

/-! ## A116273.P14821685869617901661

`record[A054216(A116549(n))-1]`
-/

namespace A116273.P14821685869617901661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054216 (A116549 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116273.P14821685869617901661

/-!
# A116275: Numbers k such that k*(k+4) gives the concatenation of two numbers m and m-2.

The programs for A116275, there is no canonical definition to state claims against.
-/

/-! ## A116275.P1158084833945443341

`A116242(n+1)+1`
-/

namespace A116275.P1158084833945443341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116242 (n + 1) + 1

end

end A116275.P1158084833945443341

/-! ## A116275.P16071044268516118847

`A116295(n+1)-1`
-/

namespace A116275.P16071044268516118847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116295 (n + 1) - 1

end

end A116275.P16071044268516118847

/-! ## A116275.P4804794094973671820

`A115427(n+1)-2`
-/

namespace A116275.P4804794094973671820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115427 (n + 1) - 2

end

end A116275.P4804794094973671820

/-! ## A116275.P9019993495133914587

`record[A116295(A126759(n))-1]`
-/

namespace A116275.P9019993495133914587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116295 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116275.P9019993495133914587

/-! ## A116275.P10354715993645885022

`record[A116295(A133310(n))-1]`
-/

namespace A116275.P10354715993645885022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116295 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116275.P10354715993645885022

/-! ## A116275.P6114638849212085165

`record[A115427(A126759(2*n))-2]`
-/

namespace A116275.P6114638849212085165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115427 (A126759 (2 * n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116275.P6114638849212085165

/-!
# A116277: n times n+8 gives the concatenation of two numbers m and m-2.

The programs for A116277, there is no canonical definition to state claims against.
-/

/-! ## A116277.P12638513958757280372

`A116325(n+4)-1`
-/

namespace A116277.P12638513958757280372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116325 (n + 4) - 1

end

end A116277.P12638513958757280372

/-! ## A116277.P12139832216871083421

`A302050(A078561(n+1))+A116325(n+4)`
-/

namespace A116277.P12139832216871083421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A078561 (n + 1)).toNat + A116325 (n + 4)

end

end A116277.P12139832216871083421

/-! ## A116277.P10785316600906692094

`A302050(A110589(n+1))+A116325(n+4)`
-/

namespace A116277.P10785316600906692094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A110589 (n + 1)).toNat + A116325 (n + 4)

end

end A116277.P10785316600906692094

/-! ## A116277.P12563993227963833763

`A302050(A141112(n+1))+A116325(n+4)`
-/

namespace A116277.P12563993227963833763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A141112 (n + 1)).toNat + A116325 (n + 4)

end

end A116277.P12563993227963833763

/-! ## A116277.P4333509657063078013

`A302050(A078553(n+2))+A116325(n+4)`
-/

namespace A116277.P4333509657063078013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A078553 (n + 2)).toNat + A116325 (n + 4)

end

end A116277.P4333509657063078013

/-!
# A116279: Numbers k such that k*(k+2) gives the concatenation of two numbers m and m-1.

The programs for A116279, there is no canonical definition to state claims against.
-/

/-! ## A116279.P14175236744411185130

`A106497(n+1)-1`
-/

namespace A116279.P14175236744411185130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106497 (n + 1) - 1

end

end A116279.P14175236744411185130

/-!
# A116280: n times n+3 gives the concatenation of two numbers m and m-1.

The programs for A116280, there is no canonical definition to state claims against.
-/

/-! ## A116280.P4081908490280689360

`A116294(n+2)-1`
-/

namespace A116280.P4081908490280689360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116294 (n + 2) - 1

end

end A116280.P4081908490280689360

/-! ## A116280.P7899491157606097020

`A260196(n+2)+A116294(n+2)`
-/

namespace A116280.P7899491157606097020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116294 (n + 2)

end

end A116280.P7899491157606097020

/-! ## A116280.P8900449447831094641

`A116294(n+2)+A001478(n+1)+n`
-/

namespace A116280.P8900449447831094641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116294 (n + 2) + A001478 (n + 1) + (n : ℤ)

end

end A116280.P8900449447831094641

/-! ## A116280.P899613008488800902

`A341517(A002313(n+1))+A116294(n+2)`
-/

namespace A116280.P899613008488800902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341517 (A002313 (n + 1)).toNat + A116294 (n + 2)

end

end A116280.P899613008488800902

/-! ## A116280.P3819019584128034011

`A129667(A038881(n+1))+A116294(n+2)`
-/

namespace A116280.P3819019584128034011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (A038881 (n + 1)).toNat + A116294 (n + 2)

end

end A116280.P3819019584128034011

/-!
# A116281: Numbers k such that k*(k+5) gives the concatenation of two numbers m and m-1.

The programs for A116281, there is no canonical definition to state claims against.
-/

/-! ## A116281.P17991616096160623800

`A116243(n+1)+1`
-/

namespace A116281.P17991616096160623800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116243 (n + 1) + 1

end

end A116281.P17991616096160623800

/-! ## A116281.P5671699268233351537

`A116309(n+1)-1`
-/

namespace A116281.P5671699268233351537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116309 (n + 1) - 1

end

end A116281.P5671699268233351537

/-! ## A116281.P9427502958946287449

`A116322(n+1)-2`
-/

namespace A116281.P9427502958946287449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116322 (n + 1) - 2

end

end A116281.P9427502958946287449

/-! ## A116281.P13668783375440702094

`record[A116309(A134478(n))-1]`
-/

namespace A116281.P13668783375440702094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116309 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116281.P13668783375440702094

/-! ## A116281.P669571563311511527

`A260196(n+2)+A116309(n+1)`
-/

namespace A116281.P669571563311511527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116309 (n + 1)

end

end A116281.P669571563311511527

/-!
# A116282: Numbers k such that k*(k+6) gives the concatenation of two numbers m and m-1.

The programs for A116282, there is no canonical definition to state claims against.
-/

/-! ## A116282.P11778191382155619935

`A116239(n+1)+1`
-/

namespace A116282.P11778191382155619935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116239 (n + 1) + 1

end

end A116282.P11778191382155619935

/-! ## A116282.P2212079643222572402

`A116317(n+1)-1`
-/

namespace A116282.P2212079643222572402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116317 (n + 1) - 1

end

end A116282.P2212079643222572402

/-! ## A116282.P16242064488558567369

`A116335(n+1)-2`
-/

namespace A116282.P16242064488558567369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116335 (n + 1) - 2

end

end A116282.P16242064488558567369

/-! ## A116282.P14163386908227996494

`A115440(n+1)-3`
-/

namespace A116282.P14163386908227996494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115440 (n + 1) - 3

end

end A116282.P14163386908227996494

/-! ## A116282.P6647781427720629276

`record[A116317(A126759(n))-1]`
-/

namespace A116282.P6647781427720629276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116317 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116282.P6647781427720629276

/-! ## A116282.P17790027659305524191

`record[A116335(A126759(2*n))-2]`
-/

namespace A116282.P17790027659305524191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116335 (A126759 (2 * n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116282.P17790027659305524191

/-!
# A116284: n times n+9 gives the concatenation of two numbers m and m-1.

The programs for A116284, there is no canonical definition to state claims against.
-/

/-! ## A116284.P16467004188943177025

`A116340(n+2)-1`
-/

namespace A116284.P16467004188943177025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116340 (n + 2) - 1

end

end A116284.P16467004188943177025

/-! ## A116284.P11928597443419437756

`A153881(n+2)+A116340(n+2)`
-/

namespace A116284.P11928597443419437756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A116340 (n + 2)

end

end A116284.P11928597443419437756

/-! ## A116284.P13265043727562383510

`∑[A000007(n)+Δ[A116340(n+1)]]`
-/

namespace A116284.P13265043727562383510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116340 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116284.P13265043727562383510

/-! ## A116284.P11471235178338370963

`∑[A088917(n²)+Δ[A116340(n+1)]]`
-/

namespace A116284.P11471235178338370963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116340 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (n ^ 2) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116284.P11471235178338370963

/-! ## A116284.P14497226690939730931

`∑[Δ[A116340(n+1)]+A008458(n)%2]`
-/

namespace A116284.P14497226690939730931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116340 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + Int.tmod (A008458 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116284.P14497226690939730931

/-!
# A116285: Numbers k such that k * (k+1) is the concatenation of a number m with itself.

The programs for A116285, there is no canonical definition to state claims against.
-/

/-! ## A116285.P2460622298848805273

`floor(sqrt(A161356(n+1)))`
-/

namespace A116285.P2460622298848805273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A161356 (n + 1))

end

end A116285.P2460622298848805273

/-!
# A116286: Numbers k such that k*(k+2) gives the concatenation of a number m with itself.

The programs for A116286, there is no canonical definition to state claims against.
-/

/-! ## A116286.P14098259010581842876

`A116267(n+1)+1`
-/

namespace A116286.P14098259010581842876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116267 (n + 1) + 1

end

end A116286.P14098259010581842876

/-! ## A116286.P4875106656522973808

`A020725(A116267(n+1))`
-/

namespace A116286.P4875106656522973808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A116267 (n + 1)).toNat

end

end A116286.P4875106656522973808

/-!
# A116287: Numbers k such that k*(k+3) gives the concatenation of a number m with itself.

The programs for A116287, there is no canonical definition to state claims against.
-/

/-! ## A116287.P13743224198010489374

`A116261(n+1)+1`
-/

namespace A116287.P13743224198010489374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116261 (n + 1) + 1

end

end A116287.P13743224198010489374

/-! ## A116287.P2445800403227883455

`A020725(A116261(n+1))`
-/

namespace A116287.P2445800403227883455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A116261 (n + 1)).toNat

end

end A116287.P2445800403227883455

/-!
# A116288: Numbers k such that k*(k+4) gives the concatenation of a number m with itself.

The programs for A116288, there is no canonical definition to state claims against.
-/

/-! ## A116288.P3589306781924458743

`A116256(n+1)+1`
-/

namespace A116288.P3589306781924458743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116256 (n + 1) + 1

end

end A116288.P3589306781924458743

/-! ## A116288.P8709562857061928036

`A020725(A116256(n+1))`
-/

namespace A116288.P8709562857061928036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A116256 (n + 1)).toNat

end

end A116288.P8709562857061928036

/-!
# A116295: Numbers k such that k*(k+2) gives the concatenation of two numbers m and m+1.

The programs for A116295, there is no canonical definition to state claims against.
-/

/-! ## A116295.P13024034141877834141

`A116275(n+1)+1`
-/

namespace A116295.P13024034141877834141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116275 (n + 1) + 1

end

end A116295.P13024034141877834141

/-! ## A116295.P9284762619476235940

`A115427(n+1)-1`
-/

namespace A116295.P9284762619476235940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115427 (n + 1) - 1

end

end A116295.P9284762619476235940

/-! ## A116295.P8952344872666101446

`A116242(n+1)+2`
-/

namespace A116295.P8952344872666101446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116242 (n + 1) + 2

end

end A116295.P8952344872666101446

/-! ## A116295.P9099124081949366729

`record[A115427(A126759(n))-1]`
-/

namespace A116295.P9099124081949366729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115427 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116295.P9099124081949366729

/-! ## A116295.P4494666817499658748

`record[A115427(A133310(n))-1]`
-/

namespace A116295.P4494666817499658748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115427 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116295.P4494666817499658748

/-!
# A116297: Numbers k such that k*(k+4) gives the concatenation of two numbers m and m+1.

The programs for A116297, there is no canonical definition to state claims against.
-/

/-! ## A116297.P6364451106074082165

`A116315(n+1)-1`
-/

namespace A116297.P6364451106074082165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116315 (n + 1) - 1

end

end A116297.P6364451106074082165

/-! ## A116297.P16157463912769745792

`A115439(n+1)-2`
-/

namespace A116297.P16157463912769745792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115439 (n + 1) - 2

end

end A116297.P16157463912769745792

/-! ## A116297.P6293831030375231148

`record[A116315(A133310(n))-1]`
-/

namespace A116297.P6293831030375231148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116315 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116297.P6293831030375231148

/-! ## A116297.P3756925865803793146

`record[A116315(A126759(n))-1]`
-/

namespace A116297.P3756925865803793146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116315 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116297.P3756925865803793146

/-! ## A116297.P3810347979543698363

`record[A115439(A126759(2*n))-2]`
-/

namespace A116297.P3810347979543698363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115439 (A126759 (2 * n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116297.P3810347979543698363

/-! ## A116297.P13318394705069889825

`record[A116315(A134478(n))-1]`
-/

namespace A116297.P13318394705069889825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116315 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116297.P13318394705069889825

/-!
# A116298: n times n+7 gives the concatenation of two numbers m and m+1.

The programs for A116298, there is no canonical definition to state claims against.
-/

/-! ## A116298.P2380414516746770536

`A116245(n+1)-A118821(A000032(C(2, n+2)))`
-/

namespace A116298.P2380414516746770536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116245 (n + 1) - A118821 (A000032 (Nat.choose 2 (n + 2))).toNat

end

end A116298.P2380414516746770536

/-! ## A116298.P5514002625875486750

`A116245(n+1)-A118821(A270024(n))`
-/

namespace A116298.P5514002625875486750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116245 (n + 1) - A118821 (A270024 n).toNat

end

end A116298.P5514002625875486750

/-! ## A116298.P5321511503580280061

`A116245(n+1)-A118821(A141056(n))`
-/

namespace A116298.P5321511503580280061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116245 (n + 1) - A118821 (A141056 n).toNat

end

end A116298.P5321511503580280061

/-! ## A116298.P1272727080447894114

`A116245(n+1)-A132954(A131801(n))`
-/

namespace A116298.P1272727080447894114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116245 (n + 1) - A132954 (A131801 n).toNat

end

end A116298.P1272727080447894114

/-! ## A116298.P16032614572144183980

`A116245(n+1)-A132954(A131822(n+1))`
-/

namespace A116298.P16032614572144183980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116245 (n + 1) - A132954 (A131822 (n + 1)).toNat

end

end A116298.P16032614572144183980

