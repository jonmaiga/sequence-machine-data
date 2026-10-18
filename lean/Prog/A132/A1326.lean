import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A132603: Record values in A132601.

The programs for A132603, there is no canonical definition to state claims against.
-/

/-! ## A132603.P256155777880824930

`record[A132601(n+1)]`
-/

namespace A132603.P256155777880824930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132603.P256155777880824930

/-! ## A132603.P2154151300650816122

`A132601(A132604(n+1))`
-/

namespace A132603.P2154151300650816122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132601 (A132604 (n + 1)).toNat

end

end A132603.P2154151300650816122

/-! ## A132603.P9760374767987750784

`record[A132601(A028310(n))-A178333(n)]`
-/

namespace A132603.P9760374767987750784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132601 (A028310 n).toNat - A178333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132603.P9760374767987750784

/-! ## A132603.P16624722120771683905

`record[A132601(A028310(n))]%A016901(n)`
-/

namespace A132603.P16624722120771683905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132601 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A016901 n)

end

end A132603.P16624722120771683905

/-! ## A132603.P1997218357874266643

`record[A132601(A028310(n))]/A151933(n)!`
-/

namespace A132603.P1997218357874266643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132601 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (Nat.factorial (A151933 n).toNat : ℚ)

end

end A132603.P1997218357874266643

/-!
# A132605: Numbers m such that A132601(m) = m.

The programs for A132605, there is no canonical definition to state claims against.
-/

/-! ## A132605.P12384726788325930229

`eq[n, A132601(round(sqrt(n²+1)))]`
-/

namespace A132605.P12384726788325930229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132601 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132605.P12384726788325930229

/-! ## A132605.P11382535594222103043

`eq[n+1, A132601(n+1)]+1`
-/

namespace A132605.P11382535594222103043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132601 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A132605.P11382535594222103043

/-! ## A132605.P12859641509247884821

`eq[0, A132601(A028310(n))-n]`
-/

namespace A132605.P12859641509247884821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132601 (A028310 n).toNat - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132605.P12859641509247884821

/-!
# A132607: X-values of solutions to the equation X*(X + 1) - 11*Y^2 = 0.

The programs for A132607, the canonical program `A132607.P3368982448570919306` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132607 has offset 0).

The definition of A132607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132607.P3368982448570919306

`398*a(n-1)-a(n-2)+198` with `a(0)=0, a(1)=99`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A132607

/-- `398*a(n-1)-a(n-2)+198` -/
def P3368982448570919306.Spec : Prop :=
  ∀ n, P3368982448570919306.a n = A132607 n

theorem P3368982448570919306.correct : P3368982448570919306.Spec := by
  intro n
  simp only [A132607]

end A132607

/-! ## A132607.P1231796288565973505

`A001085(n)²-1`
-/

namespace A132607.P1231796288565973505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001085 n ^ 2 - 1

end

end A132607.P1231796288565973505

namespace A132607

/-- `A001085(n)²-1` -/
def P1231796288565973505.Spec : Prop :=
  ∀ n, P1231796288565973505.a n = A132607 n

end A132607

/-! ## A132607.P17840600418098230091

`11*A001084(n)²`
-/

namespace A132607.P17840600418098230091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A001084 n ^ 2

end

end A132607.P17840600418098230091

namespace A132607

/-- `11*A001084(n)²` -/
def P17840600418098230091.Spec : Prop :=
  ∀ n, P17840600418098230091.a n = A132607 n

end A132607

/-! ## A132607.P6665673962866167601

`(A090728(n)/2)²-1`
-/

namespace A132607.P6665673962866167601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A090728 n : ℚ) / 2) ^ 2 - 1

end

end A132607.P6665673962866167601

namespace A132607

/-- `(A090728(n)/2)²-1` -/
def P6665673962866167601.Spec : Prop :=
  ∀ n, P6665673962866167601.a n = (A132607 n : ℚ)

end A132607

/-! ## A132607.P1039175176564787604

`11*(A075844(n)/2)²`
-/

namespace A132607.P1039175176564787604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  11 * ((A075844 n : ℚ) / 2) ^ 2

end

end A132607.P1039175176564787604

namespace A132607

/-- `11*(A075844(n)/2)²` -/
def P1039175176564787604.Spec : Prop :=
  ∀ n, P1039175176564787604.a n = (A132607 n : ℚ)

end A132607

/-!
# A132608: Self-convolution square-root of A062817 (offset 2); thus g.f. A(x) satisfies: A(x)^2 = Sum_{n>=2} A062817(n)*x^n, where A062817(n) = Sum_{k=0..n} (n-k)^k*k^(n-k).

The programs for A132608, there is no canonical definition to state claims against.
-/

/-! ## A132608.P13525183319922757056

`A376685(A109285(n)-A263273(n))`
-/

namespace A132608.P13525183319922757056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376685 (A109285 n - A263273 n).toNat

end

end A132608.P13525183319922757056

/-!
# A132609: Antidiagonal sum of table A072590(n,k) = n^(k-1)*k^(n-1) for n>=1.

The programs for A132609, there is no canonical definition to state claims against.
-/

/-! ## A132609.P14444345228146834220

`A110656(A301465(n+1))+n`
-/

namespace A132609.P14444345228146834220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A301465 (n + 1)).toNat + (n : ℤ)

end

end A132609.P14444345228146834220

/-! ## A132609.P14001516753925163364

`∑[A060144(A025240(n+1)+A001910(n+3))]`
-/

namespace A132609.P14001516753925163364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A025240 (n + 1) + A001910 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132609.P14001516753925163364

/-!
# A132611: Column 0 of triangle A132610.

The programs for A132611, there is no canonical definition to state claims against.
-/

/-! ## A132611.P17455665399686360989

`A132610(∑[n])`
-/

namespace A132611.P17455665399686360989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132611.P17455665399686360989

/-! ## A132611.P11367100674239959643

`A132610(A000217(n))^A178334(n)`
-/

namespace A132611.P11367100674239959643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132610 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A132611.P11367100674239959643

/-! ## A132611.P336236730535708439

`A132610(A000217(n))%A013111(n)`
-/

namespace A132611.P336236730535708439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132610 (A000217 n).toNat) (A013111 n)

end

end A132611.P336236730535708439

/-! ## A132611.P3392553158229927738

`gcd(A000038(n), A132610(A000217(n)))`
-/

namespace A132611.P3392553158229927738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A132610 (A000217 n).toNat)

end

end A132611.P3392553158229927738

/-! ## A132611.P15111404652114886562

`lcm(A006466(n), A132610(A000217(n)))`
-/

namespace A132611.P15111404652114886562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A132610 (A000217 n).toNat)

end

end A132611.P15111404652114886562

/-!
# A132612: Column 1 of triangle A132610.

The programs for A132612, there is no canonical definition to state claims against.
-/

/-! ## A132612.P12787842971926915259

`A132610(∑[n+1]+1)`
-/

namespace A132612.P12787842971926915259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132610 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A132612.P12787842971926915259

/-! ## A132612.P7303611226834517006

`A132610(A134869(n+1))^A178334(n)`
-/

namespace A132612.P7303611226834517006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132610 (A134869 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A132612.P7303611226834517006

/-! ## A132612.P17461788431878327114

`gcd(A000038(n), A132610(A134869(n+1)))`
-/

namespace A132612.P17461788431878327114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A132610 (A134869 (n + 1)).toNat)

end

end A132612.P17461788431878327114

/-! ## A132612.P9969777090857963121

`or(A000007(n), A132610(A134869(n+1)))`
-/

namespace A132612.P9969777090857963121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A132610 (A134869 (n + 1)).toNat)

end

end A132612.P9969777090857963121

/-! ## A132612.P6003144293442842301

`A004525(A161895(n+1))*A132610(A134869(n+1))`
-/

namespace A132612.P6003144293442842301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A161895 (n + 1)).toNat * A132610 (A134869 (n + 1)).toNat

end

end A132612.P6003144293442842301

/-!
# A132613: Column 2 of triangle A132610.

The programs for A132613, there is no canonical definition to state claims against.
-/

/-! ## A132613.P913893043867523112

`A132610(∑[n+2]+3)`
-/

namespace A132613.P913893043867523112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132610 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A132613.P913893043867523112

/-! ## A132613.P11544441798731956660

`or(A000007(n), A132610(A133263(n+2)))`
-/

namespace A132613.P11544441798731956660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A132610 (A133263 (n + 2)).toNat)

end

end A132613.P11544441798731956660

/-! ## A132613.P7260506480939328159

`or(A063524(n), A132610(A133263(n+2)))`
-/

namespace A132613.P7260506480939328159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A132610 (A133263 (n + 2)).toNat)

end

end A132613.P7260506480939328159

/-! ## A132613.P12581705645887033675

`A132610(A133263(n+2))+A063524(n+4)`
-/

namespace A132613.P12581705645887033675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132610 (A133263 (n + 2)).toNat + A063524 (n + 4)

end

end A132613.P12581705645887033675

/-! ## A132613.P10772220432807238387

`lcm(A132610(A133263(n+2)), A228100(n+1))`
-/

namespace A132613.P10772220432807238387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132610 (A133263 (n + 2)).toNat) (A228100 (n + 1))

end

end A132613.P10772220432807238387

/-!
# A132614: Column 1 of triangle A132610 divided by row index less one.

The programs for A132614, there is no canonical definition to state claims against.
-/

/-! ## A132614.P10803393602261267500

`A132612(n+1)/(n+1)`
-/

namespace A132614.P10803393602261267500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132612 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A132614.P10803393602261267500

/-!
# A132615: Triangle T, read by rows, where row n+1 of T = row n of T^(2n-1) with appended '1' for n>=0 with T(0,0)=1.

The programs for A132615, there is no canonical definition to state claims against.
-/

/-! ## A132615.P8060176591903174751

`A179000(A329070(n+1))`
-/

namespace A132615.P8060176591903174751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179000 (A329070 (n + 1)).toNat

end

end A132615.P8060176591903174751

/-! ## A132615.P15841094381066054037

`A368569(A330490(n+2))`
-/

namespace A132615.P15841094381066054037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368569 (A330490 (n + 2)).toNat

end

end A132615.P15841094381066054037

/-! ## A132615.P3807194307789199123

`A161895(A322730(n+1)+1)`
-/

namespace A132615.P3807194307789199123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A322730 (n + 1) + 1).toNat

end

end A132615.P3807194307789199123

/-! ## A132615.P10356754467333340754

`A137735(C(A086270(n+1), 8))`
-/

namespace A132615.P10356754467333340754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Nat.choose (A086270 (n + 1)).toNat 8)

end

end A132615.P10356754467333340754

/-! ## A132615.P13637393553049323641

`gcd(A062140(n), A113185(A057657(n+1)))`
-/

namespace A132615.P13637393553049323641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062140 n) (A113185 (A057657 (n + 1)).toNat)

end

end A132615.P13637393553049323641

/-!
# A132616: Column 0 of triangle A132615.

The programs for A132616, there is no canonical definition to state claims against.
-/

/-! ## A132616.P12731530226716761965

`A132615(∑[n])`
-/

namespace A132616.P12731530226716761965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132616.P12731530226716761965

/-! ## A132616.P13498073079781371239

`A132615(A000217(n))^A178489(n)`
-/

namespace A132616.P13498073079781371239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132615 (A000217 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A132616.P13498073079781371239

/-! ## A132616.P17941938671699787124

`or(A000007(n), A132615(A000217(n)))`
-/

namespace A132616.P17941938671699787124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A132615 (A000217 n).toNat)

end

end A132616.P17941938671699787124

/-! ## A132616.P222630462976385765

`A132615(A000217(n))+A008683(8*(n+1))`
-/

namespace A132616.P222630462976385765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132615 (A000217 n).toNat + A008683 (8 * (n + 1))

end

end A132616.P222630462976385765

/-! ## A132616.P18202963452193626464

`A132615(A000217(n))^A014963(4*n+2)`
-/

namespace A132616.P18202963452193626464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132615 (A000217 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A132616.P18202963452193626464

/-!
# A132617: Column 1 of triangle A132615.

The programs for A132617, there is no canonical definition to state claims against.
-/

/-! ## A132617.P5151204905869186254

`A132615(∑[n+1]+1)`
-/

namespace A132617.P5151204905869186254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132615 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A132617.P5151204905869186254

/-! ## A132617.P106338877890481993

`A326544(n)+A132615(A134869(n+1))`
-/

namespace A132617.P106338877890481993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n + A132615 (A134869 (n + 1)).toNat

end

end A132617.P106338877890481993

/-! ## A132617.P8089547028294404870

`lcm(A132615(A134869(n+1)), A161895(n+1))`
-/

namespace A132617.P8089547028294404870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132615 (A134869 (n + 1)).toNat) (A161895 (n + 1))

end

end A132617.P8089547028294404870

/-! ## A132617.P12924852741475495250

`and(1, A000045(n))!+A132615(A134869(n+1))-1`
-/

namespace A132617.P12924852741475495250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) + (A132615 (A134869 (n + 1)).toNat - 1)

end

end A132617.P12924852741475495250

/-! ## A132617.P16424970710254985395

`A132615(A298320(n+1))*A132615(A134869(n+1))`
-/

namespace A132617.P16424970710254985395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132615 (A298320 (n + 1)).toNat * A132615 (A134869 (n + 1)).toNat

end

end A132617.P16424970710254985395

/-!
# A132618: Column 2 of triangle A132615.

The programs for A132618, there is no canonical definition to state claims against.
-/

/-! ## A132618.P16009753390066200581

`A132615(∑[n+2]+3)`
-/

namespace A132618.P16009753390066200581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132615 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A132618.P16009753390066200581

/-!
# A132619: Column 1 of triangle A132615 divided by twice the row index less 1.

The programs for A132619, there is no canonical definition to state claims against.
-/

/-! ## A132619.P8953112741502281339

`A132617(n+1)/(2*n+1)`
-/

namespace A132619.P8953112741502281339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132617 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A132619.P8953112741502281339

/-!
# A132620: Triangle T, read by rows, where antidiagonal k of T = antidiagonal k-1 of T^k (after appending '1' for even k) for k>0, with T(n,n)=1 for n>=0.

The programs for A132620, there is no canonical definition to state claims against.
-/

/-! ## A132620.P4581251851930062330

`gcd(A166065(n), A193592(A057393(n)))`
-/

namespace A132620.P4581251851930062330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166065 n) (A193592 (A057393 n).toNat)

end

end A132620.P4581251851930062330

/-! ## A132620.P16043756592432254044

`A099802(A132610(n)^A038500(n+1))`
-/

namespace A132620.P16043756592432254044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (SequenceMachineLib.roundAway ((A132610 n : ℚ) ^ (A038500 (n + 1) : ℤ))).toNat

end

end A132620.P16043756592432254044

/-! ## A132620.P8729415560003265692

`A008620(A186020(n)^A240755(n+1))`
-/

namespace A132620.P8729415560003265692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway ((A186020 n : ℚ) ^ (A240755 (n + 1) : ℤ))).toNat

end

end A132620.P8729415560003265692

/-! ## A132620.P1713826578196952762

`gcd(A008621(A305612(n)), A242261(n+1))`
-/

namespace A132620.P1713826578196952762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008621 (A305612 n).toNat) (A242261 (n + 1))

end

end A132620.P1713826578196952762

/-! ## A132620.P2339981337054654512

`A064189(C(A345358(n+1), A164844(n)))`
-/

namespace A132620.P2339981337054654512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (Nat.choose (A345358 (n + 1)).toNat (A164844 n).toNat)

end

end A132620.P2339981337054654512

/-!
# A132621: Column 0 of triangle A132620.

The programs for A132621, there is no canonical definition to state claims against.
-/

/-! ## A132621.P17558592065437603998

`A132620(∑[n])`
-/

namespace A132621.P17558592065437603998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132621.P17558592065437603998

/-! ## A132621.P15495906766733369924

`A132620(A000217(n))+char[10]`
-/

namespace A132621.P15495906766733369924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132620 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132621.P15495906766733369924

/-! ## A132621.P14855703601855842185

`A193095(n)+A132620(A000217(n))`
-/

namespace A132621.P14855703601855842185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n + A132620 (A000217 n).toNat

end

end A132621.P14855703601855842185

/-! ## A132621.P2118170288695078026

`A358773(n)+A132620(A000217(n))`
-/

namespace A132621.P2118170288695078026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 n + A132620 (A000217 n).toNat

end

end A132621.P2118170288695078026

/-! ## A132621.P15782978061072867494

`A043562(n)*A132620(A000217(n))`
-/

namespace A132621.P15782978061072867494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A132620 (A000217 n).toNat

end

end A132621.P15782978061072867494

/-!
# A132622: Column 1 of triangle A132620.

The programs for A132622, there is no canonical definition to state claims against.
-/

/-! ## A132622.P17664755237661876678

`A132620(∑[n+1]+1)`
-/

namespace A132622.P17664755237661876678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132620 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A132622.P17664755237661876678

/-! ## A132622.P17847113606910400645

`A132620(A134869(n+1))+A025442(n)`
-/

namespace A132622.P17847113606910400645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132620 (A134869 (n + 1)).toNat + A025442 n

end

end A132622.P17847113606910400645

/-! ## A132622.P560281389595131719

`A043562(n)*A132620(A134869(n+1))`
-/

namespace A132622.P560281389595131719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A132620 (A134869 (n + 1)).toNat

end

end A132622.P560281389595131719

/-! ## A132622.P10107506262765853399

`lcm(A008279(n), A132620(A134869(n+1)))`
-/

namespace A132622.P10107506262765853399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008279 n) (A132620 (A134869 (n + 1)).toNat)

end

end A132622.P10107506262765853399

/-! ## A132622.P6450609873774433102

`A308583(n+1)+A132620(A134869(n+1))`
-/

namespace A132622.P6450609873774433102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (n + 1) + A132620 (A134869 (n + 1)).toNat

end

end A132622.P6450609873774433102

/-!
# A132623: Triangle T, read by rows, where T(n,k) = Sum_{j=1..n-k-1} [T^j](n-1,k) with T(n+1,n) = n+1 and T(n,n)=0 for n>=0, where T^n denotes the n-th matrix power of T.

The programs for A132623, there is no canonical definition to state claims against.
-/

/-! ## A132623.P8516798869808895508

`A001222(A059268(n+1)^A297431(n+3))`
-/

namespace A132623.P8516798869808895508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A059268 (n + 1) : ℚ) ^ (A297431 (n + 3) : ℤ))).toNat

end

end A132623.P8516798869808895508

/-!
# A132624: Column 0 of triangle A132623.

The programs for A132624, there is no canonical definition to state claims against.
-/

/-! ## A132624.P9968665855248322292

`A132623(∑[n+1])`
-/

namespace A132624.P9968665855248322292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132623 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132624.P9968665855248322292

/-! ## A132624.P9140426089409841141

`or(A000007(n), A132623(A000217(n+1)))`
-/

namespace A132624.P9140426089409841141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A132623 (A000217 (n + 1)).toNat)

end

end A132624.P9140426089409841141

/-! ## A132624.P13945491847618148667

`A132623(A000217(n+1))+A000035(2*n)`
-/

namespace A132624.P13945491847618148667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132623 (A000217 (n + 1)).toNat + A000035 (2 * n)

end

end A132624.P13945491847618148667

/-! ## A132624.P204041990175788451

`A007318(A000217(n))*A132623(A000217(n+1))`
-/

namespace A132624.P204041990175788451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A132623 (A000217 (n + 1)).toNat

end

end A132624.P204041990175788451

/-! ## A132624.P796832401427162268

`A132623(A000217(n+1))/A007318(A000217(n+8))`
-/

namespace A132624.P796832401427162268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132623 (A000217 (n + 1)).toNat : ℚ) / (A007318 (A000217 (n + 8)).toNat : ℚ)

end

end A132624.P796832401427162268

/-!
# A132625: Triangle T, read by rows, where row n+1 of T = row n of T^(2^n) with appended '1' for n>=0 with T(0,0)=1.

The programs for A132625, there is no canonical definition to state claims against.
-/

/-! ## A132625.P14459192767221275529

`A305800(A156889(n+2)%A253303(3*n+2))`
-/

namespace A132625.P14459192767221275529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (Int.tmod (A156889 (n + 2)) (A253303 (3 * n + 2))).toNat

end

end A132625.P14459192767221275529

/-!
# A132626: Column 0 of triangle A132625.

The programs for A132626, there is no canonical definition to state claims against.
-/

/-! ## A132626.P11023763638233681494

`A132625(∑[n])`
-/

namespace A132626.P11023763638233681494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132625 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132626.P11023763638233681494

/-! ## A132626.P15851471012459327233

`∑{digits}[n, 10^#]%9*A132625(n*(n+1)/2)`
-/

namespace A132626.P15851471012459327233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℤ) * A132625 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A132626.P15851471012459327233

/-! ## A132626.P7518474041653418006

`and(-1, A132625(A000217(n)))`
-/

namespace A132626.P7518474041653418006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132625 (A000217 n).toNat)

end

end A132626.P7518474041653418006

/-! ## A132626.P2184340690015936318

`A132625((n²+n)/2)+A066568(n)`
-/

namespace A132626.P2184340690015936318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132625 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + A066568 n

end

end A132626.P2184340690015936318

/-! ## A132626.P999686756153804563

`A043562(n)*A132625(n*(n+1)/2)`
-/

namespace A132626.P999686756153804563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A132625 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A132626.P999686756153804563

/-!
# A132627: Column 1 of triangle A132625.

The programs for A132627, there is no canonical definition to state claims against.
-/

/-! ## A132627.P2348733711501922223

`A132625(∑[n+1]+1)`
-/

namespace A132627.P2348733711501922223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A132627.P2348733711501922223

/-! ## A132627.P13865155866898429514

`and(-1, A132625(A134869(n+1)))`
-/

namespace A132627.P13865155866898429514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132625 (A134869 (n + 1)).toNat)

end

end A132627.P13865155866898429514

/-! ## A132627.P220849275603752562

`A132625(A134869(n+1))+A066568(n)`
-/

namespace A132627.P220849275603752562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132625 (A134869 (n + 1)).toNat + A066568 n

end

end A132627.P220849275603752562

/-! ## A132627.P8987749539473367235

`A174617(n)+A132625(A134869(n+1))`
-/

namespace A132627.P8987749539473367235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174617 n + A132625 (A134869 (n + 1)).toNat

end

end A132627.P8987749539473367235

/-!
# A132628: Numbers k for which the sum of their digits divides sigma(k).

The programs for A132628, the canonical program `A132628.P1682638940278180444` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132628 has offset 1).

The definition of A132628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132628.P1682638940278180444

`lt[A000203(n+1)%A007953(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A132628

/-- `lt[A000203(n+1)%A007953(n+1), 1]+1` -/
def P1682638940278180444.Spec : Prop :=
  ∀ n, (P1682638940278180444.a n : ℤ) = A132628 (n + 1)

theorem P1682638940278180444.correct : P1682638940278180444.Spec := by
  intro n
  simp only [A132628, Nat.add_sub_cancel]

end A132628

/-!
# A132629: Number sigma(k)/digsum(k) for n such that sigma(k) is divisible by digsum(k).

The programs for A132629, there is no canonical definition to state claims against.
-/

/-! ## A132629.P8242010808345159917

`A000203(A132628(n+1))/A007953(A132628(n+1))`
-/

namespace A132629.P8242010808345159917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A132628 (n + 1)).toNat : ℚ) / (A007953 (A132628 (n + 1)).toNat : ℚ)

end

end A132629.P8242010808345159917

/-!
# A132630: Numbers n such that sigma(n)-n divides sigma(n+1)-n-1, where sigma(n) is sum of positive divisors of n.

The programs for A132630, the canonical program `A132630.P11928070417678431762` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132630 has offset 1).

The definition of A132630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132630.P11928070417678431762

`record[A070010(n+1)+A033879(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132630

/-- `record[A070010(n+1)+A033879(n+1)]` -/
def P11928070417678431762.Spec : Prop :=
  ∀ n, P11928070417678431762.a n = A132630 (n + 1)

theorem P11928070417678431762.correct : P11928070417678431762.Spec := by
  intro n
  simp only [A132630, Nat.add_sub_cancel]

end A132630

/-! ## A132630.P18200454106030574402

`record[A070010(n+1)-A033880(n+1)]`
-/

namespace A132630.P18200454106030574402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070010 (n + 1) - A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132630.P18200454106030574402

namespace A132630

/-- `record[A070010(n+1)-A033880(n+1)]` -/
def P18200454106030574402.Spec : Prop :=
  ∀ n, P18200454106030574402.a n = A132630 (n + 1)

end A132630

/-! ## A132630.P2306606846874019616

`eq[A001065(n+1), A070010(n+1)]+1`
-/

namespace A132630.P2306606846874019616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A132630.P2306606846874019616

namespace A132630

/-- `eq[A001065(n+1), A070010(n+1)]+1` -/
def P2306606846874019616.Spec : Prop :=
  ∀ n, (P2306606846874019616.a n : ℤ) = A132630 (n + 1)

end A132630

/-! ## A132630.P3244040900190470401

`A020725(eq[A001065(n+1), A070010(n+1)])`
-/

namespace A132630.P3244040900190470401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A132630.P3244040900190470401

namespace A132630

/-- `A020725(eq[A001065(n+1), A070010(n+1)])` -/
def P3244040900190470401.Spec : Prop :=
  ∀ n, P3244040900190470401.a n = A132630 (n + 1)

end A132630

/-! ## A132630.P14749232717357044674

`A141310(eq[A001065(n+1), A070010(n+1)])`
-/

namespace A132630.P14749232717357044674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A132630.P14749232717357044674

namespace A132630

/-- `A141310(eq[A001065(n+1), A070010(n+1)])` -/
def P14749232717357044674.Spec : Prop :=
  ∀ n, P14749232717357044674.a n = A132630 (n + 1)

end A132630

/-!
# A132631: Numbers k such that sigma(k+1)-k-1 divides sigma(k)-k, where sigma(k) is sum of positive divisors of n.

The programs for A132631, there is no canonical definition to state claims against.
-/

/-! ## A132631.P8105536499458820364

`lt[A298975(n+1), A020639(n+1)²]`
-/

namespace A132631.P8105536499458820364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A132631.P8105536499458820364

/-! ## A132631.P12601554844057757210

`lt[log(A298975(n+1)), A055396(n+1)]`
-/

namespace A132631.P12601554844057757210
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A298975 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A132631.P12601554844057757210

/-! ## A132631.P11943687471006203368

`lt[2*A318586(n+1), A020639(n+1)]`
-/

namespace A132631.P11943687471006203368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A132631.P11943687471006203368

/-! ## A132631.P2442750676821761412

`eq[A019427(n), A316827(A005451(n+1))]`
-/

namespace A132631.P2442750676821761412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316827 (A005451 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132631.P2442750676821761412

/-! ## A132631.P8515600399722663781

`eq[A004086(A328099(n+1)), A157334(n)]`
-/

namespace A132631.P8515600399722663781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A328099 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132631.P8515600399722663781

/-!
# A132632: Minimal m > 0 such that Fibonacci(m) == 0 (mod n^2).

The programs for A132632, there is no canonical definition to state claims against.
-/

/-! ## A132632.P17638182453408671630

`A001177((n+1)²)`
-/

namespace A132632.P17638182453408671630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 ((n + 1) ^ 2)

end

end A132632.P17638182453408671630

/-! ## A132632.P5264155194393729354

`or(char[4], A001177(∑[2*n+1]))`
-/

namespace A132632.P5264155194393729354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001177 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A132632.P5264155194393729354

/-! ## A132632.P9072352596769086687

`(n%2)!*A001177((n+1)^2)`
-/

namespace A132632.P9072352596769086687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A001177 ((n + 1) ^ 2)

end

end A132632.P9072352596769086687

/-! ## A132632.P15284205846166610987

`A143545(A001177(xor(n, -1)²))`
-/

namespace A132632.P15284205846166610987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (A001177 (Int.xor (n : ℤ) (-1) ^ 2).toNat).toNat

end

end A132632.P15284205846166610987

/-! ## A132632.P7462450966244906359

`A000027(A001177(xor(n, -1)²))`
-/

namespace A132632.P7462450966244906359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001177 (Int.xor (n : ℤ) (-1) ^ 2).toNat).toNat

end

end A132632.P7462450966244906359

/-! ## A132632.P16042718801220523852

`and(-1, A001177(A000290(n+1)))`
-/

namespace A132632.P16042718801220523852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001177 (A000290 (n + 1)).toNat)

end

end A132632.P16042718801220523852

/-! ## A132632.P11652847982086495542

`A237836(n+1)/A001176((n+1)²)`
-/

namespace A132632.P11652847982086495542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237836 (n + 1) : ℚ) / (A001176 ((n + 1) ^ 2) : ℚ)

end

end A132632.P11652847982086495542

/-! ## A132632.P17330420064475883461

`∑{d}[A001177(∑[2*n+1]), A000010(#)]`
-/

namespace A132632.P17330420064475883461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A132632.P17330420064475883461

/-! ## A132632.P7555459612640417056

`A007318(∑[n])*A001177(∑[2*n+1])`
-/

namespace A132632.P7555459612640417056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A001177 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A132632.P7555459612640417056

/-! ## A132632.P12211943918093491165

`lcm(A014963(n+1), A001177(∑[2*n+1]))`
-/

namespace A132632.P12211943918093491165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (n + 1)) (A001177 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A132632.P12211943918093491165

/-!
# A132633: Minimal m > 0 such that Fibonacci(m) == 0 (mod n^3).

The programs for A132633, there is no canonical definition to state claims against.
-/

/-! ## A132633.P15326922425311011733

`A001177((n+1)^3)`
-/

namespace A132633.P15326922425311011733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 ((n + 1) ^ 3)

end

end A132633.P15326922425311011733

/-! ## A132633.P6517016198438015099

`A001177(∑[A003215(n)])+char[43]`
-/

namespace A132633.P6517016198438015099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132633.P6517016198438015099

/-! ## A132633.P11309374339081877000

`A001177(A000578(n+1))+char[21]`
-/

namespace A132633.P11309374339081877000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A000578 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132633.P11309374339081877000

/-!
# A132634: a(n) = Fibonacci(n) mod n^2.

The programs for A132634, the canonical program `A132634.P13227898559569153105` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132634 has offset 1).

The definition of A132634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132634.P13227898559569153105

`A132636(n+1)%A085960(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132634

/-- `A132636(n+1)%A085960(n+1)` -/
def P13227898559569153105.Spec : Prop :=
  ∀ n, P13227898559569153105.a n = A132634 (n + 1)

theorem P13227898559569153105.correct : P13227898559569153105.Spec := by
  intro n
  simp only [A132634, Nat.add_sub_cancel]

end A132634

/-! ## A132634.P5512439597711608101

`∑[a(n-1)+a(n-2)]%(n+1)²` with `a(0)=1, a(1)=0`
-/

namespace A132634.P5512439597711608101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ 2

end

end A132634.P5512439597711608101

namespace A132634

/-- `∑[a(n-1)+a(n-2)]%(n+1)²` -/
def P5512439597711608101.Spec : Prop :=
  ∀ n, (P5512439597711608101.a n : ℤ) = A132634 (n + 1)

end A132634

/-! ## A132634.P4319839633596938821

`∑[A212804(n)]%(n+1)²`
-/

namespace A132634.P4319839633596938821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1) ^ 2 : ℤ)

end

end A132634.P4319839633596938821

namespace A132634

/-- `∑[A212804(n)]%(n+1)²` -/
def P4319839633596938821.Spec : Prop :=
  ∀ n, P4319839633596938821.a n = A132634 (n + 1)

end A132634

/-! ## A132634.P9774938814339816143

`A000045(n+1)%(n+1)²`
-/

namespace A132634.P9774938814339816143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A132634.P9774938814339816143

namespace A132634

/-- `A000045(n+1)%(n+1)²` -/
def P9774938814339816143.Spec : Prop :=
  ∀ n, P9774938814339816143.a n = A132634 (n + 1)

end A132634

/-! ## A132634.P4551971111186983042

`A160536(n+1)%(n+1)²`
-/

namespace A132634.P4551971111186983042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160536 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A132634.P4551971111186983042

namespace A132634

/-- `A160536(n+1)%(n+1)²` -/
def P4551971111186983042.Spec : Prop :=
  ∀ n, P4551971111186983042.a n = A132634 (n + 1)

end A132634

/-! ## A132634.P16024847454762326859

`(A000071(n+1)+1)%(n+1)²`
-/

namespace A132634.P16024847454762326859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000071 (n + 1) + 1) ((n + 1) ^ 2 : ℤ)

end

end A132634.P16024847454762326859

namespace A132634

/-- `(A000071(n+1)+1)%(n+1)²` -/
def P16024847454762326859.Spec : Prop :=
  ∀ n, P16024847454762326859.a n = A132634 (n + 1)

end A132634

/-! ## A132634.P4301144197866560840

`(A001611(n+1)-1)%(n+1)²`
-/

namespace A132634.P4301144197866560840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 (n + 1) - 1) ((n + 1) ^ 2 : ℤ)

end

end A132634.P4301144197866560840

namespace A132634

/-- `(A001611(n+1)-1)%(n+1)²` -/
def P4301144197866560840.Spec : Prop :=
  ∀ n, P4301144197866560840.a n = A132634 (n + 1)

end A132634

/-! ## A132634.P4759527821131129939

`Δ[A000071(n+2)]%(n+1)²`
-/

namespace A132634.P4759527821131129939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((n + 1) ^ 2 : ℤ)

end

end A132634.P4759527821131129939

namespace A132634

/-- `Δ[A000071(n+2)]%(n+1)²` -/
def P4759527821131129939.Spec : Prop :=
  ∀ n, P4759527821131129939.a n = A132634 (n + 1)

end A132634

/-! ## A132634.P5496991705734079546

`Δ[A000045(n+2)]%∑[2*n+1]`
-/

namespace A132634.P5496991705734079546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A132634.P5496991705734079546

namespace A132634

/-- `Δ[A000045(n+2)]%∑[2*n+1]` -/
def P5496991705734079546.Spec : Prop :=
  ∀ n, P5496991705734079546.a n = A132634 (n + 1)

end A132634

/-!
# A132635: Number of primes, 0's, and 1's in [0, n^2).

The programs for A132635, there is no canonical definition to state claims against.
-/

/-! ## A132635.P3338835359689126827

`ceil(A038107(n)+atan(n))`
-/

namespace A132635.P3338835359689126827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038107 n : ℝ) + Real.arctan (n : ℝ)⌉

end

end A132635.P3338835359689126827

/-! ## A132635.P11849693194813416927

`A130130(n)+A038107(n)`
-/

namespace A132635.P11849693194813416927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A038107 n

end

end A132635.P11849693194813416927

/-! ## A132635.P8001723600787369438

`A107286(2*n)+A038107(n)`
-/

namespace A132635.P8001723600787369438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n) + A038107 n

end

end A132635.P8001723600787369438

/-! ## A132635.P15196166003268991013

`A130130(n)+∑[A014085(A028310(n)-1)]`
-/

namespace A132635.P15196166003268991013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132635.P15196166003268991013

/-! ## A132635.P11488312436166858462

`A130130(n)+A000720(n+1)+A117490(n+1)-A014085(n)`
-/

namespace A132635.P11488312436166858462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + (A000720 (n + 1) + (A117490 (n + 1) - A014085 n))

end

end A132635.P11488312436166858462

/-! ## A132635.P8488957380604845992

`A220506(A004275(n+1))+A130130(n)`
-/

namespace A132635.P8488957380604845992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (A004275 (n + 1)).toNat + A130130 n

end

end A132635.P8488957380604845992

/-! ## A132635.P8517502486592727104

`A130130(n)+A000720(A065033(2*n)²)`
-/

namespace A132635.P8517502486592727104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A000720 (A065033 (2 * n) ^ 2).toNat

end

end A132635.P8517502486592727104

/-! ## A132635.P4013304502853593717

`A061008(C(n, n²)+n²)`
-/

namespace A132635.P4013304502853593717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (Nat.choose n (n ^ 2) + n ^ 2)

end

end A132635.P4013304502853593717

/-! ## A132635.P5276329570655995022

`A061008(A082562(n))`
-/

namespace A132635.P5276329570655995022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (A082562 n).toNat

end

end A132635.P5276329570655995022

/-! ## A132635.P4874933681071263658

`A061008(A103505(n)+n)`
-/

namespace A132635.P4874933681071263658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (A103505 n + (n : ℤ)).toNat

end

end A132635.P4874933681071263658

/-! ## A132635.P14269989584475070433

`A061008(record[A000463(n+1)])`
-/

namespace A132635.P14269989584475070433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132635.P14269989584475070433

/-! ## A132635.P1429311479218093862

`A061008(A036987(n)+n²)`
-/

namespace A132635.P1429311479218093862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (A036987 n + (n ^ 2 : ℤ)).toNat

end

end A132635.P1429311479218093862

/-! ## A132635.P7080860128235678259

`A230980(n²)+ceil(atan(n))`
-/

namespace A132635.P7080860128235678259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n ^ 2) + ⌈Real.arctan (n : ℝ)⌉

end

end A132635.P7080860128235678259

/-!
# A132636: a(n) = Fibonacci(n) mod n^3.

The programs for A132636, the canonical program `A132636.P15244365434743485777` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132636 has offset 1).

The definition of A132636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132636.P15244365434743485777

`∑[a(n-1)+a(n-2)]%((n+1)^3)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A132636

/-- `∑[a(n-1)+a(n-2)]%((n+1)^3)` -/
def P15244365434743485777.Spec : Prop :=
  ∀ n, (P15244365434743485777.a n : ℤ) = A132636 (n + 1)

theorem P15244365434743485777.correct : P15244365434743485777.Spec := by
  intro n
  simp only [A132636, Nat.add_sub_cancel]

end A132636

/-! ## A132636.P15252997085692883601

`record[A053602(n)]%((n+1)^3)`
-/

namespace A132636.P15252997085692883601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((n + 1) ^ 3 : ℤ)

end

end A132636.P15252997085692883601

namespace A132636

/-- `record[A053602(n)]%((n+1)^3)` -/
def P15252997085692883601.Spec : Prop :=
  ∀ n, P15252997085692883601.a n = A132636 (n + 1)

end A132636

/-! ## A132636.P15086356369394354643

`A000045(n+1)%((n+1)^3)`
-/

namespace A132636.P15086356369394354643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) ((n + 1) ^ 3 : ℤ)

end

end A132636.P15086356369394354643

namespace A132636

/-- `A000045(n+1)%((n+1)^3)` -/
def P15086356369394354643.Spec : Prop :=
  ∀ n, P15086356369394354643.a n = A132636 (n + 1)

end A132636

/-! ## A132636.P8055410690233802639

`A212804(n+2)%((n+1)^3)`
-/

namespace A132636.P8055410690233802639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (n + 2)) ((n + 1) ^ 3 : ℤ)

end

end A132636.P8055410690233802639

namespace A132636

/-- `A212804(n+2)%((n+1)^3)` -/
def P8055410690233802639.Spec : Prop :=
  ∀ n, P8055410690233802639.a n = A132636 (n + 1)

end A132636

/-! ## A132636.P8118730666576363958

`A079977(2*n)%((n+1)^3)`
-/

namespace A132636.P8118730666576363958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079977 (2 * n)) ((n + 1) ^ 3 : ℤ)

end

end A132636.P8118730666576363958

namespace A132636

/-- `A079977(2*n)%((n+1)^3)` -/
def P8118730666576363958.Spec : Prop :=
  ∀ n, P8118730666576363958.a n = A132636 (n + 1)

end A132636

/-! ## A132636.P14241231858612384638

`(A000071(n+1)+1)%((n+1)^3)`
-/

namespace A132636.P14241231858612384638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000071 (n + 1) + 1) ((n + 1) ^ 3 : ℤ)

end

end A132636.P14241231858612384638

namespace A132636

/-- `(A000071(n+1)+1)%((n+1)^3)` -/
def P14241231858612384638.Spec : Prop :=
  ∀ n, P14241231858612384638.a n = A132636 (n + 1)

end A132636

/-! ## A132636.P11148983821543112033

`∑[A212804(n)]%((n+1)*(n+1)²)`
-/

namespace A132636.P11148983821543112033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1) * (n + 1) ^ 2 : ℤ)

end

end A132636.P11148983821543112033

namespace A132636

/-- `∑[A212804(n)]%((n+1)*(n+1)²)` -/
def P11148983821543112033.Spec : Prop :=
  ∀ n, P11148983821543112033.a n = A132636 (n + 1)

end A132636

/-! ## A132636.P13284645991610833233

`A212272(n+1)%A000578(n+1)`
-/

namespace A132636.P13284645991610833233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212272 (n + 1)) (A000578 (n + 1))

end

end A132636.P13284645991610833233

namespace A132636

/-- `A212272(n+1)%A000578(n+1)` -/
def P13284645991610833233.Spec : Prop :=
  ∀ n, P13284645991610833233.a n = A132636 (n + 1)

end A132636

/-! ## A132636.P225894389284758299

`A053602(A004273(n))%((n+1)^3)`
-/

namespace A132636.P225894389284758299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053602 (A004273 n).toNat) ((n + 1) ^ 3 : ℤ)

end

end A132636.P225894389284758299

namespace A132636

/-- `A053602(A004273(n))%((n+1)^3)` -/
def P225894389284758299.Spec : Prop :=
  ∀ n, P225894389284758299.a n = A132636 (n + 1)

end A132636

/-! ## A132636.P17085074607349050081

`A053602(2*(n+1))%((n+1)^3)`
-/

namespace A132636.P17085074607349050081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053602 (2 * (n + 1))) ((n + 1) ^ 3 : ℤ)

end

end A132636.P17085074607349050081

namespace A132636

/-- `A053602(2*(n+1))%((n+1)^3)` -/
def P17085074607349050081.Spec : Prop :=
  ∀ n, P17085074607349050081.a n = A132636 (n + 1)

end A132636

/-! ## A132636.P16738719824054112974

`A210791(∑[n+1])%((n+1)^3)`
-/

namespace A132636.P16738719824054112974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210791 (∑ j ∈ Finset.range (n + 1), f1 j)) ((n + 1) ^ 3 : ℤ)

end

end A132636.P16738719824054112974

namespace A132636

/-- `A210791(∑[n+1])%((n+1)^3)` -/
def P16738719824054112974.Spec : Prop :=
  ∀ n, P16738719824054112974.a n = A132636 (n + 1)

end A132636

/-!
# A132637: Composite number C(n) raised to power C(n).

The programs for A132637, the canonical program `A132637.P17118528607186897140` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132637 has offset 1).

The definition of A132637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132637.P17118528607186897140

`A002808(n+1)^A002808(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A132637

/-- `A002808(n+1)^A002808(n+1)` -/
def P17118528607186897140.Spec : Prop :=
  ∀ n, P17118528607186897140.a n = (A132637 (n + 1) : ℚ)

end A132637

/-! ## A132637.P9654442046860992007

`A000312(A002808(n+1))`
-/

namespace A132637.P9654442046860992007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002808 (n + 1)).toNat

end

end A132637.P9654442046860992007

namespace A132637

/-- `A000312(A002808(n+1))` -/
def P9654442046860992007.Spec : Prop :=
  ∀ n, P9654442046860992007.a n = A132637 (n + 1)

end A132637

/-! ## A132637.P12262145163203043904

`A000312(lt[1, A018783(n)])`
-/

namespace A132637.P12262145163203043904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132637.P12262145163203043904

namespace A132637

/-- `A000312(lt[1, A018783(n)])` -/
def P12262145163203043904.Spec : Prop :=
  ∀ n, P12262145163203043904.a n = A132637 (n + 1)

end A132637

/-! ## A132637.P17718003025867594128

`A000312(lt[1, A032741(n)])`
-/

namespace A132637.P17718003025867594128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132637.P17718003025867594128

namespace A132637

/-- `A000312(lt[1, A032741(n)])` -/
def P17718003025867594128.Spec : Prop :=
  ∀ n, P17718003025867594128.a n = A132637 (n + 1)

end A132637

/-! ## A132637.P1528745211312328320

`A018252(n+2)^A018252(n+2)`
-/

namespace A132637.P1528745211312328320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) ^ (A018252 (n + 2) : ℤ)

end

end A132637.P1528745211312328320

namespace A132637

/-- `A018252(n+2)^A018252(n+2)` -/
def P1528745211312328320.Spec : Prop :=
  ∀ n, P1528745211312328320.a n = (A132637 (n + 1) : ℚ)

end A132637

/-!
# A132638: 

The programs for A132638, there is no canonical definition to state claims against.
-/

/-! ## A132638.P5651013340077065183

`(∑[2*(n+1)]^∑[n+1])²`
-/

namespace A132638.P5651013340077065183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2

end

end A132638.P5651013340077065183

/-! ## A132638.P1826296488201259243

`lcm(n+2, n+1)²^C(n+2, 2)`
-/

namespace A132638.P1826296488201259243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (n + 1) ^ 2) ^ Nat.choose (n + 2) 2

end

end A132638.P1826296488201259243

/-! ## A132638.P9082475622959104275

`A000312(∑[2*(n+1)])`
-/

namespace A132638.P9082475622959104275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132638.P9082475622959104275

/-!
# A132639: 

The programs for A132639, there is no canonical definition to state claims against.
-/

/-! ## A132639.P12194404948977095768

`A000312(A000108(n))`
-/

namespace A132639.P12194404948977095768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000108 n).toNat

end

end A132639.P12194404948977095768

/-!
# A132640: Number of trees with n unlabeled nodes T(n) raised to power T(n).

The programs for A132640, there is no canonical definition to state claims against.
-/

/-! ## A132640.P14672634165241681218

`A000312(A000055(n+1))`
-/

namespace A132640.P14672634165241681218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000055 (n + 1)).toNat

end

end A132640.P14672634165241681218

/-! ## A132640.P10339686211788180384

`A094054(A001256(n+1))`
-/

namespace A132640.P10339686211788180384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A001256 (n + 1)).toNat

end

end A132640.P10339686211788180384

/-! ## A132640.P11335413266035825931

`A000312(A277796(n+1))`
-/

namespace A132640.P11335413266035825931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A277796 (n + 1)).toNat

end

end A132640.P11335413266035825931

/-! ## A132640.P16008304658807472104

`A389602(n)^A389602(n)`
-/

namespace A132640.P16008304658807472104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389602 n : ℚ) ^ (A389602 n : ℤ)

end

end A132640.P16008304658807472104

/-! ## A132640.P4711649668116629024

`A000312(A095133(∑[n]+1))`
-/

namespace A132640.P4711649668116629024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A095133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A132640.P4711649668116629024

/-!
# A132641: Number of partitions of n, p(n), raised to power p(n).

The programs for A132641, there is no canonical definition to state claims against.
-/

/-! ## A132641.P10452400969244634297

`A000312(A000041(n))`
-/

namespace A132641.P10452400969244634297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000041 n).toNat

end

end A132641.P10452400969244634297

/-! ## A132641.P6077044003882191666

`A000312(A008640(n))`
-/

namespace A132641.P6077044003882191666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A008640 n).toNat

end

end A132641.P6077044003882191666

/-! ## A132641.P31084250360259323

`A000312(A008641(n))`
-/

namespace A132641.P31084250360259323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A008641 n).toNat

end

end A132641.P31084250360259323

/-! ## A132641.P9241950612384441965

`A094054(A001255(n))`
-/

namespace A132641.P9241950612384441965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A001255 n).toNat

end

end A132641.P9241950612384441965

/-! ## A132641.P8567433717285658041

`A033918(A086737(n))`
-/

namespace A132641.P8567433717285658041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (A086737 n).toNat

end

end A132641.P8567433717285658041

/-!
# A132643: 

The programs for A132643, there is no canonical definition to state claims against.
-/

/-! ## A132643.P12369958301002481421

`A000312(A000110(n))`
-/

namespace A132643.P12369958301002481421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000110 n).toNat

end

end A132643.P12369958301002481421

/-!
# A132644: X-values of solutions to the equation X*(X + 1) - 13*Y^2 = 0.

The programs for A132644, there is no canonical definition to state claims against.
-/

/-! ## A132644.P1926065576471302199

`floor(A114047(n)/2)`
-/

namespace A132644.P1926065576471302199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114047 n : ℚ) / 2⌋

end

end A132644.P1926065576471302199

/-!
# A132646: 

The programs for A132646, there is no canonical definition to state claims against.
-/

/-! ## A132646.P12103256329948323900

`A000312(A005384(n+1))`
-/

namespace A132646.P12103256329948323900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A005384 (n + 1)).toNat

end

end A132646.P12103256329948323900

/-! ## A132646.P3625043906118715168

`A000312(p?[record[A078709(n+1)]])`
-/

namespace A132646.P3625043906118715168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078709 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A132646.P3625043906118715168

/-! ## A132646.P6139679558998526113

`A005384(n+1)^A005384(Δ[n²]-n)`
-/

namespace A132646.P6139679558998526113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005384 (n + 1) : ℚ) ^ (A005384 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℤ)

end

end A132646.P6139679558998526113

/-!
# A132647: Number of permutations of [n] having no substring [k,k+1,k+2,k+3].

The programs for A132647, there is no canonical definition to state claims against.
-/

/-! ## A132647.P3850036900893572124

`A370392(n)+A002628(n)`
-/

namespace A132647.P3850036900893572124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370392 n + A002628 n

end

end A132647.P3850036900893572124

/-! ## A132647.P14413207117314318991

`A110654(A095817(n)+n!)`
-/

namespace A132647.P14413207117314318991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A095817 n + (Nat.factorial n : ℤ)).toNat

end

end A132647.P14413207117314318991

/-! ## A132647.P3331253834562776001

`A004525(A095817(n)+A000142(n))`
-/

namespace A132647.P3331253834562776001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A095817 n + A000142 n).toNat

end

end A132647.P3331253834562776001

/-! ## A132647.P18057280511168415202

`A004526(A095817(n)+A000142(n))`
-/

namespace A132647.P18057280511168415202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A095817 n + A000142 n).toNat

end

end A132647.P18057280511168415202

/-!
# A132649: Lucky number L(n) raised to power L(n).

The programs for A132649, there is no canonical definition to state claims against.
-/

/-! ## A132649.P18253158570717129280

`A000312(A000959(n+1))`
-/

namespace A132649.P18253158570717129280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000959 (n + 1)).toNat

end

end A132649.P18253158570717129280

/-! ## A132649.P2895446117922955605

`A094054(A032598(n+1))`
-/

namespace A132649.P2895446117922955605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A032598 (n + 1)).toNat

end

end A132649.P2895446117922955605

/-!
# A132650: a(n) = d(n)^d(n), where d(n) = A000005(n).

The programs for A132650, the canonical program `A132650.P7902314145472011192` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132650 has offset 1).

The definition of A132650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132650.P14736521784303868027

`∏{e}[n+1, #+1]^∏{e}[n+1, #+1]`
-/

namespace A132650.P14736521784303868027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A132650.P14736521784303868027

namespace A132650

/-- `∏{e}[n+1, #+1]^∏{e}[n+1, #+1]` -/
def P14736521784303868027.Spec : Prop :=
  ∀ n, (P14736521784303868027.a n : ℤ) = A132650 (n + 1)

end A132650

/-! ## A132650.P4318987408249278696

`∏{d}[n+1, A000005(lcm(#, n+1))]`
-/

namespace A132650.P4318987408249278696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000005 (Nat.lcm d (n + 1))

end

end A132650.P4318987408249278696

namespace A132650

/-- `∏{d}[n+1, A000005(lcm(#, n+1))]` -/
def P4318987408249278696.Spec : Prop :=
  ∀ n, P4318987408249278696.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P8412958630836401439

`∏{e}[n+1, #+1]^∑{d}[n+1, A057427(#)]`
-/

namespace A132650.P8412958630836401439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) ^ (∑ d ∈ Nat.divisors (f2 n), A057427 d : ℤ)

end

end A132650.P8412958630836401439

namespace A132650

/-- `∏{e}[n+1, #+1]^∑{d}[n+1, A057427(#)]` -/
def P8412958630836401439.Spec : Prop :=
  ∀ n, P8412958630836401439.a n = (A132650 (n + 1) : ℚ)

end A132650

/-! ## A132650.P16070845234977235001

`A000312(A000005(n+1))`
-/

namespace A132650.P16070845234977235001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000005 (n + 1)).toNat

end

end A132650.P16070845234977235001

namespace A132650

/-- `A000312(A000005(n+1))` -/
def P16070845234977235001.Spec : Prop :=
  ∀ n, P16070845234977235001.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P14271005024126132000

`A094054(A035116(n+1))`
-/

namespace A132650.P14271005024126132000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A035116 (n + 1)).toNat

end

end A132650.P14271005024126132000

namespace A132650

/-- `A094054(A035116(n+1))` -/
def P14271005024126132000.Spec : Prop :=
  ∀ n, P14271005024126132000.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P17506098785387062511

`A110132(A062011(n+1))`
-/

namespace A132650.P17506098785387062511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (A062011 (n + 1)).toNat

end

end A132650.P17506098785387062511

namespace A132650

/-- `A110132(A062011(n+1))` -/
def P17506098785387062511.Spec : Prop :=
  ∀ n, P17506098785387062511.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P8340886297194463390

`A033918(A184389(n+1))`
-/

namespace A132650.P8340886297194463390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (A184389 (n + 1)).toNat

end

end A132650.P8340886297194463390

namespace A132650

/-- `A033918(A184389(n+1))` -/
def P8340886297194463390.Spec : Prop :=
  ∀ n, P8340886297194463390.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P7902314145472011192

`A110138(A131089(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132650

/-- `A110138(A131089(n+1))` -/
def P7902314145472011192.Spec : Prop :=
  ∀ n, P7902314145472011192.a n = A132650 (n + 1)

theorem P7902314145472011192.correct : P7902314145472011192.Spec := by
  intro n
  simp only [A132650, Nat.add_sub_cancel]

end A132650

/-! ## A132650.P18227411966286708278

`A094054(A000005(n+1)²)`
-/

namespace A132650.P18227411966286708278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A000005 (n + 1) ^ 2).toNat

end

end A132650.P18227411966286708278

namespace A132650

/-- `A094054(A000005(n+1)²)` -/
def P18227411966286708278.Spec : Prop :=
  ∀ n, P18227411966286708278.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P3465904021535420077

`A094092(A000005(n+1)²)`
-/

namespace A132650.P3465904021535420077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094092 (A000005 (n + 1) ^ 2).toNat

end

end A132650.P3465904021535420077

namespace A132650

/-- `A094092(A000005(n+1)²)` -/
def P3465904021535420077.Spec : Prop :=
  ∀ n, P3465904021535420077.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P7012366010593936851

`A094093(A000005(n+1)²)`
-/

namespace A132650.P7012366010593936851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094093 (A000005 (n + 1) ^ 2).toNat

end

end A132650.P7012366010593936851

namespace A132650

/-- `A094093(A000005(n+1)²)` -/
def P7012366010593936851.Spec : Prop :=
  ∀ n, P7012366010593936851.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P15163343929426265194

`A000312(A032741(n+1)+1)`
-/

namespace A132650.P15163343929426265194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A032741 (n + 1) + 1).toNat

end

end A132650.P15163343929426265194

namespace A132650

/-- `A000312(A032741(n+1)+1)` -/
def P15163343929426265194.Spec : Prop :=
  ∀ n, P15163343929426265194.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P3053528611305910482

`A095887(A066446(n+1)+1)`
-/

namespace A132650.P3053528611305910482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095887 (A066446 (n + 1) + 1).toNat

end

end A132650.P3053528611305910482

namespace A132650

/-- `A095887(A066446(n+1)+1)` -/
def P3053528611305910482.Spec : Prop :=
  ∀ n, P3053528611305910482.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P17321582740718178909

`Δ[A006218(n)]^Δ[A006218(n)]`
-/

namespace A132650.P17321582740718178909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A132650.P17321582740718178909

namespace A132650

/-- `Δ[A006218(n)]^Δ[A006218(n)]` -/
def P17321582740718178909.Spec : Prop :=
  ∀ n, P17321582740718178909.a n = (A132650 (n + 1) : ℚ)

end A132650

/-! ## A132650.P15692043250525921956

`A009999(2*A000005(n+1)²)`
-/

namespace A132650.P15692043250525921956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (2 * A000005 (n + 1) ^ 2).toNat

end

end A132650.P15692043250525921956

namespace A132650

/-- `A009999(2*A000005(n+1)²)` -/
def P15692043250525921956.Spec : Prop :=
  ∀ n, P15692043250525921956.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P3021717808495294399

`A009998(2*A035116(n+1)-1)`
-/

namespace A132650.P3021717808495294399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (2 * A035116 (n + 1) - 1).toNat

end

end A132650.P3021717808495294399

namespace A132650

/-- `A009998(2*A035116(n+1)-1)` -/
def P3021717808495294399.Spec : Prop :=
  ∀ n, P3021717808495294399.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P17541421658713793285

`A065440(A000005(n+1)+1)/A000005(n+1)`
-/

namespace A132650.P17541421658713793285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065440 (A000005 (n + 1) + 1).toNat : ℚ) / (A000005 (n + 1) : ℚ)

end

end A132650.P17541421658713793285

namespace A132650

/-- `A065440(A000005(n+1)+1)/A000005(n+1)` -/
def P17541421658713793285.Spec : Prop :=
  ∀ n, P17541421658713793285.a n = (A132650 (n + 1) : ℚ)

end A132650

/-! ## A132650.P7702070426199155177

`A009999(2*A000005(n+1)*A000005(n+1))`
-/

namespace A132650.P7702070426199155177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (2 * A000005 (n + 1) * A000005 (n + 1)).toNat

end

end A132650.P7702070426199155177

namespace A132650

/-- `A009999(2*A000005(n+1)*A000005(n+1))` -/
def P7702070426199155177.Spec : Prop :=
  ∀ n, P7702070426199155177.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P16204974890512779595

`A033918(2*A000005(n+1)²)`
-/

namespace A132650.P16204974890512779595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (2 * A000005 (n + 1) ^ 2).toNat

end

end A132650.P16204974890512779595

namespace A132650

/-- `A033918(2*A000005(n+1)²)` -/
def P16204974890512779595.Spec : Prop :=
  ∀ n, P16204974890512779595.a n = A132650 (n + 1)

end A132650

/-! ## A132650.P6414191843157006482

`A112621(A338506(n+1))`
-/

namespace A132650.P6414191843157006482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112621 (A338506 (n + 1)).toNat

end

end A132650.P6414191843157006482

namespace A132650

/-- `A112621(A338506(n+1))` -/
def P6414191843157006482.Spec : Prop :=
  ∀ n, P6414191843157006482.a n = A132650 (n + 1)

end A132650

/-!
# A132651: Sum of proper divisors of n, s(n) raised to power s(n), for n > 1.

The programs for A132651, there is no canonical definition to state claims against.
-/

/-! ## A132651.P5916838185236801446

`A000312(A001065(n+2))`
-/

namespace A132651.P5916838185236801446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A001065 (n + 2)).toNat

end

end A132651.P5916838185236801446

/-! ## A132651.P1834585618371058617

`A000312(A000203(n+2)-(n+2))`
-/

namespace A132651.P1834585618371058617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000203 (n + 2) - (n + 2 : ℤ)).toNat

end

end A132651.P1834585618371058617

/-! ## A132651.P11991439008918297804

`A173455(n+2)^A173455(n+2)`
-/

namespace A132651.P11991439008918297804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173455 (n + 2) : ℚ) ^ (A173455 (n + 2) : ℤ)

end

end A132651.P11991439008918297804

/-! ## A132651.P12564273381940776055

`sqrt(A001065(n+2)^A091818(n+2))`
-/

namespace A132651.P12564273381940776055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A001065 (n + 2) : ℚ) ^ (A091818 (n + 2) : ℤ) : ℝ)

end

end A132651.P12564273381940776055

/-!
# A132652: Sum of divisors of n, sigma(n) raised to power sigma(n).

The programs for A132652, there is no canonical definition to state claims against.
-/

/-! ## A132652.P17703390066915382573

`∑{d}[n+1, #]^∑{d}[n+1, #]`
-/

namespace A132652.P17703390066915382573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ (∑ d ∈ Nat.divisors (f2 n), d)

end

end A132652.P17703390066915382573

/-! ## A132652.P12581055835467334487

`Δ[A160664(n)]^∑{d}[n+1, #]`
-/

namespace A132652.P12581055835467334487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (∑ d ∈ Nat.divisors (f2 n), d)

end

end A132652.P12581055835467334487

/-! ## A132652.P14385992872853936523

`A000312(A000203(n+1))`
-/

namespace A132652.P14385992872853936523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000203 (n + 1)).toNat

end

end A132652.P14385992872853936523

/-! ## A132652.P403525747246958287

`A094054(A072861(n+1))`
-/

namespace A132652.P403525747246958287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A072861 (n + 1)).toNat

end

end A132652.P403525747246958287

/-! ## A132652.P15863315909697198097

`A110132(A074400(n+1))`
-/

namespace A132652.P15863315909697198097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (A074400 (n + 1)).toNat

end

end A132652.P15863315909697198097

/-!
# A132653: 

The programs for A132653, there is no canonical definition to state claims against.
-/

/-! ## A132653.P1714076019633582532

`A000312(A007510(n+1))`
-/

namespace A132653.P1714076019633582532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A007510 (n + 1)).toNat

end

end A132653.P1714076019633582532

/-!
# A132654: An 8 X 8 magic square with consecutive triangular numbers, read by rows.

The programs for A132654, there is no canonical definition to state claims against.
-/

/-! ## A132654.P2552738175330111601

`C(A381001(n+1)+1, 2)`
-/

namespace A132654.P2552738175330111601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A381001 (n + 1) + 1).toNat 2

end

end A132654.P2552738175330111601

/-! ## A132654.P7179614814564755775

`A000217(A381001(n+1))`
-/

namespace A132654.P7179614814564755775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A381001 (n + 1)).toNat

end

end A132654.P7179614814564755775

/-! ## A132654.P6827661718531727602

`A161680(A381001(n+1)+1)`
-/

namespace A132654.P6827661718531727602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A381001 (n + 1) + 1).toNat

end

end A132654.P6827661718531727602

/-!
# A132655: 

The programs for A132655, there is no canonical definition to state claims against.
-/

/-! ## A132655.P17424727248821368551

`∑[3*n+1]^∑[3*n+1]`
-/

namespace A132655.P17424727248821368551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A132655.P17424727248821368551

/-!
# A132656: Motzkin number M(n) raised to power M(n).

The programs for A132656, there is no canonical definition to state claims against.
-/

/-! ## A132656.P3435831140503201773

`A000312(A001006(n))`
-/

namespace A132656.P3435831140503201773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A001006 n).toNat

end

end A132656.P3435831140503201773

/-! ## A132656.P11914854954723418357

`A000312(A258709(∑[n]))`
-/

namespace A132656.P11914854954723418357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A258709 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A132656.P11914854954723418357

/-! ## A132656.P11087319741902508003

`A048285(n)^A048285(n)`
-/

namespace A132656.P11087319741902508003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048285 n : ℚ) ^ (A048285 n : ℤ)

end

end A132656.P11087319741902508003

/-!
# A132657: a(n) is the product of the least prime > n^2 and the greatest prime < (n+1)^2.

The programs for A132657, the canonical program `A132657.P7540794836136521252` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132657 has offset 1).

The definition of A132657 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, A053001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132657.P7540794836136521252

`A007491(n+1)*A053001(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132657

/-- `A007491(n+1)*A053001(n+2)` -/
def P7540794836136521252.Spec : Prop :=
  ∀ n, P7540794836136521252.a n = A132657 (n + 1)

theorem P7540794836136521252.correct : P7540794836136521252.Spec := by
  intro n
  simp only [A132657, Nat.add_sub_cancel]

end A132657

/-! ## A132657.P16200096184385373810

`(A053000(n+1)+(n+1)²)*A053001(n+2)`
-/

namespace A132657.P16200096184385373810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053000 (n + 1) + ((n + 1) ^ 2 : ℤ)) * A053001 (n + 2)

end

end A132657.P16200096184385373810

namespace A132657

/-- `(A053000(n+1)+(n+1)²)*A053001(n+2)` -/
def P16200096184385373810.Spec : Prop :=
  ∀ n, P16200096184385373810.a n = A132657 (n + 1)

end A132657

/-! ## A132657.P6141268324052744066

`lcm(A007491(A000027(n+1)), A053001(n+2))`
-/

namespace A132657.P6141268324052744066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007491 (A000027 (n + 1)).toNat) (A053001 (n + 2))

end

end A132657.P6141268324052744066

namespace A132657

/-- `lcm(A007491(A000027(n+1)), A053001(n+2))` -/
def P6141268324052744066.Spec : Prop :=
  ∀ n, (P6141268324052744066.a n : ℤ) = A132657 (n + 1)

end A132657

/-! ## A132657.P3017116329734969295

`(A007491(n+2)-A058043(n+2))*A007491(n+1)`
-/

namespace A132657.P3017116329734969295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007491 (n + 2) - A058043 (n + 2)) * A007491 (n + 1)

end

end A132657.P3017116329734969295

namespace A132657

/-- `(A007491(n+2)-A058043(n+2))*A007491(n+1)` -/
def P3017116329734969295.Spec : Prop :=
  ∀ n, P3017116329734969295.a n = A132657 (n + 1)

end A132657

/-! ## A132657.P12176461888860739655

`A000040(∑[A014085(n)]+1)*A053001(n+2)`
-/

namespace A132657.P12176461888860739655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat * A053001 (n + 2)

end

end A132657.P12176461888860739655

namespace A132657

/-- `A000040(∑[A014085(n)]+1)*A053001(n+2)` -/
def P12176461888860739655.Spec : Prop :=
  ∀ n, P12176461888860739655.a n = A132657 (n + 1)

end A132657

/-! ## A132657.P7698087862102358365

`A053001(n+2)*A151800((n+1)²)`
-/

namespace A132657.P7698087862102358365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2) * A151800 ((n + 1) ^ 2)

end

end A132657.P7698087862102358365

namespace A132657

/-- `A053001(n+2)*A151800((n+1)²)` -/
def P7698087862102358365.Spec : Prop :=
  ∀ n, P7698087862102358365.a n = A132657 (n + 1)

end A132657

/-! ## A132657.P9752006018656924958

`A007918((n+1)²)*A053001(n+2)`
-/

namespace A132657.P9752006018656924958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1) ^ 2) * A053001 (n + 2)

end

end A132657.P9752006018656924958

namespace A132657

/-- `A007918((n+1)²)*A053001(n+2)` -/
def P9752006018656924958.Spec : Prop :=
  ∀ n, P9752006018656924958.a n = A132657 (n + 1)

end A132657

/-! ## A132657.P13251275630258609920

`A007491(n+1)*A252461(A007491(n+2))`
-/

namespace A132657.P13251275630258609920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) * A252461 (A007491 (n + 2)).toNat

end

end A132657.P13251275630258609920

namespace A132657

/-- `A007491(n+1)*A252461(A007491(n+2))` -/
def P13251275630258609920.Spec : Prop :=
  ∀ n, P13251275630258609920.a n = A132657 (n + 1)

end A132657

/-! ## A132657.P11244789618439187720

`A007491(A252463(2*(n+1)))*A252463(A007491(n+2))`
-/

namespace A132657.P11244789618439187720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A252463 (2 * (n + 1))).toNat * A252463 (A007491 (n + 2)).toNat

end

end A132657.P11244789618439187720

namespace A132657

/-- `A007491(A252463(2*(n+1)))*A252463(A007491(n+2))` -/
def P11244789618439187720.Spec : Prop :=
  ∀ n, P11244789618439187720.a n = A132657 (n + 1)

end A132657

/-!
# A132658: a(6n+k) = 3a(6n+k-1)-3a(6n+k-2)+2a(6n+k-3), k = 0, 1, 3, 4, 5; a(6n+2) = 3a(6n+1)-3a(6n). a(0) = a(1) = 0, a(2) = 1.

The programs for A132658, there is no canonical definition to state claims against.
-/

/-! ## A132658.P15614868195840271346

`∑[A004685(n)%A000005(n!)]`
-/

namespace A132658.P15614868195840271346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004685 n) (A000005 (Nat.factorial n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132658.P15614868195840271346

/-!
# A132659: Twin prime T(n) raised to power T(n).

The programs for A132659, there is no canonical definition to state claims against.
-/

/-! ## A132659.P18406796956795502741

`A082872(A001097(n+1))`
-/

namespace A132659.P18406796956795502741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082872 (A001097 (n + 1)).toNat

end

end A132659.P18406796956795502741

/-! ## A132659.P13815404441280483785

`A309739(n+1)^A309739(n+1)`
-/

namespace A132659.P13815404441280483785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309739 (n + 1) : ℚ) ^ (A309739 (n + 1) : ℤ)

end

end A132659.P13815404441280483785

/-! ## A132659.P5582741492798135968

`A275465(p?[A275413(2*n+3)]²)`
-/

namespace A132659.P5582741492798135968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275413 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275465 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A132659.P5582741492798135968

/-!
# A132662: Values of x such that x^2+y^2=n where x<=y for values of n given by A008784.

The programs for A132662, there is no canonical definition to state claims against.
-/

/-! ## A132662.P290591271294936332

`sqrt(A008784(n+1)-A132663(n+1)²)`
-/

namespace A132662.P290591271294936332
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008784 (n + 1) - A132663 (n + 1) ^ 2 : ℝ)

end

end A132662.P290591271294936332

/-! ## A132662.P6967117094473098012

`A279782(A133137(n+1))%A124891(n)`
-/

namespace A132662.P6967117094473098012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279782 (A133137 (n + 1)).toNat) (A124891 n)

end

end A132662.P6967117094473098012

/-!
# A132663: Values of y such that x^2+y^2=n where x<=y for values of n given by A008784.

The programs for A132663, there is no canonical definition to state claims against.
-/

/-! ## A132663.P1592157584237492290

`sqrt(A008784(n+1)-A132662(n+1)²)`
-/

namespace A132663.P1592157584237492290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008784 (n + 1) - A132662 (n + 1) ^ 2 : ℝ)

end

end A132663.P1592157584237492290

/-! ## A132663.P18232027916204190445

`A279783(n+1)+A010051(A060628(n))`
-/

namespace A132663.P18232027916204190445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279783 (n + 1) + A010051 (A060628 n).toNat

end

end A132663.P18232027916204190445

/-!
# A132665: a(1)=1, a(2)=3, a(n) = a(n-1) + n if the minimal positive integer not yet in the sequence is greater than a(n-1), else a(n) = a(n-1)-1.

The programs for A132665, the canonical program `A132665.P1454855667398800133` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132665 has offset 1).

The definition of A132665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132665.P4897362298628822740

`∑[or(n+1, A192687(n+1)-1)]`
-/

namespace A132665.P4897362298628822740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A192687 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132665.P4897362298628822740

namespace A132665

/-- `∑[or(n+1, A192687(n+1)-1)]` -/
def P4897362298628822740.Spec : Prop :=
  ∀ n, P4897362298628822740.a n = A132665 (n + 1)

end A132665

/-! ## A132665.P1454855667398800133

`∑[(n+2)*A010056(n+2)]-(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132665

/-- `∑[(n+2)*A010056(n+2)]-(n+1)` -/
def P1454855667398800133.Spec : Prop :=
  ∀ n, P1454855667398800133.a n = A132665 (n + 1)

theorem P1454855667398800133.correct : P1454855667398800133.Spec := by
  intro n
  simp only [A132665, Nat.add_sub_cancel]

end A132665

/-! ## A132665.P12566979333691859306

`∑[C(A139764(n+2), n+1)-1]`
-/

namespace A132665.P12566979333691859306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A139764 (n + 2)).toNat (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132665.P12566979333691859306

namespace A132665

/-- `∑[C(A139764(n+2), n+1)-1]` -/
def P12566979333691859306.Spec : Prop :=
  ∀ n, P12566979333691859306.a n = A132665 (n + 1)

end A132665

/-! ## A132665.P549319187917177681

`A000045(A108852(n+2)+1)-4-n`
-/

namespace A132665.P549319187917177681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 (n + 2) + 1).toNat - 4 - (n : ℤ)

end

end A132665.P549319187917177681

namespace A132665

/-- `A000045(A108852(n+2)+1)-4-n` -/
def P549319187917177681.Spec : Prop :=
  ∀ n, P549319187917177681.a n = A132665 (n + 1)

end A132665

/-! ## A132665.P11474769130241928558

`∑[Δ[A246104(A026351(n))]-1]`
-/

namespace A132665.P11474769130241928558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (A026351 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132665.P11474769130241928558

namespace A132665

/-- `∑[Δ[A246104(A026351(n))]-1]` -/
def P11474769130241928558.Spec : Prop :=
  ∀ n, P11474769130241928558.a n = A132665 (n + 1)

end A132665

/-! ## A132665.P7365434546133423838

`abs(A256654(floor(ϕ*(n+1))+3)-(n+2))-2`
-/

namespace A132665.P7365434546133423838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256654 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + 3).toNat - (n + 2 : ℤ)| - 2

end

end A132665.P7365434546133423838

namespace A132665

/-- `abs(A256654(floor(ϕ*(n+1))+3)-(n+2))-2` -/
def P7365434546133423838.Spec : Prop :=
  ∀ n, P7365434546133423838.a n = A132665 (n + 1)

end A132665

/-! ## A132665.P4716499301329440824

`A361989(A246104(n+1)+n+2)`
-/

namespace A132665.P4716499301329440824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361989 (A246104 (n + 1) + (n + 2 : ℤ)).toNat

end

end A132665.P4716499301329440824

namespace A132665

/-- `A361989(A246104(n+1)+n+2)` -/
def P4716499301329440824.Spec : Prop :=
  ∀ n, P4716499301329440824.a n = A132665 (n + 1)

end A132665

/-! ## A132665.P3627775757479404400

`A048680(A232559(n+2))-1`
-/

namespace A132665.P3627775757479404400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A232559 (n + 2)).toNat - 1

end

end A132665.P3627775757479404400

namespace A132665

/-- `A048680(A232559(n+2))-1` -/
def P3627775757479404400.Spec : Prop :=
  ∀ n, P3627775757479404400.a n = A132665 (n + 1)

end A132665

/-! ## A132665.P18299655004749872282

`A232560(A048679(n+2))-1`
-/

namespace A132665.P18299655004749872282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A048679 (n + 2)).toNat - 1

end

end A132665.P18299655004749872282

namespace A132665

/-- `A232560(A048679(n+2))-1` -/
def P18299655004749872282.Spec : Prop :=
  ∀ n, P18299655004749872282.a n = A132665 (n + 1)

end A132665

/-!
# A132677: Period 3: repeat [1, 2, -3].

The programs for A132677, the canonical program `A132677.P10492461102840906262` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132677 has offset 0).

The definition of A132677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132677.P10492461102840906262

`a(n-3)` with `a(0)=1, a(1)=2, a(2)=-3, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A132677

/-- `a(n-3)` -/
def P10492461102840906262.Spec : Prop :=
  ∀ n, P10492461102840906262.a n = A132677 n

theorem P10492461102840906262.correct : P10492461102840906262.Spec := by
  intro n
  simp only [A132677]

end A132677

/-!
# A132678: Indices of 1's in A096535.

The programs for A132678, there is no canonical definition to state claims against.
-/

/-! ## A132678.P16222456576383794228

`eq[1, A096535(n)]`
-/

namespace A132678.P16222456576383794228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096535 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132678.P16222456576383794228

/-!
# A132679: Starting with a(1)=1 and a(2)=2: if m is a term then also 4*m and 4*m+3.

The programs for A132679, the canonical program `A132679.P4652173713272160077` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132679 has offset 1).

The definition of A132679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132679.P4652173713272160077

`record[or(A004514(n), A004761(n+2))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132679

/-- `record[or(A004514(n), A004761(n+2))]` -/
def P4652173713272160077.Spec : Prop :=
  ∀ n, P4652173713272160077.a n = A132679 (n + 1)

theorem P4652173713272160077.correct : P4652173713272160077.Spec := by
  intro n
  simp only [A132679, Nat.add_sub_cancel]

end A132679

/-! ## A132679.P10260624766884735538

`xor(A002264(A115639(n)), A032925(n+1))`
-/

namespace A132679.P10260624766884735538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002264 (A115639 n).toNat) (A032925 (n + 1))

end

end A132679.P10260624766884735538

namespace A132679

/-- `xor(A002264(A115639(n)), A032925(n+1))` -/
def P10260624766884735538.Spec : Prop :=
  ∀ n, P10260624766884735538.a n = A132679 (n + 1)

end A132679

/-! ## A132679.P6135836844577091367

`A233280(A227992(n+2))`
-/

namespace A132679.P6135836844577091367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A227992 (n + 2)).toNat

end

end A132679.P6135836844577091367

namespace A132679

/-- `A233280(A227992(n+2))` -/
def P6135836844577091367.Spec : Prop :=
  ∀ n, P6135836844577091367.a n = A132679 (n + 1)

end A132679

/-! ## A132679.P5663168482675025087

`eq[1, A309952(A030103(n))]`
-/

namespace A132679.P5663168482675025087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A030103 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132679.P5663168482675025087

namespace A132679

/-- `eq[1, A309952(A030103(n))]` -/
def P5663168482675025087.Spec : Prop :=
  ∀ n, (P5663168482675025087.a n : ℤ) = A132679 (n + 1)

end A132679

/-! ## A132679.P2275274440562510326

`eq[A016116(A000523(n+1)), A309952(n)]`
-/

namespace A132679.P2275274440562510326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A000523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132679.P2275274440562510326

namespace A132679

/-- `eq[A016116(A000523(n+1)), A309952(n)]` -/
def P2275274440562510326.Spec : Prop :=
  ∀ n, (P2275274440562510326.a n : ℤ) = A132679 (n + 1)

end A132679

/-! ## A132679.P17532165118296527242

`eq[A309952(A053644(n+1)), A309952(n)]`
-/

namespace A132679.P17532165118296527242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A053644 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132679.P17532165118296527242

namespace A132679

/-- `eq[A309952(A053644(n+1)), A309952(n)]` -/
def P17532165118296527242.Spec : Prop :=
  ∀ n, (P17532165118296527242.a n : ℤ) = A132679 (n + 1)

end A132679

/-! ## A132679.P5559564618763734235

`eq[0, A087117(A003056(A163236(n)))]`
-/

namespace A132679.P5559564618763734235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A003056 (A163236 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132679.P5559564618763734235

namespace A132679

/-- `eq[0, A087117(A003056(A163236(n)))]` -/
def P5559564618763734235.Spec : Prop :=
  ∀ n, (P5559564618763734235.a n : ℤ) = A132679 (n + 1)

end A132679

/-! ## A132679.P16319472630894134542

`eq[A038554(A048647(n)), A123108(n)]`
-/

namespace A132679.P16319472630894134542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A048647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132679.P16319472630894134542

namespace A132679

/-- `eq[A038554(A048647(n)), A123108(n)]` -/
def P16319472630894134542.Spec : Prop :=
  ∀ n, (P16319472630894134542.a n : ℤ) = A132679 (n + 1)

end A132679

/-!
# A132680: Number of ones in binary representation of odious numbers.

The programs for A132680, the canonical program `A132680.P17101137498062770525` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132680 has offset 1).

The definition of A132680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132680.P17101137498062770525

`A000120(A000069(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A132680

/-- `A000120(A000069(n+1))` -/
def P17101137498062770525.Spec : Prop :=
  ∀ n, P17101137498062770525.a n = A132680 (n + 1)

theorem P17101137498062770525.correct : P17101137498062770525.Spec := by
  intro n
  simp only [A132680, Nat.add_sub_cancel]

end A132680

/-! ## A132680.P3577652194484556219

`or(1, ∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A132680.P3577652194484556219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132680.P3577652194484556219

namespace A132680

/-- `or(1, ∑[∑{e}[xor(n, -n), 2-#]])` -/
def P3577652194484556219.Spec : Prop :=
  ∀ n, P3577652194484556219.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P14763269485821235389

`or(1, val(n+1, 2)+n-∑[val(n+1, 2)])`
-/

namespace A132680.P14763269485821235389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)))

end

end A132680.P14763269485821235389

namespace A132680

/-- `or(1, val(n+1, 2)+n-∑[val(n+1, 2)])` -/
def P14763269485821235389.Spec : Prop :=
  ∀ n, P14763269485821235389.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P1751812174339234329

`or(1, A000120(n))`
-/

namespace A132680.P1751812174339234329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000120 n)

end

end A132680.P1751812174339234329

namespace A132680

/-- `or(1, A000120(n))` -/
def P1751812174339234329.Spec : Prop :=
  ∀ n, P1751812174339234329.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P8309134892667928144

`or(1, log2(A001316(n)))`
-/

namespace A132680.P8309134892667928144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ)))

end

end A132680.P8309134892667928144

namespace A132680

/-- `or(1, log2(A001316(n)))` -/
def P8309134892667928144.Spec : Prop :=
  ∀ n, P8309134892667928144.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P3695982385167845472

`or(1, ∑[A088705(n)])`
-/

namespace A132680.P3695982385167845472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132680.P3695982385167845472

namespace A132680

/-- `or(1, ∑[A088705(n)])` -/
def P3695982385167845472.Spec : Prop :=
  ∀ n, P3695982385167845472.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P15639302135530454185

`or(1, val(A102377(n), 2))`
-/

namespace A132680.P15639302135530454185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.valuation (A102377 n).toNat 2)

end

end A132680.P15639302135530454185

namespace A132680

/-- `or(1, val(A102377(n), 2))` -/
def P15639302135530454185.Spec : Prop :=
  ∀ n, (P15639302135530454185.a n : ℤ) = A132680 (n + 1)

end A132680

/-! ## A132680.P17367482441204988844

`or(1, val(A160713(n), 2))`
-/

namespace A132680.P17367482441204988844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.valuation (A160713 n).toNat 2)

end

end A132680.P17367482441204988844

namespace A132680

/-- `or(1, val(A160713(n), 2))` -/
def P17367482441204988844.Spec : Prop :=
  ∀ n, (P17367482441204988844.a n : ℤ) = A132680 (n + 1)

end A132680

/-! ## A132680.P11127731181735132185

`or(1, val(A048883(n), 3))`
-/

namespace A132680.P11127731181735132185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.valuation (A048883 n).toNat 3)

end

end A132680.P11127731181735132185

namespace A132680

/-- `or(1, val(A048883(n), 3))` -/
def P11127731181735132185.Spec : Prop :=
  ∀ n, (P11127731181735132185.a n : ℤ) = A132680 (n + 1)

end A132680

/-! ## A132680.P1056935953235340486

`or(1, n-A011371(n))`
-/

namespace A132680.P1056935953235340486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - A011371 n)

end

end A132680.P1056935953235340486

namespace A132680

/-- `or(1, n-A011371(n))` -/
def P1056935953235340486.Spec : Prop :=
  ∀ n, P1056935953235340486.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P16733450046838951170

`val(A292441(n)², 2)+1`
-/

namespace A132680.P16733450046838951170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A292441 n ^ 2).toNat 2 + 1

end

end A132680.P16733450046838951170

namespace A132680

/-- `val(A292441(n)², 2)+1` -/
def P16733450046838951170.Spec : Prop :=
  ∀ n, (P16733450046838951170.a n : ℤ) = A132680 (n + 1)

end A132680

/-! ## A132680.P758060878151576215

`or(1, log2(A060632(2*n)))`
-/

namespace A132680.P758060878151576215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (Real.logb 2 (A060632 (2 * n) : ℝ)))

end

end A132680.P758060878151576215

namespace A132680

/-- `or(1, log2(A060632(2*n)))` -/
def P758060878151576215.Spec : Prop :=
  ∀ n, P758060878151576215.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P14886719670765185539

`or(1, A063787(n+1)-1)`
-/

namespace A132680.P14886719670765185539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063787 (n + 1) - 1)

end

end A132680.P14886719670765185539

namespace A132680

/-- `or(1, A063787(n+1)-1)` -/
def P14886719670765185539.Spec : Prop :=
  ∀ n, P14886719670765185539.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P12833280030040182079

`A109613(A000120(n))`
-/

namespace A132680.P12833280030040182079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A000120 n).toNat

end

end A132680.P12833280030040182079

namespace A132680

/-- `A109613(A000120(n))` -/
def P12833280030040182079.Spec : Prop :=
  ∀ n, P12833280030040182079.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P13378833757712174726

`or(1, A001222(A071044(n)))`
-/

namespace A132680.P13378833757712174726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001222 (A071044 n).toNat)

end

end A132680.P13378833757712174726

namespace A132680

/-- `or(1, A001222(A071044(n)))` -/
def P13378833757712174726.Spec : Prop :=
  ∀ n, P13378833757712174726.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P17425681692024086985

`A010059(n)+A000120(n)`
-/

namespace A132680.P17425681692024086985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n + A000120 n

end

end A132680.P17425681692024086985

namespace A132680

/-- `A010059(n)+A000120(n)` -/
def P17425681692024086985.Spec : Prop :=
  ∀ n, P17425681692024086985.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P2566018405937117573

`A109613(A063787(n+1)-1)`
-/

namespace A132680.P2566018405937117573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A063787 (n + 1) - 1).toNat

end

end A132680.P2566018405937117573

namespace A132680

/-- `A109613(A063787(n+1)-1)` -/
def P2566018405937117573.Spec : Prop :=
  ∀ n, P2566018405937117573.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P5326279629660542575

`A004525(2*A000120(n)+1)`
-/

namespace A132680.P5326279629660542575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A000120 n + 1).toNat

end

end A132680.P5326279629660542575

namespace A132680

/-- `A004525(2*A000120(n)+1)` -/
def P5326279629660542575.Spec : Prop :=
  ∀ n, P5326279629660542575.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P6829102726463838898

`or(1, A001222(A001316(2*n)))`
-/

namespace A132680.P6829102726463838898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001222 (A001316 (2 * n)).toNat)

end

end A132680.P6829102726463838898

namespace A132680

/-- `or(1, A001222(A001316(2*n)))` -/
def P6829102726463838898.Spec : Prop :=
  ∀ n, P6829102726463838898.a n = A132680 (n + 1)

end A132680

/-! ## A132680.P1038889389639007819

`A000069(n+1)-A005187(n)`
-/

namespace A132680.P1038889389639007819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) - A005187 n

end

end A132680.P1038889389639007819

namespace A132680

/-- `A000069(n+1)-A005187(n)` -/
def P1038889389639007819.Spec : Prop :=
  ∀ n, P1038889389639007819.a n = A132680 (n + 1)

end A132680

/-!
# A132681: Infinitesimal generator matrix for a diagonally-shifted Pascal matrix, binomial(n+m,k+m), for m=1, related to Laguerre(n,x,m).

The programs for A132681, the canonical program `A132681.P1020153752142941773` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132681 has offset 0).

The definition of A132681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132681.P8536120696130819986

`Δ[C(round(sqrt(2*(n+2))), 2)]`
-/

namespace A132681.P8536120696130819986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 2) : ℝ))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132681.P8536120696130819986

namespace A132681

/-- `Δ[C(round(sqrt(2*(n+2))), 2)]` -/
def P8536120696130819986.Spec : Prop :=
  ∀ n, P8536120696130819986.a n = A132681 n

end A132681

/-! ## A132681.P17807441113393704170

`∑[char[∑[n]]]*char[∑[n]-2]`
-/

namespace A132681.P17807441113393704170
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f4 j = (n : ℤ) then 1 else 0)

end

end A132681.P17807441113393704170

namespace A132681

/-- `∑[char[∑[n]]]*char[∑[n]-2]` -/
def P17807441113393704170.Spec : Prop :=
  ∀ n, (P17807441113393704170.a n : ℤ) = A132681 n

end A132681

/-! ## A132681.P1094609629086074396

`and(-char[∑[n]-2], ∑[char[∑[n]]])`
-/

namespace A132681.P1094609629086074396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A132681.P1094609629086074396

namespace A132681

/-- `and(-char[∑[n]-2], ∑[char[∑[n]]])` -/
def P1094609629086074396.Spec : Prop :=
  ∀ n, P1094609629086074396.a n = A132681 n

end A132681

/-! ## A132681.P16797622382803209404

`lcm(log2(char[∑[n]-2]+1), ∑[char[∑[n]]])`
-/

namespace A132681.P16797622382803209404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℝ))) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A132681.P16797622382803209404

namespace A132681

/-- `lcm(log2(char[∑[n]-2]+1), ∑[char[∑[n]]])` -/
def P16797622382803209404.Spec : Prop :=
  ∀ n, (P16797622382803209404.a n : ℤ) = A132681 n

end A132681

/-! ## A132681.P1020153752142941773

`A127648(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132681

/-- `A127648(n+1)` -/
def P1020153752142941773.Spec : Prop :=
  ∀ n, P1020153752142941773.a n = A132681 n

theorem P1020153752142941773.correct : P1020153752142941773.Spec := by
  intro n
  simp only [A132681]

end A132681

/-! ## A132681.P7684048433695398765

`ceil(sqrt(A132710(n)))`
-/

namespace A132681.P7684048433695398765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A132710 n : ℝ)⌉

end

end A132681.P7684048433695398765

namespace A132681

/-- `ceil(sqrt(A132710(n)))` -/
def P7684048433695398765.Spec : Prop :=
  ∀ n, P7684048433695398765.a n = A132681 n

end A132681

/-! ## A132681.P1914096789688846644

`1-Δ[A002260(n+2)]`
-/

namespace A132681.P1914096789688846644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A132681.P1914096789688846644

namespace A132681

/-- `1-Δ[A002260(n+2)]` -/
def P1914096789688846644.Spec : Prop :=
  ∀ n, P1914096789688846644.a n = A132681 n

end A132681

/-! ## A132681.P15321204940236095491

`A047878(A131431(n+1))`
-/

namespace A132681.P15321204940236095491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A131431 (n + 1)).toNat

end

end A132681.P15321204940236095491

namespace A132681

/-- `A047878(A131431(n+1))` -/
def P15321204940236095491.Spec : Prop :=
  ∀ n, P15321204940236095491.a n = A132681 n

end A132681

/-! ## A132681.P2974159565358132810

`A097806(n)-A132013(n)`
-/

namespace A132681.P2974159565358132810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n - A132013 n

end

end A132681.P2974159565358132810

namespace A132681

/-- `A097806(n)-A132013(n)` -/
def P2974159565358132810.Spec : Prop :=
  ∀ n, P2974159565358132810.a n = A132681 n

end A132681

/-! ## A132681.P5328041069877841341

`A134082(n)-A196389(n)`
-/

namespace A132681.P5328041069877841341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 n - A196389 n

end

end A132681.P5328041069877841341

namespace A132681

/-- `A134082(n)-A196389(n)` -/
def P5328041069877841341.Spec : Prop :=
  ∀ n, P5328041069877841341.a n = A132681 n

end A132681

/-! ## A132681.P15243795249052234777

`A196389(n)-A251635(n)`
-/

namespace A132681.P15243795249052234777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 n - A251635 n

end

end A132681.P15243795249052234777

namespace A132681

/-- `A196389(n)-A251635(n)` -/
def P15243795249052234777.Spec : Prop :=
  ∀ n, P15243795249052234777.a n = A132681 n

end A132681

/-! ## A132681.P17077052912643453378

`A132710(n)/A004070(n)`
-/

namespace A132681.P17077052912643453378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132710 n : ℚ) / (A004070 n : ℚ)

end

end A132681.P17077052912643453378

namespace A132681

/-- `A132710(n)/A004070(n)` -/
def P17077052912643453378.Spec : Prop :=
  ∀ n, P17077052912643453378.a n = (A132681 n : ℚ)

end A132681

/-! ## A132681.P9026043862765251489

`A132710(n)/A007318(n)`
-/

namespace A132681.P9026043862765251489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132710 n : ℚ) / (A007318 n : ℚ)

end

end A132681.P9026043862765251489

namespace A132681

/-- `A132710(n)/A007318(n)` -/
def P9026043862765251489.Spec : Prop :=
  ∀ n, P9026043862765251489.a n = (A132681 n : ℚ)

end A132681

/-! ## A132681.P8692956921754450971

`A132710(n)/A026725(n)`
-/

namespace A132681.P8692956921754450971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132710 n : ℚ) / (A026725 n : ℚ)

end

end A132681.P8692956921754450971

namespace A132681

/-- `A132710(n)/A026725(n)` -/
def P8692956921754450971.Spec : Prop :=
  ∀ n, P8692956921754450971.a n = (A132681 n : ℚ)

end A132681

/-! ## A132681.P3448309411558410199

`A132710(n)/A026736(n)`
-/

namespace A132681.P3448309411558410199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132710 n : ℚ) / (A026736 n : ℚ)

end

end A132681.P3448309411558410199

namespace A132681

/-- `A132710(n)/A026736(n)` -/
def P3448309411558410199.Spec : Prop :=
  ∀ n, P3448309411558410199.a n = (A132681 n : ℚ)

end A132681

/-! ## A132681.P18331377307897709974

`A132710(n)/A026758(n)`
-/

namespace A132681.P18331377307897709974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132710 n : ℚ) / (A026758 n : ℚ)

end

end A132681.P18331377307897709974

namespace A132681

/-- `A132710(n)/A026758(n)` -/
def P18331377307897709974.Spec : Prop :=
  ∀ n, P18331377307897709974.a n = (A132681 n : ℚ)

end A132681

/-! ## A132681.P4192991649877579938

`A132710(n)/A026769(n)`
-/

namespace A132681.P4192991649877579938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132710 n : ℚ) / (A026769 n : ℚ)

end

end A132681.P4192991649877579938

namespace A132681

/-- `A132710(n)/A026769(n)` -/
def P4192991649877579938.Spec : Prop :=
  ∀ n, P4192991649877579938.a n = (A132681 n : ℚ)

end A132681

/-! ## A132681.P15883549430890181834

`A132710(n)/A027948(n)`
-/

namespace A132681.P15883549430890181834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132710 n : ℚ) / (A027948 n : ℚ)

end

end A132681.P15883549430890181834

namespace A132681

/-- `A132710(n)/A027948(n)` -/
def P15883549430890181834.Spec : Prop :=
  ∀ n, P15883549430890181834.a n = (A132681 n : ℚ)

end A132681

/-! ## A132681.P10500570666900753277

`A132710(n)/A037027(n)`
-/

namespace A132681.P10500570666900753277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132710 n : ℚ) / (A037027 n : ℚ)

end

end A132681.P10500570666900753277

namespace A132681

/-- `A132710(n)/A037027(n)` -/
def P10500570666900753277.Spec : Prop :=
  ∀ n, P10500570666900753277.a n = (A132681 n : ℚ)

end A132681

/-! ## A132681.P4040159819455001094

`A141611(n)%A134231(n+1)`
-/

namespace A132681.P4040159819455001094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141611 n) (A134231 (n + 1))

end

end A132681.P4040159819455001094

namespace A132681

/-- `A141611(n)%A134231(n+1)` -/
def P4040159819455001094.Spec : Prop :=
  ∀ n, P4040159819455001094.a n = A132681 n

end A132681

/-!
# A132683: a(n) = binomial(2^n + n, n).

The programs for A132683, there is no canonical definition to state claims against.
-/

/-! ## A132683.P2872231699051454465

`C(2^n+n, n)`
-/

namespace A132683.P2872231699051454465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + n) n

end

end A132683.P2872231699051454465

/-! ## A132683.P2900338644898329638

`or(1, C(xor(n, and(-2, 2^n)), n))`
-/

namespace A132683.P2900338644898329638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose (Int.xor (n : ℤ) (Int.land (-2) (2 ^ n : ℤ))).toNat n)

end

end A132683.P2900338644898329638

/-! ## A132683.P2032442816168666604

`or(1, C(A006127(n), n))`
-/

namespace A132683.P2032442816168666604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose (A006127 n).toNat n)

end

end A132683.P2032442816168666604

/-! ## A132683.P890396657405248589

`record[C(A133545(n+1), A301443(n+1))]`
-/

namespace A132683.P890396657405248589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133545 (n + 1)).toNat (A301443 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132683.P890396657405248589

/-! ## A132683.P6654698411245224210

`record[C(A120511(n+1), 2*n)]`
-/

namespace A132683.P6654698411245224210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A120511 (n + 1)).toNat (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132683.P6654698411245224210

/-!
# A132684: a(n) = binomial(2^n + n + 1, n).

The programs for A132684, there is no canonical definition to state claims against.
-/

/-! ## A132684.P6353504609022853488

`C(2^n+1+n, n)`
-/

namespace A132684.P6353504609022853488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + 1 + n) n

end

end A132684.P6353504609022853488

/-! ## A132684.P277593203978961650

`∏{e}[2^n, C(A005126(n), #)]`
-/

namespace A132684.P277593203978961650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (A005126 n).toNat (Nat.factorization (f1 n) p)

end

end A132684.P277593203978961650

/-! ## A132684.P14747226589248550648

`lcm(C(A000225(n)+2+n, n), A346487(n+1))`
-/

namespace A132684.P14747226589248550648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose (A000225 n + 2 + (n : ℤ)).toNat n : ℤ) (A346487 (n + 1))

end

end A132684.P14747226589248550648

/-! ## A132684.P9066157427750904301

`record[C(∏{e}[n+1, #+1]+1+n, val(n+1, 2))]`
-/

namespace A132684.P9066157427750904301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + 1 + n) (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132684.P9066157427750904301

/-! ## A132684.P18393776196877117020

`record[C(A233272(n), n+1)]`
-/

namespace A132684.P18393776196877117020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A233272 n).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132684.P18393776196877117020

/-!
# A132685: a(n) = binomial(2^n + 2*n, n).

The programs for A132685, there is no canonical definition to state claims against.
-/

/-! ## A132685.P5344720718179652360

`C(2^n+2*n, n)`
-/

namespace A132685.P5344720718179652360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + 2 * n) n

end

end A132685.P5344720718179652360

/-! ## A132685.P9767398659265997651

`A326684(n)+C(A100314(n), n)`
-/

namespace A132685.P9767398659265997651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + (Nat.choose (A100314 n).toNat n : ℤ)

end

end A132685.P9767398659265997651

/-! ## A132685.P8937454709304398249

`A217155(n+1)+C(A100314(n), n)`
-/

namespace A132685.P8937454709304398249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217155 (n + 1) + (Nat.choose (A100314 n).toNat n : ℤ)

end

end A132685.P8937454709304398249

/-! ## A132685.P13152130459291316165

`record[C(∑{p}[n+1, #*val(n+1, #)]+1+n, val(n+1, 2))]`
-/

namespace A132685.P13152130459291316165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p + 1 + n) (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132685.P13152130459291316165

/-! ## A132685.P9055768736160595271

`record[C(A075254(n+1), A007814(n+1))]`
-/

namespace A132685.P9055768736160595271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075254 (n + 1)).toNat (A007814 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132685.P9055768736160595271

/-!
# A132686: a(n) = binomial(2^n + 2*n + 1, n).

The programs for A132686, there is no canonical definition to state claims against.
-/

/-! ## A132686.P12563754179686157329

`C(Δ[2^n+n²], n)`
-/

namespace A132686.P12563754179686157329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n

end

end A132686.P12563754179686157329

/-! ## A132686.P11226580760249638714

`record[C(A016724(n), A001281(n))]`
-/

namespace A132686.P11226580760249638714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016724 n).toNat (A001281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132686.P11226580760249638714

/-! ## A132686.P17067371385163681840

`record[C(A016724(n), A004526(n))]`
-/

namespace A132686.P17067371385163681840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016724 n).toNat (A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132686.P17067371385163681840

/-! ## A132686.P2328959316194632520

`record[C(A016724(n), A025480(n))]`
-/

namespace A132686.P2328959316194632520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016724 n).toNat (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132686.P2328959316194632520

/-! ## A132686.P235097671384468415

`record[C(A016724(n), A142150(n))]`
-/

namespace A132686.P235097671384468415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016724 n).toNat (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132686.P235097671384468415

/-!
# A132687: a(n) = binomial(2^n + 3*n - 1, n).

The programs for A132687, there is no canonical definition to state claims against.
-/

/-! ## A132687.P14976217215771905547

`C(2^n+3*n-1, n)`
-/

namespace A132687.P14976217215771905547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 ^ n : ℤ) + ((3 * n : ℤ) - 1)).toNat n

end

end A132687.P14976217215771905547

/-! ## A132687.P5540226609560993821

`C(A132074(n), n)^ceil(sin(n)²)`
-/

namespace A132687.P5540226609560993821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A132074 n).toNat n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A132687.P5540226609560993821

/-! ## A132687.P8752214234861006098

`A104144(A008611(n))+C(A132074(n), n)`
-/

namespace A132687.P8752214234861006098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A008611 n).toNat + (Nat.choose (A132074 n).toNat n : ℤ)

end

end A132687.P8752214234861006098

/-!
# A132688: a(n) = binomial(2^n + 3*n, n).

The programs for A132688, there is no canonical definition to state claims against.
-/

/-! ## A132688.P18006947080460615927

`C(2^n+3*n, n)`
-/

namespace A132688.P18006947080460615927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + 3 * n) n

end

end A132688.P18006947080460615927

/-! ## A132688.P17669644317171748316

`round(sqrt(C(A008486(n)+2^n, n)²+1))`
-/

namespace A132688.P17669644317171748316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (A008486 n + (2 ^ n : ℤ)).toNat n ^ 2 + 1 : ℝ))

end

end A132688.P17669644317171748316

/-! ## A132688.P6211141631931399932

`A054142(eq[A054124(n), A114327(n)])`
-/

namespace A132688.P6211141631931399932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A132688.P6211141631931399932

/-!
# A132689: a(n) = binomial(2^n + 3*n + 1, n).

The programs for A132689, there is no canonical definition to state claims against.
-/

/-! ## A132689.P4591556607894373448

`C(2^n+3*n+1, n)`
-/

namespace A132689.P4591556607894373448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + (3 * n + 1)) n

end

end A132689.P4591556607894373448

/-!
# A132691: Column 0 of triangle A132690.

The programs for A132691, there is no canonical definition to state claims against.
-/

/-! ## A132691.P3701529663150576371

`A132690(∑[n])`
-/

namespace A132691.P3701529663150576371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132691.P3701529663150576371

/-! ## A132691.P11416395681387778613

`and(-1, A132690(A000217(n)))`
-/

namespace A132691.P11416395681387778613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132690 (A000217 n).toNat)

end

end A132691.P11416395681387778613

/-! ## A132691.P4536036961028192500

`A326591(n)+A132690(floor((2*n+1)²/8))`
-/

namespace A132691.P4536036961028192500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326591 n + A132690 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat

end

end A132691.P4536036961028192500

/-! ## A132691.P381651173050543437

`A132690(A000217(n))+A025444(n)`
-/

namespace A132691.P381651173050543437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (A000217 n).toNat + A025444 n

end

end A132691.P381651173050543437

/-! ## A132691.P8388948339702095103

`A132690(A000217(n))+A059995(n)`
-/

namespace A132691.P8388948339702095103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (A000217 n).toNat + A059995 n

end

end A132691.P8388948339702095103

/-!
# A132692: Column 1 of triangle A132690.

The programs for A132692, there is no canonical definition to state claims against.
-/

/-! ## A132692.P5765850918115015346

`A132690(∑[n+1]+1)`
-/

namespace A132692.P5765850918115015346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A132692.P5765850918115015346

/-! ## A132692.P3486868428884865664

`and(-1, A132690(A134869(n+1)))`
-/

namespace A132692.P3486868428884865664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132690 (A134869 (n + 1)).toNat)

end

end A132692.P3486868428884865664

/-! ## A132692.P9092026666212433770

`A132690(A134869(n+1))+A025444(n)`
-/

namespace A132692.P9092026666212433770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (A134869 (n + 1)).toNat + A025444 n

end

end A132692.P9092026666212433770

/-! ## A132692.P16084898787919208611

`A132690(A134869(n+1))+A059995(n)`
-/

namespace A132692.P16084898787919208611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (A134869 (n + 1)).toNat + A059995 n

end

end A132692.P16084898787919208611

/-! ## A132692.P2001676949260310818

`A137579(n)+A132690(A134869(n+1))`
-/

namespace A132692.P2001676949260310818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 n + A132690 (A134869 (n + 1)).toNat

end

end A132692.P2001676949260310818

/-!
# A132693: Column 2 of triangle A132690.

The programs for A132693, there is no canonical definition to state claims against.
-/

/-! ## A132693.P5113673727878534960

`A132690(∑[n+2]+3)`
-/

namespace A132693.P5113673727878534960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A132693.P5113673727878534960

/-! ## A132693.P4046495916847925502

`and(-1, A132690(A340266(n+1)))`
-/

namespace A132693.P4046495916847925502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132690 (A340266 (n + 1)).toNat)

end

end A132693.P4046495916847925502

/-! ## A132693.P13451559619824710995

`A132690(A340266(n+1))+A025444(n)`
-/

namespace A132693.P13451559619824710995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (A340266 (n + 1)).toNat + A025444 n

end

end A132693.P13451559619824710995

/-! ## A132693.P11503382376026159521

`A132690(A340266(n+1))+A059995(n)`
-/

namespace A132693.P11503382376026159521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (A340266 (n + 1)).toNat + A059995 n

end

end A132693.P11503382376026159521

/-!
# A132694: Column 3 of triangle A132690.

The programs for A132694, there is no canonical definition to state claims against.
-/

/-! ## A132694.P10677766335951830544

`A132690(A167614(n+2))`
-/

namespace A132694.P10677766335951830544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (A167614 (n + 2)).toNat

end

end A132694.P10677766335951830544

/-! ## A132694.P17021390547361726540

`A132690(A141214(n)+6)`
-/

namespace A132694.P17021390547361726540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (A141214 n + 6).toNat

end

end A132694.P17021390547361726540

/-! ## A132694.P8709715021895024386

`A132690(A052905(n)+8)`
-/

namespace A132694.P8709715021895024386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132690 (A052905 n + 8).toNat

end

end A132694.P8709715021895024386

/-!
# A132695: G.f. A(x) satisfies: a(n+1) = [x^n] A(x)^(2^n) for n>=0, with a(0)=1.

The programs for A132695, there is no canonical definition to state claims against.
-/

/-! ## A132695.P15705841562196456961

`(5*n*a(n-1))%(4^a(n-1))` with `a(0)=1`
-/

namespace A132695.P15705841562196456961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * (n * a (n - 1)) % 4 ^ a (n - 1)

end

end A132695.P15705841562196456961

