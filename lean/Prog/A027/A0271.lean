import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A027100: Diagonal sum of left justified array T given by A027082.

The programs for A027100, there is no canonical definition to state claims against.
-/

/-! ## A027100.P5462793591801500830

`A130527(A027131(n))`
-/

namespace A027100.P5462793591801500830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130527 (A027131 n).toNat

end

end A027100.P5462793591801500830

/-! ## A027100.P1571709781672139352

`A364612(n)+A081129(A364585(n))`
-/

namespace A027100.P1571709781672139352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364612 n + A081129 (A364585 n).toNat

end

end A027100.P1571709781672139352

/-! ## A027100.P1095170328520275047

`A054521(A158187(3*n))+A008484(2*(n+1))`
-/

namespace A027100.P1095170328520275047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A158187 (3 * n)).toNat + A008484 (2 * (n + 1))

end

end A027100.P1095170328520275047

/-!
# A027101: a(n) = diagonal sum of right justified array T given by A027082.

The programs for A027101, there is no canonical definition to state claims against.
-/

/-! ## A027101.P224139622791543765

`A002024(A288939(n!))`
-/

namespace A027101.P224139622791543765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A288939 (Nat.factorial n)).toNat

end

end A027101.P224139622791543765

/-! ## A027101.P16230660927680022441

`A108971(A339618(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A027101.P16230660927680022441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A108971 (A339618 (a (n - 1)).toNat).toNat

end

end A027101.P16230660927680022441

/-! ## A027101.P2983052256803144471

`A266350(A192512((2^n-gcd(2, n))²))`
-/

namespace A027101.P2983052256803144471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266350 (A192512 (((2 ^ n : ℤ) - (Nat.gcd 2 n : ℤ)) ^ 2).toNat).toNat

end

end A027101.P2983052256803144471

/-!
# A027102: a(n) = greatest number in row n of array T given by A027082.

The programs for A027102, there is no canonical definition to state claims against.
-/

/-! ## A027102.P17385471625629223030

`A087834(A150215(n))`
-/

namespace A027102.P17385471625629223030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A150215 n).toNat

end

end A027102.P17385471625629223030

/-! ## A027102.P11478273391851168193

`A104857(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A027102.P11478273391851168193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A104857 (a (n - 1)).toNat

end

end A027102.P11478273391851168193

/-! ## A027102.P5192968454365870211

`A087753(A151404(n))`
-/

namespace A027102.P5192968454365870211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087753 (A151404 n).toNat

end

end A027102.P5192968454365870211

/-!
# A027103: a(n) = self-convolution of row n of array T given by A027082.

The programs for A027103, there is no canonical definition to state claims against.
-/

/-! ## A027103.P14426675116811154088

`or(1, A194640(A077821(n)))`
-/

namespace A027103.P14426675116811154088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A194640 (A077821 n).toNat)

end

end A027103.P14426675116811154088

/-! ## A027103.P153823900630011877

`eq[A258367(n+2), A309384(n)]`
-/

namespace A027103.P153823900630011877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258367 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027103.P153823900630011877

/-!
# A027104: a(n) = Sum_{k=0..n} T(n,k) * T(n,2n-k), with T given by A027082.

The programs for A027104, there is no canonical definition to state claims against.
-/

/-! ## A027104.P9780651423592500126

`A103221(A303647(n+1)+A195339(n))`
-/

namespace A027104.P9780651423592500126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A303647 (n + 1) + A195339 n).toNat

end

end A027104.P9780651423592500126

/-! ## A027104.P10093195208550122507

`A103221(A303647(n+1)+∑[A108368(n+1)])`
-/

namespace A027104.P10093195208550122507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A303647 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027104.P10093195208550122507

/-! ## A027104.P3178790747655455576

`A103221(A195339(n)+2*A195339(n)-A301483(n+1))`
-/

namespace A027104.P3178790747655455576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A195339 n + (2 * A195339 n - A301483 (n + 1))).toNat

end

end A027104.P3178790747655455576

/-!
# A027105: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,2n-k), with T given by A027082.

The programs for A027105, there is no canonical definition to state claims against.
-/

/-! ## A027105.P8743620929511112125

`A027103(n+1)-A027104(n+1)`
-/

namespace A027105.P8743620929511112125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027103 (n + 1) - A027104 (n + 1)

end

end A027105.P8743620929511112125

/-! ## A027105.P14156013445800769221

`A027103(C(2, n+1)+n+1)%A027104(n+1)`
-/

namespace A027105.P14156013445800769221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027103 (Nat.choose 2 (n + 1) + (n + 1))) (A027104 (n + 1))

end

end A027105.P14156013445800769221

/-! ## A027105.P11884605898131659411

`A027103(A000027(n+1))%A027104(n+1)`
-/

namespace A027105.P11884605898131659411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027103 (A000027 (n + 1)).toNat) (A027104 (n + 1))

end

end A027105.P11884605898131659411

/-! ## A027105.P7144881403162296188

`A027103(A028310(n)+1)%A027104(n+1)`
-/

namespace A027105.P7144881403162296188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027103 (A028310 n + 1).toNat) (A027104 (n + 1))

end

end A027105.P7144881403162296188

/-! ## A027105.P16193060161307881747

`A027103(A000007(n)+1+n)%A027104(n+1)`
-/

namespace A027105.P16193060161307881747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027103 (A000007 n + 1 + (n : ℤ)).toNat) (A027104 (n + 1))

end

end A027105.P16193060161307881747

/-!
# A027106: a(n) = Sum_{k=0..2n} (k+1) * A027082(n, k).

The programs for A027106, there is no canonical definition to state claims against.
-/

/-! ## A027106.P58797007299624022

`A324750(A325548(n)+A016789(3*n))`
-/

namespace A027106.P58797007299624022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 (A325548 n + A016789 (3 * n)).toNat

end

end A027106.P58797007299624022

/-!
# A027107: a(n) = Sum_{k=0..2n} (k+1) * A027082(n, 2n-k).

The programs for A027107, the canonical program `A027107.P14850506478336576988` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027107 has offset 0).

The definition of A027107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027107.P16778851292589090352

`ogf((1+2x-x^2)/(1-4x+3x^2))`
-/

namespace A027107.P16778851292589090352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -4, 3] n

end

end A027107.P16778851292589090352

namespace A027107

/-- `ogf((1+2x-x^2)/(1-4x+3x^2))` -/
def P16778851292589090352.Spec : Prop :=
  ∀ n, P16778851292589090352.a n = A027107 n

end A027107

/-! ## A027107.P14850506478336576988

`2+3*a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027107

/-- `2+3*a(n-1)` -/
def P14850506478336576988.Spec : Prop :=
  ∀ n, (P14850506478336576988.a n : ℤ) = A027107 n

theorem P14850506478336576988.correct : P14850506478336576988.Spec := by
  intro n
  simp only [A027107]

end A027107

/-! ## A027107.P4825157667988044105

`∑[3*a(n-1)]` with `a(0)=1, a(1)=5, a(2)=14`
-/

namespace A027107.P4825157667988044105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 14] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027107.P4825157667988044105

namespace A027107

/-- `∑[3*a(n-1)]` -/
def P4825157667988044105.Spec : Prop :=
  ∀ n, (P4825157667988044105.a n : ℤ) = A027107 n

end A027107

/-! ## A027107.P13038006652975227690

`record[3*a(n-2)]-1` with `a(0)=2, a(1)=7`
-/

namespace A027107.P13038006652975227690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1

end

end A027107.P13038006652975227690

namespace A027107

/-- `record[3*a(n-2)]-1` -/
def P13038006652975227690.Spec : Prop :=
  ∀ n, P13038006652975227690.a n = A027107 n

end A027107

/-! ## A027107.P9950204244934955780

`5-3*(1-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A027107.P9950204244934955780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 - 3 * (1 - a (n - 1))

end

end A027107.P9950204244934955780

namespace A027107

/-- `5-3*(1-a(n-1))` -/
def P9950204244934955780.Spec : Prop :=
  ∀ n, P9950204244934955780.a n = A027107 n

end A027107

/-! ## A027107.P3118397088157034559

`a(n-1)/cot(atan(3))+2` with `a(0)=1, a(1)=6`
-/

namespace A027107.P3118397088157034559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) + 2

end

end A027107.P3118397088157034559

namespace A027107

/-- `a(n-1)/cot(atan(3))+2` -/
def P3118397088157034559.Spec : Prop :=
  ∀ n, P3118397088157034559.a n = (A027107 n : ℝ)

end A027107

/-! ## A027107.P3740872109278307741

`Δ[3^n]-1+floor(3^(n-1))`
-/

namespace A027107.P3740872109278307741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A027107.P3740872109278307741

namespace A027107

/-- `Δ[3^n]-1+floor(3^(n-1))` -/
def P3740872109278307741.Spec : Prop :=
  ∀ n, P3740872109278307741.a n = A027107 n

end A027107

/-! ## A027107.P299650933431906765

`record[A072985(n+1)-1]`
-/

namespace A027107.P299650933431906765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072985 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027107.P299650933431906765

namespace A027107

/-- `record[A072985(n+1)-1]` -/
def P299650933431906765.Spec : Prop :=
  ∀ n, P299650933431906765.a n = A027107 n

end A027107

/-! ## A027107.P1501214591097789151

`xor(A057427(n), A082541(n))`
-/

namespace A027107.P1501214591097789151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A082541 n)

end

end A027107.P1501214591097789151

namespace A027107

/-- `xor(A057427(n), A082541(n))` -/
def P1501214591097789151.Spec : Prop :=
  ∀ n, P1501214591097789151.a n = A027107 n

end A027107

/-!
# A027108: a(n) = T(n,n+1) + T(n,n+2) + ... + T(n,2n), T given by A027082.

The programs for A027108, there is no canonical definition to state claims against.
-/

/-! ## A027108.P4525454917938013924

`A027098(n+1)-A000213(n+1)`
-/

namespace A027108.P4525454917938013924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027098 (n + 1) - A000213 (n + 1)

end

end A027108.P4525454917938013924

/-! ## A027108.P16627867004940637116

`A027098(n+1)-A027082(A008130(3*n+4))`
-/

namespace A027108.P16627867004940637116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027098 (n + 1) - A027082 (A008130 (3 * n + 4)).toNat

end

end A027108.P16627867004940637116

/-!
# A027109: a(n) = Sum_{k=0..n} T(n,k) * T(n,n+k), with T given by A027082.

The programs for A027109, there is no canonical definition to state claims against.
-/

/-! ## A027109.P11339944890004182145

`A091410(A098504(n))+A085939(n)`
-/

namespace A027109.P11339944890004182145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091410 (A098504 n).toNat + A085939 n

end

end A027109.P11339944890004182145

/-! ## A027109.P8094226169045917262

`A289493(A026782(n+1))-A002836(n)`
-/

namespace A027109.P8094226169045917262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A026782 (n + 1)).toNat - A002836 n

end

end A027109.P8094226169045917262

/-!
# A027110: a(n) = Sum_{k=0..2n-1} T(n,k) * T(n,k+1), with T given by A027082.

The programs for A027110, there is no canonical definition to state claims against.
-/

/-! ## A027110.P4366094649511911374

`A108120(A181843(n+1)+A000322(3*(n+1)))`
-/

namespace A027110.P4366094649511911374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108120 (A181843 (n + 1) + A000322 (3 * (n + 1))).toNat

end

end A027110.P4366094649511911374

/-!
# A027113: Triangular array T given by rows: T(n,0)=1 for n >= 0, T(n,1)=1,T(n,2)=2 for n >= 1 and for n >= 2, T(n,k)=T(n-1,k-3)+T(n-1,k-2)+T(n-1,k-1) for 3<=k<=2n-1, T(n,2n)=T(n-1,2n-3)+T(n-1,2n-2).

The programs for A027113, there is no canonical definition to state claims against.
-/

/-! ## A027113.P7056478187566547889

`A188919(A187829(n+1)+A086161(n))`
-/

namespace A027113.P7056478187566547889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188919 (A187829 (n + 1) + A086161 n).toNat

end

end A027113.P7056478187566547889

/-! ## A027113.P6629534131247293077

`A188919(A187829(n+1)+A026405(n+1))`
-/

namespace A027113.P6629534131247293077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188919 (A187829 (n + 1) + A026405 (n + 1)).toNat

end

end A027113.P6629534131247293077

/-! ## A027113.P3644669056475663986

`A188919(A189663(n+1)+A187829(n+1))`
-/

namespace A027113.P3644669056475663986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188919 (A189663 (n + 1) + A187829 (n + 1)).toNat

end

end A027113.P3644669056475663986

/-! ## A027113.P5807085018847270949

`A188919(A086161(n)+A077168(n))`
-/

namespace A027113.P5807085018847270949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188919 (A086161 n + A077168 n).toNat

end

end A027113.P5807085018847270949

/-! ## A027113.P17340438416764524225

`A188919(A077168(n)+A026405(n+1))`
-/

namespace A027113.P17340438416764524225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188919 (A077168 n + A026405 (n + 1)).toNat

end

end A027113.P17340438416764524225

/-!
# A027114: a(n) = A027113(n, n+2).

The programs for A027114, the canonical program `A027114.P10403015371580633858` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027114 has offset 2).

The definition of A027114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027114.P15174448773471125234

`ogf((3+3x+2x^2)/(1-2x+x^4))`
-/

namespace A027114.P15174448773471125234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 2] [1, -2, 0, 0, 1] n

end

end A027114.P15174448773471125234

namespace A027114

/-- `ogf((3+3x+2x^2)/(1-2x+x^4))` -/
def P15174448773471125234.Spec : Prop :=
  ∀ n, P15174448773471125234.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P10403015371580633858

`∑[A047081(n+2)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027114

/-- `∑[A047081(n+2)]` -/
def P10403015371580633858.Spec : Prop :=
  ∀ n, P10403015371580633858.a n = A027114 (n + 2)

theorem P10403015371580633858.correct : P10403015371580633858.Spec := by
  intro n
  simp only [A027114, Nat.add_sub_cancel]

end A027114

/-! ## A027114.P2072213992884881886

`∑[A001590(n+5)]`
-/

namespace A027114.P2072213992884881886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027114.P2072213992884881886

namespace A027114

/-- `∑[A001590(n+5)]` -/
def P2072213992884881886.Spec : Prop :=
  ∀ n, P2072213992884881886.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P13086140302379860851

`A301787(n+1)-5`
-/

namespace A027114.P13086140302379860851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301787 (n + 1) - 5

end

end A027114.P13086140302379860851

namespace A027114

/-- `A301787(n+1)-5` -/
def P13086140302379860851.Spec : Prop :=
  ∀ n, P13086140302379860851.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P8285055017942012622

`A282718(n+4)-4`
-/

namespace A027114.P8285055017942012622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 (n + 4) - 4

end

end A027114.P8285055017942012622

namespace A027114

/-- `A282718(n+4)-4` -/
def P8285055017942012622.Spec : Prop :=
  ∀ n, P8285055017942012622.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P17833916314899291073

`A000073(n+6)-4`
-/

namespace A027114.P17833916314899291073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 6) - 4

end

end A027114.P17833916314899291073

namespace A027114

/-- `A000073(n+6)-4` -/
def P17833916314899291073.Spec : Prop :=
  ∀ n, P17833916314899291073.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P10872853880307134419

`∑[abs(A078042(n+2))]`
-/

namespace A027114.P10872853880307134419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078042 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027114.P10872853880307134419

namespace A027114

/-- `∑[abs(A078042(n+2))]` -/
def P10872853880307134419.Spec : Prop :=
  ∀ n, P10872853880307134419.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P11740645850288912992

`∑[A027053(n+2)+2]`
-/

namespace A027114.P11740645850288912992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027114.P11740645850288912992

namespace A027114

/-- `∑[A027053(n+2)+2]` -/
def P11740645850288912992.Spec : Prop :=
  ∀ n, P11740645850288912992.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P11968827029314724851

`∑[A308189(2*(n+2))]`
-/

namespace A027114.P11968827029314724851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027114.P11968827029314724851

namespace A027114

/-- `∑[A308189(2*(n+2))]` -/
def P11968827029314724851.Spec : Prop :=
  ∀ n, P11968827029314724851.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P2399478261615408756

`∑[A213816(2*(n+3))]`
-/

namespace A027114.P2399478261615408756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027114.P2399478261615408756

namespace A027114

/-- `∑[A213816(2*(n+3))]` -/
def P2399478261615408756.Spec : Prop :=
  ∀ n, P2399478261615408756.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P3355715456404094792

`∑[∑[A000213(n+2)]+2]`
-/

namespace A027114.P3355715456404094792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027114.P3355715456404094792

namespace A027114

/-- `∑[∑[A000213(n+2)]+2]` -/
def P3355715456404094792.Spec : Prop :=
  ∀ n, P3355715456404094792.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P142251261556020287

`∑[Δ[A180668(n+1)]+2]`
-/

namespace A027114.P142251261556020287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180668 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027114.P142251261556020287

namespace A027114

/-- `∑[Δ[A180668(n+1)]+2]` -/
def P142251261556020287.Spec : Prop :=
  ∀ n, P142251261556020287.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P7292129607838175689

`A180668(n+2)+2*(n+1)`
-/

namespace A027114.P7292129607838175689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180668 (n + 2) + (2 * (n + 1) : ℤ)

end

end A027114.P7292129607838175689

namespace A027114

/-- `A180668(n+2)+2*(n+1)` -/
def P7292129607838175689.Spec : Prop :=
  ∀ n, P7292129607838175689.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P6959864547574081442

`abs(4-A308189(2*(n+1)+5))`
-/

namespace A027114.P6959864547574081442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A308189 (2 * (n + 1) + 5)|

end

end A027114.P6959864547574081442

namespace A027114

/-- `abs(4-A308189(2*(n+1)+5))` -/
def P6959864547574081442.Spec : Prop :=
  ∀ n, P6959864547574081442.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P15544160333759635060

`∑[2*A007800(n+1)+n+1]`
-/

namespace A027114.P15544160333759635060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007800 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027114.P15544160333759635060

namespace A027114

/-- `∑[2*A007800(n+1)+n+1]` -/
def P15544160333759635060.Spec : Prop :=
  ∀ n, P15544160333759635060.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P10058720590479575498

`A089068(n+2)+A027083(n+2)`
-/

namespace A027114.P10058720590479575498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (n + 2) + A027083 (n + 2)

end

end A027114.P10058720590479575498

namespace A027114

/-- `A089068(n+2)+A027083(n+2)` -/
def P10058720590479575498.Spec : Prop :=
  ∀ n, P10058720590479575498.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P7722190874799546907

`A027084(n+2)+A018921(n)-2`
-/

namespace A027114.P7722190874799546907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027084 (n + 2) + (A018921 n - 2)

end

end A027114.P7722190874799546907

namespace A027114

/-- `A027084(n+2)+A018921(n)-2` -/
def P7722190874799546907.Spec : Prop :=
  ∀ n, P7722190874799546907.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P647547927686550230

`A356619(n+2)-A221949(n+2)`
-/

namespace A027114.P647547927686550230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356619 (n + 2) - A221949 (n + 2)

end

end A027114.P647547927686550230

namespace A027114

/-- `A356619(n+2)-A221949(n+2)` -/
def P647547927686550230.Spec : Prop :=
  ∀ n, P647547927686550230.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P4420569936651468834

`A089068(n+1)+A027053(n+3)-1`
-/

namespace A027114.P4420569936651468834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (n + 1) + (A027053 (n + 3) - 1)

end

end A027114.P4420569936651468834

namespace A027114

/-- `A089068(n+1)+A027053(n+3)-1` -/
def P4420569936651468834.Spec : Prop :=
  ∀ n, P4420569936651468834.a n = A027114 (n + 2)

end A027114

/-! ## A027114.P15249755322668091202

`A027084(n+3)+A027084(n+2)-1`
-/

namespace A027114.P15249755322668091202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027084 (n + 3) + (A027084 (n + 2) - 1)

end

end A027114.P15249755322668091202

namespace A027114

/-- `A027084(n+3)+A027084(n+2)-1` -/
def P15249755322668091202.Spec : Prop :=
  ∀ n, P15249755322668091202.a n = A027114 (n + 2)

end A027114

/-!
# A027115: a(n) = T(n,0) + T(n,1) + ... + T(n,2n), T given by A027113.

The programs for A027115, there is no canonical definition to state claims against.
-/

/-! ## A027115.P13694378805451495178

`A027129(n)+A008937(n)`
-/

namespace A027115.P13694378805451495178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027129 n + A008937 n

end

end A027115.P13694378805451495178

/-! ## A027115.P9607329666819810620

`A027129(n)+∑[∑[A001590(n)]]`
-/

namespace A027115.P9607329666819810620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027129 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027115.P9607329666819810620

/-! ## A027115.P15420702086073247473

`A027129(n)+∑[A000073(n+1)]`
-/

namespace A027115.P15420702086073247473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027129 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027115.P15420702086073247473

/-! ## A027115.P6889991173161632689

`A027129(n)+A192804(n+2)-1`
-/

namespace A027115.P6889991173161632689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027129 n + (A192804 (n + 2) - 1)

end

end A027115.P6889991173161632689

/-! ## A027115.P8322055340639986012

`A027129(n)+(A000213(n+2)-1)/2`
-/

namespace A027115.P8322055340639986012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027129 n : ℚ) + (A000213 (n + 2) - 1 : ℚ) / 2

end

end A027115.P8322055340639986012

/-! ## A027115.P4736630054080554550

`A018921(n)+A027129(n)-Δ[A018921(n)]`
-/

namespace A027115.P4736630054080554550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 n + (A027129 n - (f1 (n + 1) - f1 n))

end

end A027115.P4736630054080554550

/-! ## A027115.P6031890681806607677

`A027129(n)+Δ[A062544(n)]-A000073(n+2)`
-/

namespace A027115.P6031890681806607677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027129 n + (f1 (n + 1) - f1 n - A000073 (n + 2))

end

end A027115.P6031890681806607677

/-! ## A027115.P3176543776153163332

`A027129(n)+∑[A099330(n+1)+A099329(n+1)]`
-/

namespace A027115.P3176543776153163332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099330 (n + 1) + A099329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027129 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027115.P3176543776153163332

/-!
# A027116: a(n) = A027113(n, n+3).

The programs for A027116, the canonical program `A027116.P16926458307378809412` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027116 has offset 3).

The definition of A027116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027116.P16926458307378809412

`3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=7, a(1)=23, a(2)=56, a(3)=120, a(4)=241`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027116

/-- `3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` -/
def P16926458307378809412.Spec : Prop :=
  ∀ n, P16926458307378809412.a n = A027116 (n + 3)

theorem P16926458307378809412.correct : P16926458307378809412.Spec := by
  intro n
  simp only [A027116, Nat.add_sub_cancel]

end A027116

/-! ## A027116.P6509237623157839116

`∑[A027053(n+4)-2]`
-/

namespace A027116.P6509237623157839116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 4) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027116.P6509237623157839116

namespace A027116

/-- `∑[A027053(n+4)-2]` -/
def P6509237623157839116.Spec : Prop :=
  ∀ n, P6509237623157839116.a n = A027116 (n + 3)

end A027116

/-! ## A027116.P12844408835981878901

`∑[A001590(n+7)-4]`
-/

namespace A027116.P12844408835981878901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 7) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027116.P12844408835981878901

namespace A027116

/-- `∑[A001590(n+7)-4]` -/
def P12844408835981878901.Spec : Prop :=
  ∀ n, P12844408835981878901.a n = A027116 (n + 3)

end A027116

/-! ## A027116.P18297057280745846377

`∑[∑[A000213(n+4)]+2]`
-/

namespace A027116.P18297057280745846377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027116.P18297057280745846377

namespace A027116

/-- `∑[∑[A000213(n+4)]+2]` -/
def P18297057280745846377.Spec : Prop :=
  ∀ n, P18297057280745846377.a n = A027116 (n + 3)

end A027116

/-! ## A027116.P14038341659090617559

`∑[Δ[A000073(n+7)]-4]`
-/

namespace A027116.P14038341659090617559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027116.P14038341659090617559

namespace A027116

/-- `∑[Δ[A000073(n+7)]-4]` -/
def P14038341659090617559.Spec : Prop :=
  ∀ n, P14038341659090617559.a n = A027116 (n + 3)

end A027116

/-! ## A027116.P12337833463947577504

`∑[A027054(n+3)+2*(n+3)]`
-/

namespace A027116.P12337833463947577504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027054 (n + 3) + (2 * (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027116.P12337833463947577504

namespace A027116

/-- `∑[A027054(n+3)+2*(n+3)]` -/
def P12337833463947577504.Spec : Prop :=
  ∀ n, P12337833463947577504.a n = A027116 (n + 3)

end A027116

/-! ## A027116.P10738240067508038407

`A027113(∑[n]+A000217(n+6)-5)`
-/

namespace A027116.P10738240067508038407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000217 (n + 6) - 5)).toNat

end

end A027116.P10738240067508038407

namespace A027116

/-- `A027113(∑[n]+A000217(n+6)-5)` -/
def P10738240067508038407.Spec : Prop :=
  ∀ n, P10738240067508038407.a n = A027116 (n + 3)

end A027116

/-!
# A027117: a(n) = A027113(n, n+4).

The programs for A027117, the canonical program `A027117.P4553185571163848971` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027117 has offset 4).

The definition of A027117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027117.P4553185571163848971

`∑[∑[A027024(n+4)]+3]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027117

/-- `∑[∑[A027024(n+4)]+3]` -/
def P4553185571163848971.Spec : Prop :=
  ∀ n, P4553185571163848971.a n = A027117 (n + 4)

theorem P4553185571163848971.correct : P4553185571163848971.Spec := by
  intro n
  simp only [A027117, Nat.add_sub_cancel]

end A027117

/-! ## A027117.P6775137959557968364

`∑[∑[A000213(n+6)]-A005408(2*n)]`
-/

namespace A027117.P6775137959557968364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005408 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027117.P6775137959557968364

namespace A027117

/-- `∑[∑[A000213(n+6)]-A005408(2*n)]` -/
def P6775137959557968364.Spec : Prop :=
  ∀ n, P6775137959557968364.a n = A027117 (n + 4)

end A027117

/-! ## A027117.P16784204497845631434

`∑[∑[A000213(n+6)]]-A000217(2*n+1)`
-/

namespace A027117.P16784204497845631434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 (2 * n + 1)

end

end A027117.P16784204497845631434

namespace A027117

/-- `∑[∑[A000213(n+6)]]-A000217(2*n+1)` -/
def P16784204497845631434.Spec : Prop :=
  ∀ n, P16784204497845631434.a n = A027117 (n + 4)

end A027117

/-! ## A027117.P904505570164006575

`A027113((n+5)²-n)`
-/

namespace A027117.P904505570164006575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 5) ^ 2 - n)

end

end A027117.P904505570164006575

namespace A027117

/-- `A027113((n+5)²-n)` -/
def P904505570164006575.Spec : Prop :=
  ∀ n, P904505570164006575.a n = A027117 (n + 4)

end A027117

/-!
# A027118: a(n) = A027113(n, 2n).

The programs for A027118, there is no canonical definition to state claims against.
-/

/-! ## A027118.P7167170367272190917

`∑[A027119(floor(n-atan(n))+1)]`
-/

namespace A027118.P7167170367272190917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027119 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027118.P7167170367272190917

/-! ## A027118.P4286718611493017881

`A027119(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A027118.P4286718611493017881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A027119 (n - 1) + a (n - 1)

end

end A027118.P4286718611493017881

/-! ## A027118.P17932107717362818983

`∑[A027119(A065033(A004275(n)))]`
-/

namespace A027118.P17932107717362818983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027119 (A065033 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027118.P17932107717362818983

/-! ## A027118.P5126093593881718152

`∑[A027119(A022818(A238531(n)))]`
-/

namespace A027118.P5126093593881718152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027119 (A022818 (A238531 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027118.P5126093593881718152

/-! ## A027118.P9527757810468058574

`∑[A027119(A000196(A002061(n)))]`
-/

namespace A027118.P9527757810468058574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027119 (A000196 (A002061 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027118.P9527757810468058574

/-! ## A027118.P1693334729303728328

`A027113((n+1)²)`
-/

namespace A027118.P1693334729303728328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 1) ^ 2)

end

end A027118.P1693334729303728328

/-! ## A027118.P14361736145425805727

`record[A027113(A187243(n))]`
-/

namespace A027118.P14361736145425805727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (A187243 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027118.P14361736145425805727

/-! ## A027118.P15544074673833371927

`record[A027113(A134478(n)²)]`
-/

namespace A027118.P15544074673833371927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027118.P15544074673833371927

/-! ## A027118.P7436884572464530543

`record[A027113(A349315(n)²)]`
-/

namespace A027118.P7436884572464530543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (A349315 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027118.P7436884572464530543

/-! ## A027118.P17563654679163300923

`record[A027113(∑[A008619(n)])]`
-/

namespace A027118.P17563654679163300923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027118.P17563654679163300923

/-! ## A027118.P516854172835234588

`record[A027113(A000463(n+1))]`
-/

namespace A027118.P516854172835234588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (A000463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027118.P516854172835234588

/-! ## A027118.P3414703532218623340

`record[(2-A004737(n+1))*A027113(n+1)]`
-/

namespace A027118.P3414703532218623340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004737 (n + 1)) * A027113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027118.P3414703532218623340

/-!
# A027119: a(n) = A027113(n, 2n-1).

The programs for A027119, there is no canonical definition to state claims against.
-/

/-! ## A027119.P14994478520114239510

`Δ[A027118(n+1)]`
-/

namespace A027119.P14994478520114239510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027119.P14994478520114239510

/-! ## A027119.P12954356157727589093

`record[Δ[A027118(A004396(n))]]`
-/

namespace A027119.P12954356157727589093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027118 (A004396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027119.P12954356157727589093

/-! ## A027119.P244544661674615279

`A027087(n+2)-A001006(n)`
-/

namespace A027119.P244544661674615279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027087 (n + 2) - A001006 n

end

end A027119.P244544661674615279

/-! ## A027119.P1473715703960804880

`A027118(n+2)-A027118(n+1)`
-/

namespace A027119.P1473715703960804880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027118 (n + 2) - A027118 (n + 1)

end

end A027119.P1473715703960804880

/-! ## A027119.P1716580897761704429

`A027113((n+2)²-1)`
-/

namespace A027119.P1716580897761704429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 2) ^ 2 - 1)

end

end A027119.P1716580897761704429

/-! ## A027119.P6820039645096386414

`record[A027113(∑[A008619(n+1)])]`
-/

namespace A027119.P6820039645096386414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027119.P6820039645096386414

/-! ## A027119.P15346471177060982202

`Δ[A027113((n+2)²)]`
-/

namespace A027119.P15346471177060982202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027119.P15346471177060982202

/-!
# A027120: a(n) = A027113(n, 2n-2).

The programs for A027120, there is no canonical definition to state claims against.
-/

/-! ## A027120.P6173028749158653018

`A027119(n+3)-A027118(n+3)`
-/

namespace A027120.P6173028749158653018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027119 (n + 3) - A027118 (n + 3)

end

end A027120.P6173028749158653018

/-! ## A027120.P2635549623998185123

`A027118(n+4)%A027118(n+3)`
-/

namespace A027120.P2635549623998185123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027118 (n + 4)) (A027118 (n + 3))

end

end A027120.P2635549623998185123

/-! ## A027120.P11175959443137250891

`Δ[A027121(n+2)]-A027122(n+2)`
-/

namespace A027120.P11175959443137250891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027122 (n + 2)

end

end A027120.P11175959443137250891

/-! ## A027120.P16484797284762479964

`Δ[Δ[A027118(n+2)]]-A027118(n+2)`
-/

namespace A027120.P16484797284762479964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027118 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027118 (n + 2)

end

end A027120.P16484797284762479964

/-! ## A027120.P1264962912368552372

`A027113((n+3)²-2)`
-/

namespace A027120.P1264962912368552372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 3) ^ 2 - 2)

end

end A027120.P1264962912368552372

/-!
# A027121: a(n) = A027113(n, 2n-3).

The programs for A027121, there is no canonical definition to state claims against.
-/

/-! ## A027121.P5842348569964777824

`Δ[A027120(n+2)-A027118(n+2)]`
-/

namespace A027121.P5842348569964777824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027120 (n + 2) - A027118 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027121.P5842348569964777824

/-! ## A027121.P10780251949803361449

`Δ[A027120(n+2)-∑[A027119(n+1)]]`
-/

namespace A027121.P10780251949803361449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027119 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027120 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027121.P10780251949803361449

/-! ## A027121.P2404321191071677415

`(A027119(n+4)-A027119(n+2))%A027119(n+3)`
-/

namespace A027121.P2404321191071677415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027119 (n + 4) - A027119 (n + 2)) (A027119 (n + 3))

end

end A027121.P2404321191071677415

/-! ## A027121.P16038567068835528354

`A027113((n+3)²-3)`
-/

namespace A027121.P16038567068835528354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 3) ^ 2 - 3)

end

end A027121.P16038567068835528354

/-! ## A027121.P9559741135076706951

`record[A027113(eq[3, A004737(n+1)])]`
-/

namespace A027121.P9559741135076706951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027121.P9559741135076706951

/-! ## A027121.P7057369493060369595

`record[A027113(A000463(n+2)+n)]`
-/

namespace A027121.P7057369493060369595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (A000463 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027121.P7057369493060369595

/-!
# A027122: a(n) = A027113(n, 2n-4).

The programs for A027122, there is no canonical definition to state claims against.
-/

/-! ## A027122.P5201170060656072433

`Δ[A027121(n+2)]-A027120(n+2)`
-/

namespace A027122.P5201170060656072433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027120 (n + 2)

end

end A027122.P5201170060656072433

/-! ## A027122.P4918446330204624643

`A027121(n+3)-(A027121(n+2)+A027120(n+2))`
-/

namespace A027122.P4918446330204624643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027121 (n + 3) - (A027121 (n + 2) + A027120 (n + 2))

end

end A027122.P4918446330204624643

/-! ## A027122.P2109107134333877972

`Δ[A027121(n+2)]-(A027119(n+3)-A027118(n+3))`
-/

namespace A027122.P2109107134333877972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A027119 (n + 3) - A027118 (n + 3))

end

end A027122.P2109107134333877972

/-! ## A027122.P8946113687910548920

`Δ[A027121(n+2)]-A027118(n+4)%A027118(n+3)`
-/

namespace A027122.P8946113687910548920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A027118 (n + 4)) (A027118 (n + 3))

end

end A027122.P8946113687910548920

/-! ## A027122.P5514842197277676326

`A027113((n+3)²-4)`
-/

namespace A027122.P5514842197277676326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 3) ^ 2 - 4)

end

end A027122.P5514842197277676326

/-!
# A027123: a(n) = A027113(n, 2n-5).

The programs for A027123, there is no canonical definition to state claims against.
-/

/-! ## A027123.P16314328301774978223

`Δ[A027122(n+3)]-A027121(n+3)`
-/

namespace A027123.P16314328301774978223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027122 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027121 (n + 3)

end

end A027123.P16314328301774978223

/-! ## A027123.P2270813220131414477

`A027113((n+4)²-5)`
-/

namespace A027123.P2270813220131414477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 4) ^ 2 - 5)

end

end A027123.P2270813220131414477

/-!
# A027124: a(n) = A027113(n, 2n-6).

The programs for A027124, there is no canonical definition to state claims against.
-/

/-! ## A027124.P2791270300455884383

`Δ[A027123(n+3)]-A027122(n+3)`
-/

namespace A027124.P2791270300455884383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027123 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027122 (n + 3)

end

end A027124.P2791270300455884383

/-! ## A027124.P16776009229832951424

`A027113((n+4)²-6)`
-/

namespace A027124.P16776009229832951424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 4) ^ 2 - 6)

end

end A027124.P16776009229832951424

/-!
# A027125: a(n) = A027113(n, 2n-7).

The programs for A027125, there is no canonical definition to state claims against.
-/

/-! ## A027125.P9092493595100788211

`Δ[A027124(n+4)]-A027123(n+4)`
-/

namespace A027125.P9092493595100788211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027124 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027123 (n + 4)

end

end A027125.P9092493595100788211

/-! ## A027125.P18388735067415015520

`A027113(A098603(n)+18)`
-/

namespace A027125.P18388735067415015520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (A098603 n + 18).toNat

end

end A027125.P18388735067415015520

/-! ## A027125.P17832021893558147345

`A027113(eq[7, A068527(n)])`
-/

namespace A027125.P17832021893558147345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027125.P17832021893558147345

/-! ## A027125.P5946399461492476051

`A027113(A028563(n+2)-n)`
-/

namespace A027125.P5946399461492476051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (A028563 (n + 2) - (n : ℤ)).toNat

end

end A027125.P5946399461492476051

/-! ## A027125.P4538808421596895860

`A027113(A167614(n+3)+∑[n+5])`
-/

namespace A027125.P4538808421596895860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 (A167614 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A027125.P4538808421596895860

/-!
# A027126: a(n) = A027113(n, 2n-8).

The programs for A027126, there is no canonical definition to state claims against.
-/

/-! ## A027126.P6295241462501279214

`Δ[A027125(n+4)]-A027124(n+4)`
-/

namespace A027126.P6295241462501279214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027125 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027124 (n + 4)

end

end A027126.P6295241462501279214

/-! ## A027126.P10395624837503887836

`A027113((n+5)²-8)`
-/

namespace A027126.P10395624837503887836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 5) ^ 2 - 8)

end

end A027126.P10395624837503887836

/-! ## A027126.P1361104066378505103

`A060384(A255813(n+1))`
-/

namespace A027126.P1361104066378505103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A255813 (n + 1)).toNat

end

end A027126.P1361104066378505103

/-!
# A027127: a(n) = A027113(n, 2n-9).

The programs for A027127, there is no canonical definition to state claims against.
-/

/-! ## A027127.P16217945264670562309

`Δ[A027126(n+5)]-A027125(n+5)`
-/

namespace A027127.P16217945264670562309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027126 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027125 (n + 5)

end

end A027127.P16217945264670562309

/-! ## A027127.P16711786501610702670

`A027113((n+3)*(n+9))`
-/

namespace A027127.P16711786501610702670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 3) * (n + 9))

end

end A027127.P16711786501610702670

/-! ## A027127.P15919460295180452080

`A004526(∑[2*A027033(n+5)])`
-/

namespace A027127.P15919460295180452080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027033 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027127.P15919460295180452080

/-!
# A027128: a(n) = A027113(n, 2n-10).

The programs for A027128, there is no canonical definition to state claims against.
-/

/-! ## A027128.P9830385229699476773

`Δ[A027127(n+5)]-A027126(n+5)`
-/

namespace A027128.P9830385229699476773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027127 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027126 (n + 5)

end

end A027128.P9830385229699476773

/-! ## A027128.P743463469931688905

`A027113((n+6)²-10)`
-/

namespace A027128.P743463469931688905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027113 ((n + 6) ^ 2 - 10)

end

end A027128.P743463469931688905

/-! ## A027128.P18119354175400899851

`∑[A130823(A220308(∑[n]+2))]`
-/

namespace A027128.P18119354175400899851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A220308 (∑ j ∈ Finset.range (n + 1), f2 j + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027128.P18119354175400899851

/-! ## A027128.P16651162788218475018

`∑[A338840(A027034(n+5))+1]`
-/

namespace A027128.P16651162788218475018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338840 (A027034 (n + 5)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027128.P16651162788218475018

/-!
# A027129: a(n) = T(n,n) + T(n,n+1) + ... + T(n,2n), T given by A027113.

The programs for A027129, there is no canonical definition to state claims against.
-/

/-! ## A027129.P7598467185214582972

`A027115(n)-A008937(n)`
-/

namespace A027129.P7598467185214582972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - A008937 n

end

end A027129.P7598467185214582972

/-! ## A027129.P1456045688375937475

`A027115(n)-∑[∑[A001590(n)]]`
-/

namespace A027129.P1456045688375937475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027129.P1456045688375937475

/-! ## A027129.P13071858455091302572

`A027115(n)-∑[A000073(n+1)]`
-/

namespace A027129.P13071858455091302572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027129.P13071858455091302572

/-! ## A027129.P3354523052393888431

`A027115(n)-(A192804(n+2)-1)`
-/

namespace A027129.P3354523052393888431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - (A192804 (n + 2) - 1)

end

end A027129.P3354523052393888431

/-! ## A027129.P3323342024551431536

`A027115(n)-(A317200(n+2)-2)`
-/

namespace A027129.P3323342024551431536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - (A317200 (n + 2) - 2)

end

end A027129.P3323342024551431536

/-! ## A027129.P16534599817521823377

`A027115(n)-(A000213(n+2)-1)/2`
-/

namespace A027129.P16534599817521823377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027115 n : ℚ) - (A000213 (n + 2) - 1 : ℚ) / 2

end

end A027129.P16534599817521823377

/-! ## A027129.P11841119313469967483

`Δ[A018921(n)]+A027115(n)-A018921(n)`
-/

namespace A027129.P11841119313469967483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A027115 n - A018921 n)

end

end A027129.P11841119313469967483

/-! ## A027129.P13967594817905475412

`A027115(n)-(A213967(n+1)-A000213(n))`
-/

namespace A027129.P13967594817905475412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - (A213967 (n + 1) - A000213 n)

end

end A027129.P13967594817905475412

/-! ## A027129.P2684381006066933982

`A027115(n)-(∑[A141036(n)]-(A000213(n)+1))`
-/

namespace A027129.P2684381006066933982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - (∑ j ∈ Finset.range (n + 1), f1 j - (A000213 n + 1))

end

end A027129.P2684381006066933982

/-! ## A027129.P705707989050927453

`A027115(n)-(Δ[A062544(n)]-A000073(n+2))`
-/

namespace A027129.P705707989050927453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - (f1 (n + 1) - f1 n - A000073 (n + 2))

end

end A027129.P705707989050927453

/-! ## A027129.P538128125310066596

`A027115(n)-∑[A099330(n+1)+A099329(n+1)]`
-/

namespace A027129.P538128125310066596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099330 (n + 1) + A099329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027129.P538128125310066596

/-!
# A027130: a(n) = Sum_{0<=j<=i<=n} A027113(i, n+j).

The programs for A027130, there is no canonical definition to state claims against.
-/

/-! ## A027130.P12703477397146686284

`∑[A027129(n)]`
-/

namespace A027130.P12703477397146686284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027130.P12703477397146686284

/-! ## A027130.P151218920674742418

`∑[A027115(n)-A008937(n)]`
-/

namespace A027130.P151218920674742418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027130.P151218920674742418

/-! ## A027130.P5765865198955788381

`∑[A027115(n)]-A062544(n)`
-/

namespace A027130.P5765865198955788381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062544 n

end

end A027130.P5765865198955788381

/-! ## A027130.P8323813717379846728

`A027129(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A027130.P8323813717379846728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027129 n + a (A023443 n).toNat

end

end A027130.P8323813717379846728

/-! ## A027130.P4139341716420063906

`∑[A027115(n)-∑[A000073(n+1)]]`
-/

namespace A027130.P4139341716420063906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027130.P4139341716420063906

/-! ## A027130.P13907900252351690944

`∑[A027115(n)-(A192804(n+2)-1)]`
-/

namespace A027130.P13907900252351690944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - (A192804 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027130.P13907900252351690944

/-! ## A027130.P17344386136032947060

`a(n-1)+A027129(n)+A000038(n)` with `a(0)=1`
-/

namespace A027130.P17344386136032947060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A027129 n + A000038 n)

end

end A027130.P17344386136032947060

/-! ## A027130.P3122208630193472961

`∑[A027115(n)-(A000213(n+2)-1)/2]`
-/

namespace A027130.P3122208630193472961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027115 n : ℚ) - (A000213 (n + 2) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027130.P3122208630193472961

/-! ## A027130.P8266861454937837071

`a(n-1)+A027129(n)+and(2, A195744(n))` with `a(0)=1`
-/

namespace A027130.P8266861454937837071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A027129 n + Int.land 2 (A195744 n))

end

end A027130.P8266861454937837071

/-! ## A027130.P8921675125810923380

`a(n-1)+A000007(n)+A027115(n)-A008937(n)` with `a(0)=1`
-/

namespace A027130.P8921675125810923380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000007 n + (A027115 n - A008937 n))

end

end A027130.P8921675125810923380

/-! ## A027130.P5460450969778280242

`a(n-1)+(A027115(n)-A008937(n))*A057427(n)` with `a(0)=1`
-/

namespace A027130.P5460450969778280242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A027115 n - A008937 n) * A057427 n

end

end A027130.P5460450969778280242

/-!
# A027131: a(n) = diagonal sum of left justified array T given by A027113.

The programs for A027131, there is no canonical definition to state claims against.
-/

/-! ## A027131.P8813092988056225714

`Δ[A217038(A308631(n+3))]`
-/

namespace A027131.P8813092988056225714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A308631 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027131.P8813092988056225714

/-! ## A027131.P6842578284462898535

`Δ[A217038(∑[2^(n+1)-A105039(n+2)])]`
-/

namespace A027131.P6842578284462898535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A105039 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027131.P6842578284462898535

/-!
# A027132: a(n) = diagonal sum of right justified array T given by A027113.

The programs for A027132, there is no canonical definition to state claims against.
-/

/-! ## A027132.P12743470686009177998

`A332744(∑[and(2, n)!]-1)+A124480(n+1)`
-/

namespace A027132.P12743470686009177998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332744 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + A124480 (n + 1)

end

end A027132.P12743470686009177998

/-! ## A027132.P16788286916819218302

`A153246(A000079(n))+A055819(n)`
-/

namespace A027132.P16788286916819218302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (A000079 n).toNat + A055819 n

end

end A027132.P16788286916819218302

/-! ## A027132.P8962366521501494123

`A172471(A371495(n))+A049615(n)`
-/

namespace A027132.P8962366521501494123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A371495 n).toNat + A049615 n

end

end A027132.P8962366521501494123

/-!
# A027133: Greatest number in row n of array T given by A027113.

The programs for A027133, there is no canonical definition to state claims against.
-/

/-! ## A027133.P13383922490952175155

`A141702(A134957(n))+A105633(n)`
-/

namespace A027133.P13383922490952175155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141702 (A134957 n).toNat + A105633 n

end

end A027133.P13383922490952175155

/-! ## A027133.P6410205615181003128

`A160380(A352659(n))+A105633(n)`
-/

namespace A027133.P6410205615181003128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A352659 n).toNat + A105633 n

end

end A027133.P6410205615181003128

/-! ## A027133.P1134565517943389829

`A373954(A364534(n))+A105633(n)`
-/

namespace A027133.P1134565517943389829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A364534 n).toNat + A105633 n

end

end A027133.P1134565517943389829

/-! ## A027133.P16601793202682383189

`or(A048881(A001003(n)), A105633(n))`
-/

namespace A027133.P16601793202682383189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048881 (A001003 n).toNat) (A105633 n)

end

end A027133.P16601793202682383189

/-!
# A027134: a(n) = self-convolution of row n of array T given by A027113.

The programs for A027134, there is no canonical definition to state claims against.
-/

/-! ## A027134.P4877405164197317611

`xor(A046800(A003713(n)), A108981(n))`
-/

namespace A027134.P4877405164197317611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046800 (A003713 n).toNat) (A108981 n)

end

end A027134.P4877405164197317611

/-! ## A027134.P6264278388594422658

`A125050(2*n+1)-A008683(A299023(3*n+5))`
-/

namespace A027134.P6264278388594422658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125050 (2 * n + 1) - A008683 (A299023 (3 * n + 5)).toNat

end

end A027134.P6264278388594422658

/-!
# A027135: a(n) = Sum_{k=0..n} T(n,k) * T(n,2n-k), with T given by A027113.

The programs for A027135, there is no canonical definition to state claims against.
-/

/-! ## A027135.P15841027007500376364

`floor(A285761(∑[A281482(n)])/2)`
-/

namespace A027135.P15841027007500376364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋

end

end A027135.P15841027007500376364

/-! ## A027135.P12781544626911039950

`A261224(A000045(3*n+2))+and(n, floor(n/2))`
-/

namespace A027135.P12781544626911039950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261224 (A000045 (3 * n + 2)).toNat + Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A027135.P12781544626911039950

/-!
# A027136: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,2n-k), with T given by A027113.

The programs for A027136, there is no canonical definition to state claims against.
-/

/-! ## A027136.P1757585192502170769

`A027134(n+1)-A027135(n+1)`
-/

namespace A027136.P1757585192502170769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027134 (n + 1) - A027135 (n + 1)

end

end A027136.P1757585192502170769

/-! ## A027136.P18370724096476871496

`A027134(n/2+n/2+1)%A027135(n+1)`
-/

namespace A027136.P18370724096476871496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027134 (SequenceMachineLib.roundAway ((n : ℚ) / 2 + ((n : ℚ) / 2 + 1))).toNat) (A027135 (n + 1))

end

end A027136.P18370724096476871496

/-!
# A027137: a(n) = Sum_{k=0..2n} (k+1) * A027113(n, k).

The programs for A027137, there is no canonical definition to state claims against.
-/

/-! ## A027137.P5754356609180761164

`A003977(A011557(n))+A001065(n+1)`
-/

namespace A027137.P5754356609180761164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A011557 n).toNat + A001065 (n + 1)

end

end A027137.P5754356609180761164

/-!
# A027138: a(n) = Sum_{k=0..2n} (k+1) * A027113(n, 2n-k).

The programs for A027138, the canonical program `A027138.P15264139826849320947` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027138 has offset 1).

The definition of A027138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027138.P15264139826849320947

`5*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=7, a(2)=26, a(3)=85`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027138

/-- `5*a(n-1)-7*a(n-2)+3*a(n-3)` -/
def P15264139826849320947.Spec : Prop :=
  ∀ n, P15264139826849320947.a n = A027138 (n + 1)

theorem P15264139826849320947.correct : P15264139826849320947.Spec := by
  intro n
  simp only [A027138, Nat.add_sub_cancel]

end A027138

/-! ## A027138.P1487559304399074371

`∑[∑[ogf((1+2x-2x^2+x^3)/(1-3x))]]`
-/

namespace A027138.P1487559304399074371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2, 1] [1, -3] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027138.P1487559304399074371

namespace A027138

/-- `∑[∑[ogf((1+2x-2x^2+x^3)/(1-3x))]]` -/
def P1487559304399074371.Spec : Prop :=
  ∀ n, P1487559304399074371.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P15217045964697866752

`Δ[3*a(n-1)]-(n+2)` with `a(0)=2, a(1)=5`
-/

namespace A027138.P15217045964697866752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 2 : ℤ)

end

end A027138.P15217045964697866752

namespace A027138

/-- `Δ[3*a(n-1)]-(n+2)` -/
def P15217045964697866752.Spec : Prop :=
  ∀ n, P15217045964697866752.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P14738581490497467839

`3*a(n-1)+2*n+1` with `a(0)=1, a(1)=7`
-/

namespace A027138.P14738581490497467839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  3 * a (n - 1) + (2 * n + 1)

end

end A027138.P14738581490497467839

namespace A027138

/-- `3*a(n-1)+2*n+1` -/
def P14738581490497467839.Spec : Prop :=
  ∀ n, (P14738581490497467839.a n : ℤ) = A027138 (n + 1)

end A027138

/-! ## A027138.P3405231900840768819

`A062107(n+3)-(n+2)`
-/

namespace A027138.P3405231900840768819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062107 (n + 3) - (n + 2 : ℤ)

end

end A027138.P3405231900840768819

namespace A027138

/-- `A062107(n+3)-(n+2)` -/
def P3405231900840768819.Spec : Prop :=
  ∀ n, P3405231900840768819.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P11907006168749630065

`3^n+A027107(n)-(n+1)`
-/

namespace A027138.P11907006168749630065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (A027107 n - (n + 1 : ℤ))

end

end A027138.P11907006168749630065

namespace A027138

/-- `3^n+A027107(n)-(n+1)` -/
def P11907006168749630065.Spec : Prop :=
  ∀ n, P11907006168749630065.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P13186219871449681604

`∑[A048473(n)]+floor(3^(n-1))`
-/

namespace A027138.P13186219871449681604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A027138.P13186219871449681604

namespace A027138

/-- `∑[A048473(n)]+floor(3^(n-1))` -/
def P13186219871449681604.Spec : Prop :=
  ∀ n, P13186219871449681604.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P6994979812676035507

`A140429(n)+∑[A048473(n)]`
-/

namespace A027138.P6994979812676035507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027138.P6994979812676035507

namespace A027138

/-- `A140429(n)+∑[A048473(n)]` -/
def P6994979812676035507.Spec : Prop :=
  ∀ n, P6994979812676035507.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P17249932924087854815

`A140429(n)+A060188(n+2)`
-/

namespace A027138.P17249932924087854815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A060188 (n + 2)

end

end A027138.P17249932924087854815

namespace A027138

/-- `A140429(n)+A060188(n+2)` -/
def P17249932924087854815.Spec : Prop :=
  ∀ n, P17249932924087854815.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P18242890144441364120

`A246080(A016945(n))-(n+2)`
-/

namespace A027138.P18242890144441364120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246080 (A016945 n).toNat - (n + 2 : ℤ)

end

end A027138.P18242890144441364120

namespace A027138

/-- `A246080(A016945(n))-(n+2)` -/
def P18242890144441364120.Spec : Prop :=
  ∀ n, P18242890144441364120.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P15897556705105273685

`A003946(n)+∑[A003946(n)-1]`
-/

namespace A027138.P15897556705105273685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027138.P15897556705105273685

namespace A027138

/-- `A003946(n)+∑[A003946(n)-1]` -/
def P15897556705105273685.Spec : Prop :=
  ∀ n, P15897556705105273685.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P10272203836107209803

`A040001(2*n)*A181655(2*n)-n`
-/

namespace A027138.P10272203836107209803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A181655 (2 * n) - (n : ℤ)

end

end A027138.P10272203836107209803

namespace A027138

/-- `A040001(2*n)*A181655(2*n)-n` -/
def P10272203836107209803.Spec : Prop :=
  ∀ n, P10272203836107209803.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P18264392477322319975

`A174296(2*n)*A181655(2*n)-n`
-/

namespace A027138.P18264392477322319975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 (2 * n) * A181655 (2 * n) - (n : ℤ)

end

end A027138.P18264392477322319975

namespace A027138

/-- `A174296(2*n)*A181655(2*n)-n` -/
def P18264392477322319975.Spec : Prop :=
  ∀ n, P18264392477322319975.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P5476701643066890415

`A052156(n+1)+∑[A052156(n+1)-1]`
-/

namespace A027138.P5476701643066890415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027138.P5476701643066890415

namespace A027138

/-- `A052156(n+1)+∑[A052156(n+1)-1]` -/
def P5476701643066890415.Spec : Prop :=
  ∀ n, P5476701643066890415.a n = A027138 (n + 1)

end A027138

/-! ## A027138.P11304303447242880606

`A133494(A065475(n+1))+A133494(n)-A065475(n+1)`
-/

namespace A027138.P11304303447242880606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A065475 (n + 1)).toNat + (A133494 n - A065475 (n + 1))

end

end A027138.P11304303447242880606

namespace A027138

/-- `A133494(A065475(n+1))+A133494(n)-A065475(n+1)` -/
def P11304303447242880606.Spec : Prop :=
  ∀ n, P11304303447242880606.a n = A027138 (n + 1)

end A027138

/-!
# A027139: T(n,n+1) + T(n,n+2) + ... + T(n,2n), T given by A027113.

The programs for A027139, there is no canonical definition to state claims against.
-/

/-! ## A027139.P4216662457051583669

`A027115(n+1)-A008937(n+2)`
-/

namespace A027139.P4216662457051583669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 (n + 1) - A008937 (n + 2)

end

end A027139.P4216662457051583669

/-! ## A027139.P11589185362684989212

`A027129(n+1)-A000073(n+3)`
-/

namespace A027139.P11589185362684989212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027129 (n + 1) - A000073 (n + 3)

end

end A027139.P11589185362684989212

/-! ## A027139.P11806221851158596316

`A027115(n+1)-Δ[A062544(n+1)]`
-/

namespace A027139.P11806221851158596316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 (n + 1) - (f1 (n + 1) - f1 n)

end

end A027139.P11806221851158596316

/-! ## A027139.P11276894020176892161

`Δ[A027130(n+1)-A027115(n+1)]`
-/

namespace A027139.P11276894020176892161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027130 (n + 1) - A027115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027139.P11276894020176892161

/-! ## A027139.P4575629061158164564

`A027129(n+2)-Δ[A027115(n+1)]`
-/

namespace A027139.P4575629061158164564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027129 (n + 2) - (f1 (n + 1) - f1 n)

end

end A027139.P4575629061158164564

/-!
# A027140: a(n) = Sum_{k=0..n} T(n,k) * T(n,n+k), with T given by A027113.

The programs for A027140, there is no canonical definition to state claims against.
-/

/-! ## A027140.P2517251367432541511

`A008619(A003501(n)-A343468(n))`
-/

namespace A027140.P2517251367432541511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003501 n - A343468 n).toNat

end

end A027140.P2517251367432541511

/-! ## A027140.P14469598432248472120

`A008619(A003501(n)-A343472(n))`
-/

namespace A027140.P14469598432248472120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003501 n - A343472 n).toNat

end

end A027140.P14469598432248472120

/-!
# A027144: Triangular array T given by rows: T(n,0)=1 for n >= 0, T(1,1)=2; for even n >= 2, T(n,k)=T(n-2,k-1)+T(n-1,k-1)+T(n-1,k) for 1<=(odd k)<=n-1 and T(n,k)=T(n-1,k-1)+T(n-1,k) for 2<=(even k)<=n-2, T(n,n)=T(n-1,n-1); for odd n<=3, T(n,k)=T(n,k-1)+T(n-1,k-1)+T(n-1,k) for 1<=(odd k)<=n-2 and T(n,k)=T(n-1,k-1)+T(n-1,k) for 2<=(even k)<=n-1, T(n,n)=T(n-1,n-1)+T(n,n-1).

The programs for A027144, there is no canonical definition to state claims against.
-/

/-! ## A027144.P13093867246606670260

`gcd(record[A123258(n+1)], A158303(n))`
-/

namespace A027144.P13093867246606670260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A158303 n)

end

end A027144.P13093867246606670260

/-! ## A027144.P10662075360414786822

`A158303(n)-A281462(A158303(n))`
-/

namespace A027144.P10662075360414786822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158303 n - A281462 (A158303 n).toNat

end

end A027144.P10662075360414786822

/-! ## A027144.P4126086066451621449

`A158303(n)/A030597(A105813(n+2))`
-/

namespace A027144.P4126086066451621449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158303 n : ℚ) / (A030597 (A105813 (n + 2)).toNat : ℚ)

end

end A027144.P4126086066451621449

/-! ## A027144.P4240874987831422408

`A158303(n)/A030597(A000041(2*(n+1)))`
-/

namespace A027144.P4240874987831422408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158303 n : ℚ) / (A030597 (A000041 (2 * (n + 1))).toNat : ℚ)

end

end A027144.P4240874987831422408

/-!
# A027145: a(n) = A027144(2n, n).

The programs for A027145, there is no canonical definition to state claims against.
-/

/-! ## A027145.P17053515029957821697

`A027150(2*n)`
-/

namespace A027145.P17053515029957821697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (2 * n)

end

end A027145.P17053515029957821697

/-! ## A027145.P15834469059341910740

`record[A027150(A006257(n)+1)]`
-/

namespace A027145.P15834469059341910740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027145.P15834469059341910740

/-! ## A027145.P13270740806041829192

`record[A027150(A093178(n)-1)]`
-/

namespace A027145.P13270740806041829192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027145.P13270740806041829192

/-! ## A027145.P63094163206550060

`record[A027150(n/A093178(n))]`
-/

namespace A027145.P63094163206550060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027145.P63094163206550060

/-! ## A027145.P225021050023832590

`record[A027150(A000265(n+1)-1)]`
-/

namespace A027145.P225021050023832590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027145.P225021050023832590

/-! ## A027145.P5585835843043836669

`record[A027150(A028234(n+1)-1)]`
-/

namespace A027145.P5585835843043836669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A028234 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027145.P5585835843043836669

/-! ## A027145.P11014644625437710017

`record[and(A027150(n+1), A094267(n))]`
-/

namespace A027145.P11014644625437710017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027150 (n + 1)) (A094267 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027145.P11014644625437710017

/-! ## A027145.P5244242925450236465

`and(A027150(A005843(n))+n, -(n+1))`
-/

namespace A027145.P5244242925450236465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027150 (A005843 n).toNat + (n : ℤ)) (-(n + 1 : ℤ))

end

end A027145.P5244242925450236465

/-! ## A027145.P6783387316797708830

`ceil(A027150(A004277(n))-n/A034472(n))`
-/

namespace A027145.P6783387316797708830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027150 (A004277 n).toNat : ℚ) - (n : ℚ) / (A034472 n : ℚ)⌉

end

end A027145.P6783387316797708830

/-! ## A027145.P4758067416609510222

`A027150(A004277(n))/A104777(n+1)%2`
-/

namespace A027145.P4758067416609510222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027150 (A004277 n).toNat : ℚ) / (Int.tmod (A104777 (n + 1)) 2 : ℚ)

end

end A027145.P4758067416609510222

/-! ## A027145.P9196167768029428770

`A027150(A004277(n))+n+1-A000027(n+1)`
-/

namespace A027145.P9196167768029428770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A004277 n).toNat + (n + 1 : ℤ) - A000027 (n + 1)

end

end A027145.P9196167768029428770

/-! ## A027145.P10088561762540057201

`A000034(A006257(n))*A027163(A004273(n))`
-/

namespace A027145.P10088561762540057201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A006257 n).toNat * A027163 (A004273 n).toNat

end

end A027145.P10088561762540057201

/-! ## A027145.P1194503769160407015

`A006530(A001316(n))*A027163(A004273(n))`
-/

namespace A027145.P1194503769160407015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A027163 (A004273 n).toNat

end

end A027145.P1194503769160407015

/-!
# A027146: a(n) = A027144(2n, n-1).

The programs for A027146, there is no canonical definition to state claims against.
-/

/-! ## A027146.P16522579991224871215

`A027144(∑[4*(n+1)])`
-/

namespace A027146.P16522579991224871215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027146.P16522579991224871215

/-! ## A027146.P15019970530235505940

`record[A027144(A226725(n+1))]`
-/

namespace A027146.P15019970530235505940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027146.P15019970530235505940

/-! ## A027146.P15339596831825845304

`A185012(2*n+1)+A027144(A226725(2*(n+1)))`
-/

namespace A027146.P15339596831825845304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (2 * n + 1) + A027144 (A226725 (2 * (n + 1))).toNat

end

end A027146.P15339596831825845304

/-! ## A027146.P3306214994225516640

`A027144(A226725(2*(n+1)))+A008683(4*(n+4))`
-/

namespace A027146.P3306214994225516640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A226725 (2 * (n + 1))).toNat + A008683 (4 * (n + 4))

end

end A027146.P3306214994225516640

/-! ## A027146.P833308262804954451

`A027144(A226725(2*(n+1)))^A057078(3*(n+1))`
-/

namespace A027146.P833308262804954451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027144 (A226725 (2 * (n + 1))).toNat : ℚ) ^ (A057078 (3 * (n + 1)) : ℤ)

end

end A027146.P833308262804954451

/-!
# A027147: a(n) = A027144(2n, n-2).

The programs for A027147, there is no canonical definition to state claims against.
-/

/-! ## A027147.P14223009589895199557

`A027144(A152813(n)+8)`
-/

namespace A027147.P14223009589895199557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A152813 n + 8).toNat

end

end A027147.P14223009589895199557

/-! ## A027147.P12109403848687068013

`A027144(eq[7, A286158(n+1)])`
-/

namespace A027147.P12109403848687068013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027147.P12109403848687068013

/-! ## A027147.P17913475515435028291

`A027144(eq[n+4, A061579(n)]+1)`
-/

namespace A027147.P17913475515435028291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027147.P17913475515435028291

/-! ## A027147.P13345837756499173379

`A027144(A167614(2*(n+1))+A016789(n))`
-/

namespace A027147.P13345837756499173379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A167614 (2 * (n + 1)) + A016789 n).toNat

end

end A027147.P13345837756499173379

/-! ## A027147.P4145227774553551826

`A027144(A000096(2*n+3)-A024000(n+2)+1)`
-/

namespace A027147.P4145227774553551826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A000096 (2 * n + 3) - A024000 (n + 2) + 1).toNat

end

end A027147.P4145227774553551826

/-!
# A027148: a(n) = A027144(2n-1, n-1).

The programs for A027148, there is no canonical definition to state claims against.
-/

/-! ## A027148.P5521478809043733284

`A027150(Δ[n²])`
-/

namespace A027148.P5521478809043733284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027148.P5521478809043733284

/-! ## A027148.P12462537482758395454

`abs(A027150(2*n+1)-1)+1`
-/

namespace A027148.P12462537482758395454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027150 (2 * n + 1) - 1| + 1

end

end A027148.P12462537482758395454

/-! ## A027148.P12489986624151786809

`record[A027150(A004442(n))]`
-/

namespace A027148.P12489986624151786809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027148.P12489986624151786809

/-! ## A027148.P11135786615714928844

`record[A027150(A006257(n))]`
-/

namespace A027148.P11135786615714928844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027148.P11135786615714928844

/-! ## A027148.P1080538923956283659

`record[A027150(A093178(n))]`
-/

namespace A027148.P1080538923956283659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027148.P1080538923956283659

/-! ## A027148.P11440590082256496042

`record[A027150(A000265(n+1))]`
-/

namespace A027148.P11440590082256496042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027148.P11440590082256496042

/-! ## A027148.P347398202291845860

`record[A027150(A028234(n+1))]`
-/

namespace A027148.P347398202291845860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027148.P347398202291845860

/-! ## A027148.P16518185198798259127

`record[A027150(n)/A172282(n)]`
-/

namespace A027148.P16518185198798259127
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027150 n : ℚ) / (A172282 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027148.P16518185198798259127

/-! ## A027148.P6853227949704540107

`record[and(A027150(n), A094267(n))]`
-/

namespace A027148.P6853227949704540107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027150 n) (A094267 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027148.P6853227949704540107

/-! ## A027148.P526607196416532155

`2*A027150(2*n+1)/A010673(2*n+1)`
-/

namespace A027148.P526607196416532155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A027150 (2 * n + 1) : ℚ) / (A010673 (2 * n + 1) : ℚ)

end

end A027148.P526607196416532155

/-! ## A027148.P14270058271589046052

`abs(A027150(A005408(n))*A165326(n))`
-/

namespace A027148.P14270058271589046052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027150 (A005408 n).toNat * A165326 n|

end

end A027148.P14270058271589046052

/-! ## A027148.P10039966404910118219

`A027150(A005408(n))-A010673(2*n)`
-/

namespace A027148.P10039966404910118219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027150 (A005408 n).toNat - A010673 (2 * n)

end

end A027148.P10039966404910118219

/-! ## A027148.P15572307034145743848

`2*(n+1)*A027150(2*n+1)/A004277(n+1)`
-/

namespace A027148.P15572307034145743848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) * A027150 (2 * n + 1) : ℚ) / (A004277 (n + 1) : ℚ)

end

end A027148.P15572307034145743848

/-!
# A027149: a(n) = A027144(2n-1, n-2).

The programs for A027149, there is no canonical definition to state claims against.
-/

/-! ## A027149.P9772429218998990284

`A027144(∑[2*(2*(n+1)+1)]+1)`
-/

namespace A027149.P9772429218998990284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027149.P9772429218998990284

/-! ## A027149.P13000901011307366254

`record[A010052(2*(n+2))*A027144(n+1)]`
-/

namespace A027149.P13000901011307366254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * (n + 2)) * A027144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027149.P13000901011307366254

/-! ## A027149.P8006898359764635583

`record[A027144(2*n+1)/A078740(n+1)]`
-/

namespace A027149.P8006898359764635583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027144 (2 * n + 1) : ℚ) / (A078740 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027149.P8006898359764635583

/-!
# A027150: a(n) = A027144(n, floor(n/2)).

The programs for A027150, there is no canonical definition to state claims against.
-/

/-! ## A027150.P3005637075765528513

`A027144(∑[or(1, n)])`
-/

namespace A027150.P3005637075765528513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027150.P3005637075765528513

/-! ## A027150.P10642195488618523796

`A027144(A000982(n+1))`
-/

namespace A027150.P10642195488618523796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A000982 (n + 1)).toNat

end

end A027150.P10642195488618523796

/-! ## A027150.P6693034374003607070

`A027144(A030978(n+1))`
-/

namespace A027150.P6693034374003607070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A030978 (n + 1)).toNat

end

end A027150.P6693034374003607070

/-! ## A027150.P8585169712783615004

`A027144(A194274(n)+1)`
-/

namespace A027150.P8585169712783615004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A194274 n + 1).toNat

end

end A027150.P8585169712783615004

/-! ## A027150.P16296233845918745829

`A027144(A008619(n)+∑[n])`
-/

namespace A027150.P16296233845918745829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A008619 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A027150.P16296233845918745829

/-! ## A027150.P18321618288213718460

`A027144(A099392(n+1)+n)`
-/

namespace A027150.P18321618288213718460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A099392 (n + 1) + (n : ℤ)).toNat

end

end A027150.P18321618288213718460

/-! ## A027150.P7719264030097580040

`A027144(A004526(n)+A000124(n))`
-/

namespace A027150.P7719264030097580040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027144 (A004526 n + A000124 n).toNat

end

end A027150.P7719264030097580040

/-!
# A027151: a(n) = T(n,0) + T(n,1) + ... + T(n,n), T given by A027144.

The programs for A027151, the canonical program `A027151.P7554063545568390627` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027151 has offset 0).

The definition of A027151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027151.P7554063545568390627

`6*a(n-2)+3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=21`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027151

/-- `6*a(n-2)+3*a(n-4)` -/
def P7554063545568390627.Spec : Prop :=
  ∀ n, (P7554063545568390627.a n : ℤ) = A027151 n

theorem P7554063545568390627.correct : P7554063545568390627.Spec := by
  intro n
  simp only [A027151]

end A027151

/-! ## A027151.P15253202457244447555

`3^and(1, n)*A287811(floor(n/2))`
-/

namespace A027151.P15253202457244447555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.land 1 n : ℤ) * A287811 ⌊(n : ℚ) / 2⌋.toNat

end

end A027151.P15253202457244447555

namespace A027151

/-- `3^and(1, n)*A287811(floor(n/2))` -/
def P15253202457244447555.Spec : Prop :=
  ∀ n, P15253202457244447555.a n = A027151 n

end A027151

/-! ## A027151.P1490767705427635153

`∪[A141041(n), A287811(n)]`
-/

namespace A027151.P1490767705427635153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287811 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027151.P1490767705427635153

namespace A027151

/-- `∪[A141041(n), A287811(n)]` -/
def P1490767705427635153.Spec : Prop :=
  ∀ n, (P1490767705427635153.a n : ℤ) = A027151 n

end A027151

/-! ## A027151.P16008902455304096492

`∪[abs(A099842(n)), A141041(n)]`
-/

namespace A027151.P16008902455304096492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099842 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027151.P16008902455304096492

namespace A027151

/-- `∪[abs(A099842(n)), A141041(n)]` -/
def P16008902455304096492.Spec : Prop :=
  ∀ n, (P16008902455304096492.a n : ℤ) = A027151 n

end A027151

/-! ## A027151.P15021589546076372673

`∪[A141041(3*(n+1))%A109113(n), A141041(n)]`
-/

namespace A027151.P15021589546076372673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141041 (3 * (n + 1))) (A109113 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027151.P15021589546076372673

namespace A027151

/-- `∪[A141041(3*(n+1))%A109113(n), A141041(n)]` -/
def P15021589546076372673.Spec : Prop :=
  ∀ n, (P15021589546076372673.a n : ℤ) = A027151 n

end A027151

/-!
# A027152: T(n,0) + T(n,1) + ... + T(n,[ n/2 ]), T given by A027144.

The programs for A027152, there is no canonical definition to state claims against.
-/

/-! ## A027152.P5300911292192814963

`or(2^n-n%2, A210210(n!))`
-/

namespace A027152.P5300911292192814963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ n : ℤ) - ((n % 2 : ℕ) : ℤ)) (A210210 (Nat.factorial n))

end

end A027152.P5300911292192814963

/-! ## A027152.P9425976854635063251

`A363488(A319719(n))-1`
-/

namespace A027152.P9425976854635063251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363488 (A319719 n).toNat - 1

end

end A027152.P9425976854635063251

/-! ## A027152.P8170844024115426482

`or(A051049(n), A253092(n!))`
-/

namespace A027152.P8170844024115426482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A253092 (Nat.factorial n))

end

end A027152.P8170844024115426482

/-!
# A027153: a(n) = Sum_{0<=j<=i<=n} A027144(i, j).

The programs for A027153, the canonical program `A027153.P16442695693211573544` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027153 has offset 0).

The definition of A027153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027153.P16442695693211573544

`∑[A027151(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027153

/-- `∑[A027151(n)]` -/
def P16442695693211573544.Spec : Prop :=
  ∀ n, P16442695693211573544.a n = A027153 n

theorem P16442695693211573544.correct : P16442695693211573544.Spec := by
  intro n
  simp only [A027153]

end A027153

/-! ## A027153.P1244467427050231605

`A027151(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A027153.P1244467427050231605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027151 n + a (A023443 n).toNat

end

end A027153.P1244467427050231605

namespace A027153

/-- `A027151(n)+a(A023443(n))` -/
def P1244467427050231605.Spec : Prop :=
  ∀ n, P1244467427050231605.a n = A027153 n

end A027153

/-! ## A027153.P11620937878826211373

`A027151(n)+a(A140106(2*n+1))` with `a(0)=1`
-/

namespace A027153.P11620937878826211373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027151 n + a (A140106 (2 * n + 1)).toNat

end

end A027153.P11620937878826211373

namespace A027153

/-- `A027151(n)+a(A140106(2*n+1))` -/
def P11620937878826211373.Spec : Prop :=
  ∀ n, P11620937878826211373.a n = A027153 n

end A027153

/-! ## A027153.P16313465436200910104

`a(n-1)+or(A027151(n), A071986(n+1))` with `a(0)=1, a(1)=4`
-/

namespace A027153.P16313465436200910104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + Int.lor (A027151 n) (A071986 (n + 1))

end

end A027153.P16313465436200910104

namespace A027153

/-- `a(n-1)+or(A027151(n), A071986(n+1))` -/
def P16313465436200910104.Spec : Prop :=
  ∀ n, P16313465436200910104.a n = A027153 n

end A027153

/-! ## A027153.P17834730331648189718

`a(n-1)-A027151(n)*A033999(A109613(n))` with `a(0)=1`
-/

namespace A027153.P17834730331648189718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A027151 n * A033999 (A109613 n).toNat

end

end A027153.P17834730331648189718

namespace A027153

/-- `a(n-1)-A027151(n)*A033999(A109613(n))` -/
def P17834730331648189718.Spec : Prop :=
  ∀ n, P17834730331648189718.a n = A027153 n

end A027153

/-!
# A027154: a(n) = Sum_{k=0..floor(n/2)} A027144(n-k, k).

The programs for A027154, the canonical program `A027154.P2407217888735313623` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027154 has offset 0).

The definition of A027154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027154.P2407217888735313623

`2*a(n-2)+3*a(n-4)+4*a(n-6)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=9, a(5)=15`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027154

/-- `2*a(n-2)+3*a(n-4)+4*a(n-6)` -/
def P2407217888735313623.Spec : Prop :=
  ∀ n, (P2407217888735313623.a n : ℤ) = A027154 n

theorem P2407217888735313623.correct : P2407217888735313623.Spec := by
  intro n
  simp only [A027154]

end A027154

/-! ## A027154.P1628311595613373018

`A368729(A066372(n+1))`
-/

namespace A027154.P1628311595613373018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (A066372 (n + 1)).toNat

end

end A027154.P1628311595613373018

namespace A027154

/-- `A368729(A066372(n+1))` -/
def P1628311595613373018.Spec : Prop :=
  ∀ n, P1628311595613373018.a n = A027154 n

end A027154

/-! ## A027154.P18279008881376036346

`or(1, A194339(A030227(n+1)²))`
-/

namespace A027154.P18279008881376036346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A194339 (A030227 (n + 1) ^ 2).toNat)

end

end A027154.P18279008881376036346

namespace A027154

/-- `or(1, A194339(A030227(n+1)²))` -/
def P18279008881376036346.Spec : Prop :=
  ∀ n, P18279008881376036346.a n = A027154 n

end A027154

/-! ## A027154.P5793599099381944041

`or(A274183(n+1), A324760(A324840(n+1)))`
-/

namespace A027154.P5793599099381944041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A274183 (n + 1)) (A324760 (A324840 (n + 1)).toNat)

end

end A027154.P5793599099381944041

namespace A027154

/-- `or(A274183(n+1), A324760(A324840(n+1)))` -/
def P5793599099381944041.Spec : Prop :=
  ∀ n, P5793599099381944041.a n = A027154 n

end A027154

/-!
# A027155: Greatest number in row n of array T given by A027144.

The programs for A027155, there is no canonical definition to state claims against.
-/

/-! ## A027155.P442880774825005591

`floor(2^(n+1)/(n+1))*A034444(A000984(n))`
-/

namespace A027155.P442880774825005591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋ * A034444 (A000984 n).toNat

end

end A027155.P442880774825005591

/-! ## A027155.P3546533989505449811

`A265537(A265534(3*n+2))*A265581(n)`
-/

namespace A027155.P3546533989505449811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265537 (A265534 (3 * n + 2)).toNat * A265581 n

end

end A027155.P3546533989505449811

/-! ## A027155.P3537012325641690106

`or(∑[A126989(n+1)], Δ[n²])+1`
-/

namespace A027155.P3537012325641690106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126989 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 1

end

end A027155.P3537012325641690106

/-!
# A027156: Self-convolution of array T given by A027144.

The programs for A027156, there is no canonical definition to state claims against.
-/

/-! ## A027156.P68387464937494191

`A005843(A083420(n)+A000684(n+1))`
-/

namespace A027156.P68387464937494191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A083420 n + A000684 (n + 1)).toNat

end

end A027156.P68387464937494191

/-!
# A027157: Triangular array T given T(n,k)=(1/2)*t(n+1,k+1), 0<=k<=n, n >= 0, t given by A027144.

The programs for A027157, there is no canonical definition to state claims against.
-/

/-! ## A027157.P16208133623158627074

`A027144(comp[∑[n]]+1)/2`
-/

namespace A027157.P16208133623158627074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2

end

end A027157.P16208133623158627074

/-! ## A027157.P7935935069611443982

`floor(A027144(comp[C(n, 2)]+1)/2)`
-/

namespace A027157.P7935935069611443982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2⌋

end

end A027157.P7935935069611443982

/-! ## A027157.P17072641297350244450

`ceil(A027144(comp[C(n+1, 2)]+1)/2)`
-/

namespace A027157.P17072641297350244450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2⌉

end

end A027157.P17072641297350244450

/-! ## A027157.P9598454806160564134

`floor(A027144(A007401(n+1)+2)/2)`
-/

namespace A027157.P9598454806160564134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027144 (A007401 (n + 1) + 2).toNat : ℚ) / 2⌋

end

end A027157.P9598454806160564134

/-! ## A027157.P18165191511792978953

`ceil(A027144(A014132(n+1)+1)/2)`
-/

namespace A027157.P18165191511792978953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027144 (A014132 (n + 1) + 1).toNat : ℚ) / 2⌉

end

end A027157.P18165191511792978953

/-! ## A027157.P15955596415263688640

`A324874(A014442(n+1))+A027144(A007401(n+1)+2)/2`
-/

namespace A027157.P15955596415263688640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324874 (A014442 (n + 1)).toNat : ℚ) + (A027144 (A007401 (n + 1) + 2).toNat : ℚ) / 2

end

end A027157.P15955596415263688640

/-! ## A027157.P12837943701024572255

`A305425(A027144(comp[∑[n]]+1))`
-/

namespace A027157.P12837943701024572255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A027144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A027157.P12837943701024572255

/-! ## A027157.P18042929473131582477

`A004526(A027144(comp[∑[n]]+1)+1)`
-/

namespace A027157.P18042929473131582477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A027144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1).toNat

end

end A027157.P18042929473131582477

/-! ## A027157.P2232620576387847137

`A008619(A027144(comp[∑[n]]+1)-2)`
-/

namespace A027157.P2232620576387847137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A027144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 2).toNat

end

end A027157.P2232620576387847137

/-!
# A027158: a(n) = T(2n,n), T given by A027157.

The programs for A027158, there is no canonical definition to state claims against.
-/

/-! ## A027158.P513473555131918346

`A027163(2*n)`
-/

namespace A027158.P513473555131918346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027163 (2 * n)

end

end A027158.P513473555131918346

/-! ## A027158.P5763080427173291672

`record[A027163(n)/gcd(2, n+1)]`
-/

namespace A027158.P5763080427173291672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027163 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027158.P5763080427173291672

/-! ## A027158.P16129033771313843726

`record[A027163(A276151(n+1))]`
-/

namespace A027158.P16129033771313843726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027163 (A276151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027158.P16129033771313843726

/-! ## A027158.P1899707029537422094

`record[A027163(A093178(n)-1)]`
-/

namespace A027158.P1899707029537422094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027163 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027158.P1899707029537422094

/-! ## A027158.P2318704508237774140

`record[A027163(n)/A000034(n)]`
-/

namespace A027158.P2318704508237774140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027163 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027158.P2318704508237774140

/-! ## A027158.P182309682883152446

`record[A027163(n)/dr(A061393(n))]`
-/

namespace A027158.P182309682883152446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027163 n : ℚ) / (SequenceMachineLib.digitalRoot (A061393 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027158.P182309682883152446

/-! ## A027158.P16107924319244444422

`A027163(A014601(n))/A000034(n)`
-/

namespace A027158.P16107924319244444422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027163 (A014601 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A027158.P16107924319244444422

/-! ## A027158.P12195955278773211798

`gcd(A000038(n), A027163(A005843(n)))`
-/

namespace A027158.P12195955278773211798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A027163 (A005843 n).toNat)

end

end A027158.P12195955278773211798

/-! ## A027158.P1390298761974341804

`A027157((n+1)²+n²)`
-/

namespace A027158.P1390298761974341804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 ((n + 1) ^ 2 + n ^ 2)

end

end A027158.P1390298761974341804

/-!
# A027159: a(n) = T(2n,n-1), T given by A027157.

The programs for A027159, there is no canonical definition to state claims against.
-/

/-! ## A027159.P14944212657521263624

`A027148(n+2)/2`
-/

namespace A027159.P14944212657521263624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027148 (n + 2) : ℚ) / 2

end

end A027159.P14944212657521263624

/-! ## A027159.P4374043430956517773

`A027150(2*n+3)/2`
-/

namespace A027159.P4374043430956517773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027150 (2 * n + 3) : ℚ) / 2

end

end A027159.P4374043430956517773

/-! ## A027159.P15708968527884664208

`2^A008683(A006450(n+1))*A027148(n+2)`
-/

namespace A027159.P15708968527884664208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A027148 (n + 2) : ℚ)

end

end A027159.P15708968527884664208

/-! ## A027159.P15261148202762058297

`A027157(∑[4*(n+1)])`
-/

namespace A027159.P15261148202762058297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027159.P15261148202762058297

/-! ## A027159.P10920905491983465736

`A027157(∑[A047550(n+1)])%A027169(n)`
-/

namespace A027159.P10920905491983465736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027157 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A027169 n)

end

end A027159.P10920905491983465736

/-!
# A027160: a(n) = T(2n,n-2), T given by A027157.

The programs for A027160, there is no canonical definition to state claims against.
-/

/-! ## A027160.P6441090537789828329

`A027149(n+3)/2`
-/

namespace A027160.P6441090537789828329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027149 (n + 3) : ℚ) / 2

end

end A027160.P6441090537789828329

/-! ## A027160.P751386437445892294

`A027157(A152813(n)+8)`
-/

namespace A027160.P751386437445892294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (A152813 n + 8).toNat

end

end A027160.P751386437445892294

/-! ## A027160.P14058362338258835413

`A027157(A046092(n+2)-1)`
-/

namespace A027160.P14058362338258835413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (A046092 (n + 2) - 1).toNat

end

end A027160.P14058362338258835413

/-! ## A027160.P1407636623177540110

`A027157(A000124(2*(n+2))+n)`
-/

namespace A027160.P1407636623177540110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (A000124 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A027160.P1407636623177540110

/-! ## A027160.P9606556767004986996

`A027157(A000217(2*(n+2))+n+1)`
-/

namespace A027160.P9606556767004986996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (A000217 (2 * (n + 2)) + (n + 1 : ℤ)).toNat

end

end A027160.P9606556767004986996

/-!
# A027161: T(2n-1,n-1), T given by A027157.

The programs for A027161, there is no canonical definition to state claims against.
-/

/-! ## A027161.P13925544128573587014

`A027163(Δ[n²])`
-/

namespace A027161.P13925544128573587014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027163 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027161.P13925544128573587014

/-! ## A027161.P17027599628898391534

`lcm(2, A027163(2*n+1))`
-/

namespace A027161.P17027599628898391534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A027163 (2 * n + 1))

end

end A027161.P17027599628898391534

/-! ## A027161.P18260260538263195352

`record[A027163(A093178(n))]`
-/

namespace A027161.P18260260538263195352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027163 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027161.P18260260538263195352

/-! ## A027161.P12710943805130907867

`record[A027163(A276151(n+1)+1)]`
-/

namespace A027161.P12710943805130907867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027163 (A276151 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027161.P12710943805130907867

/-! ## A027161.P2503058261008382226

`gcd(A000038(n), A027163(A005843(n)+1))`
-/

namespace A027161.P2503058261008382226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A027163 (A005843 n + 1).toNat)

end

end A027161.P2503058261008382226

/-! ## A027161.P1802527687236320515

`A027145(n+1)/2`
-/

namespace A027161.P1802527687236320515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027145 (n + 1) : ℚ) / 2

end

end A027161.P1802527687236320515

/-! ## A027161.P12208886077203733447

`Δ[∑[A027145(n)]/2]`
-/

namespace A027161.P12208886077203733447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027145 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027161.P12208886077203733447

/-! ## A027161.P13959073800669830408

`A027150(2*(n+1))/2`
-/

namespace A027161.P13959073800669830408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027150 (2 * (n + 1)) : ℚ) / 2

end

end A027161.P13959073800669830408

/-! ## A027161.P2920438146242045923

`2*A027163(2*n+1)/A000034(2*n+1)`
-/

namespace A027161.P2920438146242045923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A027163 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A027161.P2920438146242045923

/-! ## A027161.P5340456980849998435

`2*A027163(2*n+1)/A061393(2*n+1)`
-/

namespace A027161.P5340456980849998435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A027163 (2 * n + 1) : ℚ) / (A061393 (2 * n + 1) : ℚ)

end

end A027161.P5340456980849998435

/-! ## A027161.P9820826632787553523

`2*A027163(2*n+1)/A089080(2*(n+1))`
-/

namespace A027161.P9820826632787553523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A027163 (2 * n + 1) : ℚ) / (A089080 (2 * (n + 1)) : ℚ)

end

end A027161.P9820826632787553523

/-! ## A027161.P1448646246357132958

`gcd(A005843(2*n)*A027163(2*n+1), A027163(2*n+1))`
-/

namespace A027161.P1448646246357132958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (2 * n) * A027163 (2 * n + 1)) (A027163 (2 * n + 1))

end

end A027161.P1448646246357132958

/-!
# A027162: a(n) = T(2n-1,n-2), T given by A027157.

The programs for A027162, there is no canonical definition to state claims against.
-/

/-! ## A027162.P15142334308870530719

`A027146(n+2)/2`
-/

namespace A027162.P15142334308870530719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027146 (n + 2) : ℚ) / 2

end

end A027162.P15142334308870530719

/-! ## A027162.P5296248449657640026

`A027157(A056220(n+2))`
-/

namespace A027162.P5296248449657640026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (A056220 (n + 2)).toNat

end

end A027162.P5296248449657640026

/-! ## A027162.P4068407590833042528

`A027157(A268581(n)+2)`
-/

namespace A027162.P4068407590833042528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (A268581 n + 2).toNat

end

end A027162.P4068407590833042528

/-! ## A027162.P16810523172824347145

`A027157(A004273((n+2)²))`
-/

namespace A027162.P16810523172824347145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (A004273 ((n + 2) ^ 2)).toNat

end

end A027162.P16810523172824347145

/-! ## A027162.P17244989489015132858

`A027157(A005408((n+2)²-1))`
-/

namespace A027162.P17244989489015132858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (A005408 ((n + 2) ^ 2 - 1)).toNat

end

end A027162.P17244989489015132858

/-!
# A027163: a(n) = T(n,[ n/2 ]), T given by A027157.

The programs for A027163, there is no canonical definition to state claims against.
-/

/-! ## A027163.P7315695763548480301

`∪[A027161(n+1), A027158(n)]`
-/

namespace A027163.P7315695763548480301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027158 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027163.P7315695763548480301

/-! ## A027163.P8090439269974391961

`∪[A027157((n+1)²+n²), A027161(n+1)]`
-/

namespace A027163.P8090439269974391961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 ((n + 1) ^ 2 + n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027163.P8090439269974391961

/-! ## A027163.P7391601146506388424

`A027157(floor(sqrt(n^4/4))+n+1)`
-/

namespace A027163.P7391601146506388424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (⌊Real.sqrt ((n ^ 4 : ℚ) / 4 : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A027163.P7391601146506388424

/-! ## A027163.P10958461845859784387

`A027144(A099392(n+3))/2`
-/

namespace A027163.P10958461845859784387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027144 (A099392 (n + 3)).toNat : ℚ) / 2

end

end A027163.P10958461845859784387

/-! ## A027163.P16041719715855461695

`∪[A027157(2*(n+1)²), A027157((n+1)²+n²)]`
-/

namespace A027163.P16041719715855461695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 (2 * (n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027157 ((n + 1) ^ 2 + n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027163.P16041719715855461695

/-!
# A027164: a(n) = T(n,0) + T(n,1) + ... + T(n,n), T given by A027157.

The programs for A027164, the canonical program `A027164.P11103221146335368802` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027164 has offset 0).

The definition of A027164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027164.P11103221146335368802

`floor(Δ[A027153(n)/2])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027164

/-- `floor(Δ[A027153(n)/2])` -/
def P11103221146335368802.Spec : Prop :=
  ∀ n, P11103221146335368802.a n = A027164 n

theorem P11103221146335368802.correct : P11103221146335368802.Spec := by
  intro n
  simp only [A027164]

end A027164

/-! ## A027164.P2795482557110769507

`∑[Δ[A027151(n)]/2]`
-/

namespace A027164.P2795482557110769507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027151 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027164.P2795482557110769507

namespace A027164

/-- `∑[Δ[A027151(n)]/2]` -/
def P2795482557110769507.Spec : Prop :=
  ∀ n, P2795482557110769507.a n = (A027164 n : ℚ)

end A027164

/-! ## A027164.P7880150184938844309

`floor(A027151(n+1)/2)`
-/

namespace A027164.P7880150184938844309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027151 (n + 1) : ℚ) / 2⌋

end

end A027164.P7880150184938844309

namespace A027164

/-- `floor(A027151(n+1)/2)` -/
def P7880150184938844309.Spec : Prop :=
  ∀ n, P7880150184938844309.a n = A027164 n

end A027164

/-! ## A027164.P12278949868047216708

`(A027151(n+1)-A007318(C(2, n)))/2`
-/

namespace A027164.P12278949868047216708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027151 (n + 1) - A007318 (Nat.choose 2 n) : ℚ) / 2

end

end A027164.P12278949868047216708

namespace A027164

/-- `(A027151(n+1)-A007318(C(2, n)))/2` -/
def P12278949868047216708.Spec : Prop :=
  ∀ n, P12278949868047216708.a n = (A027164 n : ℚ)

end A027164

/-! ## A027164.P5171919509203181422

`(A033999(2*n+1)+A027151(n+1))/2`
-/

namespace A027164.P5171919509203181422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) + A027151 (n + 1) : ℚ) / 2

end

end A027164.P5171919509203181422

namespace A027164

/-- `(A033999(2*n+1)+A027151(n+1))/2` -/
def P5171919509203181422.Spec : Prop :=
  ∀ n, P5171919509203181422.a n = (A027164 n : ℚ)

end A027164

/-! ## A027164.P14362202972203274123

`(A027151(n+1)-A001222(A088732(n)))/2`
-/

namespace A027164.P14362202972203274123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027151 (n + 1) - A001222 (A088732 n).toNat : ℚ) / 2

end

end A027164.P14362202972203274123

namespace A027164

/-- `(A027151(n+1)-A001222(A088732(n)))/2` -/
def P14362202972203274123.Spec : Prop :=
  ∀ n, P14362202972203274123.a n = (A027164 n : ℚ)

end A027164

/-!
# A027166: a(n) = Sum_{0<=j<=i<=n} A027157(i, j).

The programs for A027166, the canonical program `A027166.P16041641435082422667` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027166 has offset 0).

The definition of A027166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027166.P16041641435082422667

`∑[A027164(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027166

/-- `∑[A027164(n)]` -/
def P16041641435082422667.Spec : Prop :=
  ∀ n, P16041641435082422667.a n = A027166 n

theorem P16041641435082422667.correct : P16041641435082422667.Spec := by
  intro n
  simp only [A027166]

end A027166

/-! ## A027166.P9270992956218256523

`∑[∑[Δ[A027151(n)]/2]]`
-/

namespace A027166.P9270992956218256523
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027151 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027166.P9270992956218256523

namespace A027166

/-- `∑[∑[Δ[A027151(n)]/2]]` -/
def P9270992956218256523.Spec : Prop :=
  ∀ n, P9270992956218256523.a n = (A027166 n : ℚ)

end A027166

/-! ## A027166.P17094719705891011562

`∑[floor(A027151(n+1)/2)]`
-/

namespace A027166.P17094719705891011562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027151 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027166.P17094719705891011562

namespace A027166

/-- `∑[floor(A027151(n+1)/2)]` -/
def P17094719705891011562.Spec : Prop :=
  ∀ n, P17094719705891011562.a n = A027166 n

end A027166

/-! ## A027166.P3100298105192158338

`(A027153(n+1)-(n+2))/2`
-/

namespace A027166.P3100298105192158338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027153 (n + 1) - (n + 2 : ℤ) : ℚ) / 2

end

end A027166.P3100298105192158338

namespace A027166

/-- `(A027153(n+1)-(n+2))/2` -/
def P3100298105192158338.Spec : Prop :=
  ∀ n, P3100298105192158338.a n = (A027166 n : ℚ)

end A027166

/-! ## A027166.P9367045115886000691

`a(n-1)+A027164(n)+A000007(n)` with `a(0)=1`
-/

namespace A027166.P9367045115886000691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A027164 n + A000007 n)

end

end A027166.P9367045115886000691

namespace A027166

/-- `a(n-1)+A027164(n)+A000007(n)` -/
def P9367045115886000691.Spec : Prop :=
  ∀ n, P9367045115886000691.a n = A027166 n

end A027166

/-!
# A027167: a(n) = Sum_{k=0..floor(n/2)} A027157(n-k, k).

The programs for A027167, the canonical program `A027167.P141695092614448908` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027167 has offset 0).

The definition of A027167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 386 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027167.P141695092614448908

`floor(A027154(n+2)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027167

/-- `floor(A027154(n+2)/2)` -/
def P141695092614448908.Spec : Prop :=
  ∀ n, P141695092614448908.a n = A027167 n

theorem P141695092614448908.correct : P141695092614448908.Spec := by
  intro n
  simp only [A027167]

end A027167

/-! ## A027167.P9464201259590588183

`∑[Δ[A027154(n+1)]/2]`
-/

namespace A027167.P9464201259590588183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027154 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027167.P9464201259590588183

namespace A027167

/-- `∑[Δ[A027154(n+1)]/2]` -/
def P9464201259590588183.Spec : Prop :=
  ∀ n, P9464201259590588183.a n = (A027167 n : ℚ)

end A027167

/-! ## A027167.P10730826611583187060

`xor(1, A027154(n+2))/A000034(2*n+1)`
-/

namespace A027167.P10730826611583187060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A027154 (n + 2)) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A027167.P10730826611583187060

namespace A027167

/-- `xor(1, A027154(n+2))/A000034(2*n+1)` -/
def P10730826611583187060.Spec : Prop :=
  ∀ n, P10730826611583187060.a n = (A027167 n : ℚ)

end A027167

/-! ## A027167.P11706365501005505174

`xor(1, A027154(n+2))/A020639(A059132(n))`
-/

namespace A027167.P11706365501005505174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A027154 (n + 2)) : ℚ) / (A020639 (A059132 n).toNat : ℚ)

end

end A027167.P11706365501005505174

namespace A027167

/-- `xor(1, A027154(n+2))/A020639(A059132(n))` -/
def P11706365501005505174.Spec : Prop :=
  ∀ n, P11706365501005505174.a n = (A027167 n : ℚ)

end A027167

/-! ## A027167.P13073612255455143571

`xor(1, A027154(n+2))/ratio[A000079(n)]`
-/

namespace A027167.P13073612255455143571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A027154 (n + 2)) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A027167.P13073612255455143571

namespace A027167

/-- `xor(1, A027154(n+2))/ratio[A000079(n)]` -/
def P13073612255455143571.Spec : Prop :=
  ∀ n, P13073612255455143571.a n = (A027167 n : ℚ)

end A027167

/-!
# A027168: Greatest number in row n of array T given by A027157.

The programs for A027168, there is no canonical definition to state claims against.
-/

/-! ## A027168.P4426048549528399429

`A027155(n+1)/2`
-/

namespace A027168.P4426048549528399429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027155 (n + 1) : ℚ) / 2

end

end A027168.P4426048549528399429

/-! ## A027168.P4728758701987398854

`Δ[∑[A027155(n)]/2]`
-/

namespace A027168.P4728758701987398854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027155 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027168.P4728758701987398854

/-! ## A027168.P9464866452473790719

`record[A027155(n)/A020639(A309266(n))]`
-/

namespace A027168.P9464866452473790719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027155 n : ℚ) / (A020639 (A309266 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027168.P9464866452473790719

/-! ## A027168.P2141842337381740702

`A273943(A027155(n+1))`
-/

namespace A027168.P2141842337381740702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A027155 (n + 1)).toNat

end

end A027168.P2141842337381740702

/-! ## A027168.P4798454579551452647

`Δ[A000265(∑[A027155(n)])]`
-/

namespace A027168.P4798454579551452647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027168.P4798454579551452647

/-!
# A027170: Triangular array T read by rows (4-diamondization of Pascal's triangle). Step 1: t(n,k) = C(n+2,k+1) + C(n+1,k) + C(n+1,k+1) + C(n,k). Step 2: T(n,k) = t(n,k) - t(0,0) + 1. Domain: 0 <= k <= n, n >= 0.

The programs for A027170, the canonical program `A027170.P895611629998342497` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027170 has offset 0).

The definition of A027170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027170.P445935464060343891

`A014430(n)+A028263(n)-3`
-/

namespace A027170.P445935464060343891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n + (A028263 n - 3)

end

end A027170.P445935464060343891

namespace A027170

/-- `A014430(n)+A028263(n)-3` -/
def P445935464060343891.Spec : Prop :=
  ∀ n, P445935464060343891.a n = A027170 n

end A027170

/-! ## A027170.P7682796937330220005

`A131063(n)+2*A051601(n)`
-/

namespace A027170.P7682796937330220005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + 2 * A051601 n

end

end A027170.P7682796937330220005

namespace A027170

/-- `A131063(n)+2*A051601(n)` -/
def P7682796937330220005.Spec : Prop :=
  ∀ n, P7682796937330220005.a n = A027170 n

end A027170

/-! ## A027170.P2195415065364817344

`A007318(n)+A028327(n)-4`
-/

namespace A027170.P2195415065364817344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A028327 n - 4)

end

end A027170.P2195415065364817344

namespace A027170

/-- `A007318(n)+A028327(n)-4` -/
def P2195415065364817344.Spec : Prop :=
  ∀ n, P2195415065364817344.a n = A027170 n

end A027170

/-! ## A027170.P14262221281041403249

`A134636(n)+4*A014473(n)`
-/

namespace A027170.P14262221281041403249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n + 4 * A014473 n

end

end A027170.P14262221281041403249

namespace A027170

/-- `A134636(n)+4*A014473(n)` -/
def P14262221281041403249.Spec : Prop :=
  ∀ n, P14262221281041403249.a n = A027170 n

end A027170

/-! ## A027170.P895611629998342497

`2*A014430(n)+A014473(n)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A027170

/-- `2*A014430(n)+A014473(n)-1` -/
def P895611629998342497.Spec : Prop :=
  ∀ n, P895611629998342497.a n = A027170 n

theorem P895611629998342497.correct : P895611629998342497.Spec := by
  intro n
  simp only [A027170]

end A027170

/-! ## A027170.P16578803104842660904

`A014410(n+2)+A028263(n)-4`
-/

namespace A027170.P16578803104842660904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) + (A028263 n - 4)

end

end A027170.P16578803104842660904

namespace A027170

/-- `A014410(n+2)+A028263(n)-4` -/
def P16578803104842660904.Spec : Prop :=
  ∀ n, P16578803104842660904.a n = A027170 n

end A027170

/-! ## A027170.P3861427201988687599

`A131063(n)+A005843(A051601(n))`
-/

namespace A027170.P3861427201988687599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + A005843 (A051601 n).toNat

end

end A027170.P3861427201988687599

namespace A027170

/-- `A131063(n)+A005843(A051601(n))` -/
def P3861427201988687599.Spec : Prop :=
  ∀ n, P3861427201988687599.a n = A027170 n

end A027170

/-! ## A027170.P751368673450600722

`A014473(n)+A004273(A014430(n))`
-/

namespace A027170.P751368673450600722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A004273 (A014430 n).toNat

end

end A027170.P751368673450600722

namespace A027170

/-- `A014473(n)+A004273(A014430(n))` -/
def P751368673450600722.Spec : Prop :=
  ∀ n, P751368673450600722.a n = A027170 n

end A027170

/-! ## A027170.P12086803588299622046

`A005843(A028263(n)-2)-A007318(n)`
-/

namespace A027170.P12086803588299622046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028263 n - 2).toNat - A007318 n

end

end A027170.P12086803588299622046

namespace A027170

/-- `A005843(A028263(n)-2)-A007318(n)` -/
def P12086803588299622046.Spec : Prop :=
  ∀ n, P12086803588299622046.a n = A027170 n

end A027170

/-! ## A027170.P11065534854179632817

`A134636(n)+A004526(A168625(n))`
-/

namespace A027170.P11065534854179632817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n + A004526 (A168625 n).toNat

end

end A027170.P11065534854179632817

namespace A027170

/-- `A134636(n)+A004526(A168625(n))` -/
def P11065534854179632817.Spec : Prop :=
  ∀ n, P11065534854179632817.a n = A027170 n

end A027170

/-!
# A027171: a(n) = A027170(2n, n).

The programs for A027171, the canonical program `A027171.P5276701231945884533` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027171 has offset 0).

The definition of A027171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027171.P5276701231945884533

`A027177(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027171

/-- `A027177(2*n)` -/
def P5276701231945884533.Spec : Prop :=
  ∀ n, P5276701231945884533.a n = A027171 n

theorem P5276701231945884533.correct : P5276701231945884533.Spec := by
  intro n
  simp only [A027171]

end A027171

/-! ## A027171.P17894318607240477667

`A081496(n+1)-4`
-/

namespace A027171.P17894318607240477667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081496 (n + 1) - 4

end

end A027171.P17894318607240477667

namespace A027171

/-- `A081496(n+1)-4` -/
def P17894318607240477667.Spec : Prop :=
  ∀ n, P17894318607240477667.a n = A027171 n

end A027171

/-! ## A027171.P17956544076617006500

`record[Δ[Δ[A126930(n)]]-4]`
-/

namespace A027171.P17956544076617006500
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027171.P17956544076617006500

namespace A027171

/-- `record[Δ[Δ[A126930(n)]]-4]` -/
def P17956544076617006500.Spec : Prop :=
  ∀ n, P17956544076617006500.a n = A027171 n

end A027171

/-! ## A027171.P17049267549724008081

`(9*n+5)*A000108(n)-4`
-/

namespace A027171.P17049267549724008081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 5 : ℤ) * A000108 n - 4

end

end A027171.P17049267549724008081

namespace A027171

/-- `(9*n+5)*A000108(n)-4` -/
def P17049267549724008081.Spec : Prop :=
  ∀ n, P17049267549724008081.a n = A027171 n

end A027171

/-! ## A027171.P7728695781843734181

`record[A027177(A000265(n+1)-1)]`
-/

namespace A027171.P7728695781843734181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027177 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027171.P7728695781843734181

namespace A027171

/-- `record[A027177(A000265(n+1)-1)]` -/
def P7728695781843734181.Spec : Prop :=
  ∀ n, P7728695781843734181.a n = A027171 n

end A027171

/-! ## A027171.P11296163680477991113

`record[A027177(A093803(n+1)-1)]`
-/

namespace A027171.P11296163680477991113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027177 (A093803 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027171.P11296163680477991113

namespace A027171

/-- `record[A027177(A093803(n+1)-1)]` -/
def P11296163680477991113.Spec : Prop :=
  ∀ n, P11296163680477991113.a n = A027171 n

end A027171

/-! ## A027171.P13206082252710788782

`A000984(n)+2*A115112(n+1)`
-/

namespace A027171.P13206082252710788782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 2 * A115112 (n + 1)

end

end A027171.P13206082252710788782

namespace A027171

/-- `A000984(n)+2*A115112(n+1)` -/
def P13206082252710788782.Spec : Prop :=
  ∀ n, P13206082252710788782.a n = A027171 n

end A027171

/-! ## A027171.P14981680825036033196

`abs(4-(A028329(n+1)+A000984(n)))`
-/

namespace A027171.P14981680825036033196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (A028329 (n + 1) + A000984 n)|

end

end A027171.P14981680825036033196

namespace A027171

/-- `abs(4-(A028329(n+1)+A000984(n)))` -/
def P14981680825036033196.Spec : Prop :=
  ∀ n, P14981680825036033196.a n = A027171 n

end A027171

/-! ## A027171.P11424441094322739998

`A208976(2*n+1)+A208976(2*n)-2`
-/

namespace A027171.P11424441094322739998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 (2 * n + 1) + (A208976 (2 * n) - 2)

end

end A027171.P11424441094322739998

namespace A027171

/-- `A208976(2*n+1)+A208976(2*n)-2` -/
def P11424441094322739998.Spec : Prop :=
  ∀ n, P11424441094322739998.a n = A027171 n

end A027171

/-! ## A027171.P17099680991934108909

`A027170(∑[4*n])`
-/

namespace A027171.P17099680991934108909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027171.P17099680991934108909

namespace A027171

/-- `A027170(∑[4*n])` -/
def P17099680991934108909.Spec : Prop :=
  ∀ n, P17099680991934108909.a n = A027171 n

end A027171

/-!
# A027172: a(n) = (1/2) * A027170(2n, n).

The programs for A027172, the canonical program `A027172.P9065674503103710683` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027172 has offset 1).

The definition of A027172 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027175, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027172.P9065674503103710683

`A027175(n+1)+2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027172

/-- `A027175(n+1)+2` -/
def P9065674503103710683.Spec : Prop :=
  ∀ n, P9065674503103710683.a n = A027172 (n + 1)

theorem P9065674503103710683.correct : P9065674503103710683.Spec := by
  intro n
  simp only [A027172, Nat.add_sub_cancel]

end A027172

/-! ## A027172.P16420045465199710112

`A027171(n+1)/2`
-/

namespace A027172.P16420045465199710112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027171 (n + 1) : ℚ) / 2

end

end A027172.P16420045465199710112

namespace A027172

/-- `A027171(n+1)/2` -/
def P16420045465199710112.Spec : Prop :=
  ∀ n, P16420045465199710112.a n = (A027172 (n + 1) : ℚ)

end A027172

/-! ## A027172.P9957113007545666515

`A027177(Δ[n²])+2`
-/

namespace A027172.P9957113007545666515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027177 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A027172.P9957113007545666515

namespace A027172

/-- `A027177(Δ[n²])+2` -/
def P9957113007545666515.Spec : Prop :=
  ∀ n, P9957113007545666515.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P14441605027570650355

`A030662(n+2)+A010763(n)`
-/

namespace A027172.P14441605027570650355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (n + 2) + A010763 n

end

end A027172.P14441605027570650355

namespace A027172

/-- `A030662(n+2)+A010763(n)` -/
def P14441605027570650355.Spec : Prop :=
  ∀ n, P14441605027570650355.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P17843177031778836762

`A115112(n+2)+A001700(n)`
-/

namespace A027172.P17843177031778836762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115112 (n + 2) + A001700 n

end

end A027172.P17843177031778836762

namespace A027172

/-- `A115112(n+2)+A001700(n)` -/
def P17843177031778836762.Spec : Prop :=
  ∀ n, P17843177031778836762.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P5611277618149462064

`record[A027177(A000265(n+1))+2]`
-/

namespace A027172.P5611277618149462064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027177 (A000265 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027172.P5611277618149462064

namespace A027172

/-- `record[A027177(A000265(n+1))+2]` -/
def P5611277618149462064.Spec : Prop :=
  ∀ n, P5611277618149462064.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P11304932398824371917

`record[A027177(A093803(n+1))+2]`
-/

namespace A027172.P11304932398824371917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027177 (A093803 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027172.P11304932398824371917

namespace A027172

/-- `record[A027177(A093803(n+1))+2]` -/
def P11304932398824371917.Spec : Prop :=
  ∀ n, P11304932398824371917.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P16188995988542092172

`A014495(2*(n+2))+A010763(n)`
-/

namespace A027172.P16188995988542092172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * (n + 2)) + A010763 n

end

end A027172.P16188995988542092172

namespace A027172

/-- `A014495(2*(n+2))+A010763(n)` -/
def P16188995988542092172.Spec : Prop :=
  ∀ n, P16188995988542092172.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P18062844206734708303

`A029651(n+1)+A051924(n+2)-2`
-/

namespace A027172.P18062844206734708303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 (n + 1) + (A051924 (n + 2) - 2)

end

end A027172.P18062844206734708303

namespace A027172

/-- `A029651(n+1)+A051924(n+2)-2` -/
def P18062844206734708303.Spec : Prop :=
  ∀ n, P18062844206734708303.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P5880862620902104440

`A051960(n+1)+A097613(n+2)-2`
-/

namespace A027172.P5880862620902104440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 (n + 1) + (A097613 (n + 2) - 2)

end

end A027172.P5880862620902104440

namespace A027172

/-- `A051960(n+1)+A097613(n+2)-2` -/
def P5880862620902104440.Spec : Prop :=
  ∀ n, P5880862620902104440.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P12498654919526176061

`A201686(2*n+1)+A000984(n+2)`
-/

namespace A027172.P12498654919526176061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (2 * n + 1) + A000984 (n + 2)

end

end A027172.P12498654919526176061

namespace A027172

/-- `A201686(2*n+1)+A000984(n+2)` -/
def P12498654919526176061.Spec : Prop :=
  ∀ n, P12498654919526176061.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P14708604975529236856

`A115112(n+2)+A000984(n+1)/2`
-/

namespace A027172.P14708604975529236856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115112 (n + 2) : ℚ) + (A000984 (n + 1) : ℚ) / 2

end

end A027172.P14708604975529236856

namespace A027172

/-- `A115112(n+2)+A000984(n+1)/2` -/
def P14708604975529236856.Spec : Prop :=
  ∀ n, P14708604975529236856.a n = (A027172 (n + 1) : ℚ)

end A027172

/-! ## A027172.P6832556634762162197

`A001700(n+1)+A010763(n+1)+A010763(n)`
-/

namespace A027172.P6832556634762162197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) + (A010763 (n + 1) + A010763 n)

end

end A027172.P6832556634762162197

namespace A027172

/-- `A001700(n+1)+A010763(n+1)+A010763(n)` -/
def P6832556634762162197.Spec : Prop :=
  ∀ n, P6832556634762162197.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P9059223497943573238

`A030662(n+1)+A030662(n+2)-A001700(n)`
-/

namespace A027172.P9059223497943573238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (n + 1) + (A030662 (n + 2) - A001700 n)

end

end A027172.P9059223497943573238

namespace A027172

/-- `A030662(n+1)+A030662(n+2)-A001700(n)` -/
def P9059223497943573238.Spec : Prop :=
  ∀ n, P9059223497943573238.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P7000207919816116921

`A066796(n+2)-(A024718(n+1)+A024718(n))`
-/

namespace A027172.P7000207919816116921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066796 (n + 2) - (A024718 (n + 1) + A024718 n)

end

end A027172.P7000207919816116921

namespace A027172

/-- `A066796(n+2)-(A024718(n+1)+A024718(n))` -/
def P7000207919816116921.Spec : Prop :=
  ∀ n, P7000207919816116921.a n = A027172 (n + 1)

end A027172

/-! ## A027172.P5179840319913518292

`A027177(2*(n+1))/2`
-/

namespace A027172.P5179840319913518292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027177 (2 * (n + 1)) : ℚ) / 2

end

end A027172.P5179840319913518292

namespace A027172

/-- `A027177(2*(n+1))/2` -/
def P5179840319913518292.Spec : Prop :=
  ∀ n, P5179840319913518292.a n = (A027172 (n + 1) : ℚ)

end A027172

/-! ## A027172.P272973424739865798

`A081496(n+2)/2-2`
-/

namespace A027172.P272973424739865798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081496 (n + 2) : ℚ) / 2 - 2

end

end A027172.P272973424739865798

namespace A027172

/-- `A081496(n+2)/2-2` -/
def P272973424739865798.Spec : Prop :=
  ∀ n, P272973424739865798.a n = (A027172 (n + 1) : ℚ)

end A027172

/-! ## A027172.P3095306323732326127

`A202329(n+1)/2-3`
-/

namespace A027172.P3095306323732326127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202329 (n + 1) : ℚ) / 2 - 3

end

end A027172.P3095306323732326127

namespace A027172

/-- `A202329(n+1)/2-3` -/
def P3095306323732326127.Spec : Prop :=
  ∀ n, P3095306323732326127.a n = (A027172 (n + 1) : ℚ)

end A027172

/-!
# A027173: a(n) = A027170(2n, n-1).

The programs for A027173, the canonical program `A027173.P7610654787817011449` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027173 has offset 1).

The definition of A027173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027173.P7610654787817011449

`A027172(n+2)-(A081496(n+2)+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027173

/-- `A027172(n+2)-(A081496(n+2)+2)` -/
def P7610654787817011449.Spec : Prop :=
  ∀ n, P7610654787817011449.a n = A027173 (n + 1)

theorem P7610654787817011449.correct : P7610654787817011449.Spec := by
  intro n
  simp only [A027173, Nat.add_sub_cancel]

end A027173

/-! ## A027173.P8871332500940782945

`A027172(n+2)-2*(A027172(n+1)+3)`
-/

namespace A027173.P8871332500940782945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027172 (n + 2) - 2 * (A027172 (n + 1) + 3)

end

end A027173.P8871332500940782945

namespace A027173

/-- `A027172(n+2)-2*(A027172(n+1)+3)` -/
def P8871332500940782945.Spec : Prop :=
  ∀ n, P8871332500940782945.a n = A027173 (n + 1)

end A027173

/-! ## A027173.P1230474074434097161

`A027172(n+2)-(A051945(n+1)+A240530(n+1)+2)`
-/

namespace A027173.P1230474074434097161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027172 (n + 2) - (A051945 (n + 1) + (A240530 (n + 1) + 2))

end

end A027173.P1230474074434097161

namespace A027173

/-- `A027172(n+2)-(A051945(n+1)+A240530(n+1)+2)` -/
def P1230474074434097161.Spec : Prop :=
  ∀ n, P1230474074434097161.a n = A027173 (n + 1)

end A027173

/-! ## A027173.P13078465043989633851

`A027172(n+2)-(A051960(n+1)+A003409(n+2)+2)`
-/

namespace A027173.P13078465043989633851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027172 (n + 2) - (A051960 (n + 1) + (A003409 (n + 2) + 2))

end

end A027173.P13078465043989633851

namespace A027173

/-- `A027172(n+2)-(A051960(n+1)+A003409(n+2)+2)` -/
def P13078465043989633851.Spec : Prop :=
  ∀ n, P13078465043989633851.a n = A027173 (n + 1)

end A027173

/-! ## A027173.P9015685298446550266

`A027170((n+1)²+(n+2)²)`
-/

namespace A027173.P9015685298446550266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A027173.P9015685298446550266

namespace A027173

/-- `A027170((n+1)²+(n+2)²)` -/
def P9015685298446550266.Spec : Prop :=
  ∀ n, P9015685298446550266.a n = A027173 (n + 1)

end A027173

/-! ## A027173.P11155038856631724346

`or(floor(acot(n)), A027170(∑[4*(n+1)]+1))`
-/

namespace A027173.P11155038856631724346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A027170 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A027173.P11155038856631724346

namespace A027173

/-- `or(floor(acot(n)), A027170(∑[4*(n+1)]+1))` -/
def P11155038856631724346.Spec : Prop :=
  ∀ n, P11155038856631724346.a n = A027173 (n + 1)

end A027173

/-! ## A027173.P9007788449551363389

`A027170(∑[4*(n+1)]+1)%A027174(n+2)`
-/

namespace A027173.P9007788449551363389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027170 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A027174 (n + 2))

end

end A027173.P9007788449551363389

namespace A027173

/-- `A027170(∑[4*(n+1)]+1)%A027174(n+2)` -/
def P9007788449551363389.Spec : Prop :=
  ∀ n, P9007788449551363389.a n = A027173 (n + 1)

end A027173

/-!
# A027174: a(n) = A027170(2n, n-2).

The programs for A027174, there is no canonical definition to state claims against.
-/

/-! ## A027174.P22193964891644883

`A027170(A090288(n+1))`
-/

namespace A027174.P22193964891644883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A090288 (n + 1)).toNat

end

end A027174.P22193964891644883

/-! ## A027174.P5120049851924006752

`A027170(A051890(n+3))`
-/

namespace A027174.P5120049851924006752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A051890 (n + 3)).toNat

end

end A027174.P5120049851924006752

/-! ## A027174.P6167931930415181662

`A027170(A016825(∑[n+2]))`
-/

namespace A027174.P6167931930415181662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A027174.P6167931930415181662

/-! ## A027174.P1707538853174993344

`A027170(A001844(n+2)+1)`
-/

namespace A027174.P1707538853174993344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A001844 (n + 2) + 1).toNat

end

end A027174.P1707538853174993344

/-! ## A027174.P18173227872786586344

`A027170(A099776(n+2)+1)`
-/

namespace A027174.P18173227872786586344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A099776 (n + 2) + 1).toNat

end

end A027174.P18173227872786586344

/-! ## A027174.P9455852893607748406

`A027170(2*A002061(n+3))`
-/

namespace A027174.P9455852893607748406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (2 * A002061 (n + 3)).toNat

end

end A027174.P9455852893607748406

/-! ## A027174.P11293700411572135688

`A027170(A002378(n+1)+A002378(n+3))`
-/

namespace A027174.P11293700411572135688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A002378 (n + 1) + A002378 (n + 3)).toNat

end

end A027174.P11293700411572135688

/-! ## A027174.P496713022021105531

`A027170(A002061(n+3)+A002061(n+3))`
-/

namespace A027174.P496713022021105531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A002061 (n + 3) + A002061 (n + 3)).toNat

end

end A027174.P496713022021105531

/-!
# A027175: a(n) = A027170(2n-1, n-1).

The programs for A027175, the canonical program `A027175.P14472394576433652177` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027175 has offset 1).

The definition of A027175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027175.P14472394576433652177

`A027177(Δ[n²])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027175

/-- `A027177(Δ[n²])` -/
def P14472394576433652177.Spec : Prop :=
  ∀ n, P14472394576433652177.a n = A027175 (n + 1)

theorem P14472394576433652177.correct : P14472394576433652177.Spec := by
  intro n
  simp only [A027175, Nat.add_sub_cancel]

end A027175

/-! ## A027175.P8426229791575734971

`A027172(n+1)-2`
-/

namespace A027175.P8426229791575734971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027172 (n + 1) - 2

end

end A027175.P8426229791575734971

namespace A027175

/-- `A027172(n+1)-2` -/
def P8426229791575734971.Spec : Prop :=
  ∀ n, P8426229791575734971.a n = A027175 (n + 1)

end A027175

/-! ## A027175.P13786334628450115070

`record[A027177(A000265(n+1))]`
-/

namespace A027175.P13786334628450115070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027177 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027175.P13786334628450115070

namespace A027175

/-- `record[A027177(A000265(n+1))]` -/
def P13786334628450115070.Spec : Prop :=
  ∀ n, P13786334628450115070.a n = A027175 (n + 1)

end A027175

/-! ## A027175.P8901225806297934754

`record[A027177(A093803(n+1))]`
-/

namespace A027175.P8901225806297934754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027177 (A093803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027175.P8901225806297934754

namespace A027175

/-- `record[A027177(A093803(n+1))]` -/
def P8901225806297934754.Spec : Prop :=
  ∀ n, P8901225806297934754.a n = A027175 (n + 1)

end A027175

/-! ## A027175.P12602605094073693938

`A030662(n+2)+A010763(n)-2`
-/

namespace A027175.P12602605094073693938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (n + 2) + (A010763 n - 2)

end

end A027175.P12602605094073693938

namespace A027175

/-- `A030662(n+2)+A010763(n)-2` -/
def P12602605094073693938.Spec : Prop :=
  ∀ n, P12602605094073693938.a n = A027175 (n + 1)

end A027175

/-! ## A027175.P1551006898752184727

`A001700(n)+∑[A026010(A103517(n))]`
-/

namespace A027175.P1551006898752184727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027175.P1551006898752184727

namespace A027175

/-- `A001700(n)+∑[A026010(A103517(n))]` -/
def P1551006898752184727.Spec : Prop :=
  ∀ n, P1551006898752184727.a n = A027175 (n + 1)

end A027175

/-! ## A027175.P7936375710744025300

`A201686(2*n+1)+A201686(A051755(n+3))`
-/

namespace A027175.P7936375710744025300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (2 * n + 1) + A201686 (A051755 (n + 3)).toNat

end

end A027175.P7936375710744025300

namespace A027175

/-- `A201686(2*n+1)+A201686(A051755(n+3))` -/
def P7936375710744025300.Spec : Prop :=
  ∀ n, P7936375710744025300.a n = A027175 (n + 1)

end A027175

/-! ## A027175.P10931638438487283082

`A115112(n+1)+A115112(n+2)-A001700(n)`
-/

namespace A027175.P10931638438487283082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115112 (n + 1) + (A115112 (n + 2) - A001700 n)

end

end A027175.P10931638438487283082

namespace A027175

/-- `A115112(n+1)+A115112(n+2)-A001700(n)` -/
def P10931638438487283082.Spec : Prop :=
  ∀ n, P10931638438487283082.a n = A027175 (n + 1)

end A027175

/-! ## A027175.P13046428538957856577

`A027171(n+1)/2-2`
-/

namespace A027175.P13046428538957856577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027171 (n + 1) : ℚ) / 2 - 2

end

end A027175.P13046428538957856577

namespace A027175

/-- `A027171(n+1)/2-2` -/
def P13046428538957856577.Spec : Prop :=
  ∀ n, P13046428538957856577.a n = (A027175 (n + 1) : ℚ)

end A027175

/-! ## A027175.P9399652412177837105

`A202329(n+1)/2-5`
-/

namespace A027175.P9399652412177837105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202329 (n + 1) : ℚ) / 2 - 5

end

end A027175.P9399652412177837105

namespace A027175

/-- `A202329(n+1)/2-5` -/
def P9399652412177837105.Spec : Prop :=
  ∀ n, P9399652412177837105.a n = (A027175 (n + 1) : ℚ)

end A027175

/-! ## A027175.P4064104677235392372

`2*A027177(2*n+1)-A027177(2*n+1)`
-/

namespace A027175.P4064104677235392372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027177 (2 * n + 1) - A027177 (2 * n + 1)

end

end A027175.P4064104677235392372

namespace A027175

/-- `2*A027177(2*n+1)-A027177(2*n+1)` -/
def P4064104677235392372.Spec : Prop :=
  ∀ n, P4064104677235392372.a n = A027175 (n + 1)

end A027175

/-!
# A027176: a(n) = A027170(2n-1, n-2).

The programs for A027176, the canonical program `A027176.P12879899713189998349` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027176 has offset 2).

The definition of A027176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027176.P12879899713189998349

`A027173(n+2)-(A027172(n+2)+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A027176

/-- `A027173(n+2)-(A027172(n+2)+2)` -/
def P12879899713189998349.Spec : Prop :=
  ∀ n, P12879899713189998349.a n = A027176 (n + 2)

theorem P12879899713189998349.correct : P12879899713189998349.Spec := by
  intro n
  simp only [A027176, Nat.add_sub_cancel]

end A027176

/-! ## A027176.P15597999672708752077

`A027170(2*(n+1)*(n+3))`
-/

namespace A027176.P15597999672708752077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (2 * ((n + 1) * (n + 3)))

end

end A027176.P15597999672708752077

namespace A027176

/-- `A027170(2*(n+1)*(n+3))` -/
def P15597999672708752077.Spec : Prop :=
  ∀ n, P15597999672708752077.a n = A027176 (n + 2)

end A027176

/-! ## A027176.P12805955002391223917

`or(A027170(A268581(n)+1), A151933(n))`
-/

namespace A027176.P12805955002391223917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027170 (A268581 n + 1).toNat) (A151933 n)

end

end A027176.P12805955002391223917

namespace A027176

/-- `or(A027170(A268581(n)+1), A151933(n))` -/
def P12805955002391223917.Spec : Prop :=
  ∀ n, P12805955002391223917.a n = A027176 (n + 2)

end A027176

/-! ## A027176.P12447047696624037271

`A027170(A268581(n)+4)+A000007(n+1)`
-/

namespace A027176.P12447047696624037271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A268581 n + 4).toNat + A000007 (n + 1)

end

end A027176.P12447047696624037271

namespace A027176

/-- `A027170(A268581(n)+4)+A000007(n+1)` -/
def P12447047696624037271.Spec : Prop :=
  ∀ n, P12447047696624037271.a n = A027176 (n + 2)

end A027176

/-! ## A027176.P16701472469283277228

`A027170(A268581(n)+4)/A032741(A038958(n+1))`
-/

namespace A027176.P16701472469283277228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027170 (A268581 n + 4).toNat : ℚ) / (A032741 (A038958 (n + 1)).toNat : ℚ)

end

end A027176.P16701472469283277228

namespace A027176

/-- `A027170(A268581(n)+4)/A032741(A038958(n+1))` -/
def P16701472469283277228.Spec : Prop :=
  ∀ n, P16701472469283277228.a n = (A027176 (n + 2) : ℚ)

end A027176

/-!
# A027177: a(n) = A027170(n, floor(n/2)).

The programs for A027177, the canonical program `A027177.P441101698067802091` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027177 has offset 0).

The definition of A027177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027177.P441101698067802091

`2*A001405(n+2)+A001405(n)-4`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027177

/-- `2*A001405(n+2)+A001405(n)-4` -/
def P441101698067802091.Spec : Prop :=
  ∀ n, P441101698067802091.a n = A027177 n

theorem P441101698067802091.correct : P441101698067802091.Spec := by
  intro n
  simp only [A027177]

end A027177

/-! ## A027177.P1479956219806072541

`∪[A027175(n+1), A027171(n)]`
-/

namespace A027177.P1479956219806072541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027171 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027177.P1479956219806072541

namespace A027177

/-- `∪[A027175(n+1), A027171(n)]` -/
def P1479956219806072541.Spec : Prop :=
  ∀ n, (P1479956219806072541.a n : ℤ) = A027177 n

end A027177

/-! ## A027177.P8643708162359780532

`A001405(n)+∑[2*A007007(n+1)]`
-/

namespace A027177.P8643708162359780532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027177.P8643708162359780532

namespace A027177

/-- `A001405(n)+∑[2*A007007(n+1)]` -/
def P8643708162359780532.Spec : Prop :=
  ∀ n, P8643708162359780532.a n = A027177 n

end A027177

/-! ## A027177.P15013105566275766757

`A027170(∑[and(1, n)+n])`
-/

namespace A027177.P15013105566275766757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027177.P15013105566275766757

namespace A027177

/-- `A027170(∑[and(1, n)+n])` -/
def P15013105566275766757.Spec : Prop :=
  ∀ n, P15013105566275766757.a n = A027177 n

end A027177

/-! ## A027177.P8900034027447002327

`A027170(∑[∑[2*and(1, n)]])`
-/

namespace A027177.P8900034027447002327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027177.P8900034027447002327

namespace A027177

/-- `A027170(∑[∑[2*and(1, n)]])` -/
def P8900034027447002327.Spec : Prop :=
  ∀ n, P8900034027447002327.a n = A027177 n

end A027177

/-! ## A027177.P4591930210083250344

`A027170(A194274(n))`
-/

namespace A027177.P4591930210083250344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A194274 n).toNat

end

end A027177.P4591930210083250344

namespace A027177

/-- `A027170(A194274(n))` -/
def P4591930210083250344.Spec : Prop :=
  ∀ n, P4591930210083250344.a n = A027177 n

end A027177

/-! ## A027177.P16104683444257262094

`A027170(record[A151890(n)])`
-/

namespace A027177.P16104683444257262094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027177.P16104683444257262094

namespace A027177

/-- `A027170(record[A151890(n)])` -/
def P16104683444257262094.Spec : Prop :=
  ∀ n, P16104683444257262094.a n = A027177 n

end A027177

/-! ## A027177.P18126845800290285337

`record[A027170(A166515(n))]`
-/

namespace A027177.P18126845800290285337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A166515 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027177.P18126845800290285337

namespace A027177

/-- `record[A027170(A166515(n))]` -/
def P18126845800290285337.Spec : Prop :=
  ∀ n, P18126845800290285337.a n = A027177 n

end A027177

/-! ## A027177.P7711168534379796129

`A027170(A007590(n+1))`
-/

namespace A027177.P7711168534379796129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A007590 (n + 1)).toNat

end

end A027177.P7711168534379796129

namespace A027177

/-- `A027170(A007590(n+1))` -/
def P7711168534379796129.Spec : Prop :=
  ∀ n, P7711168534379796129.a n = A027177 n

end A027177

/-! ## A027177.P4439328491350102426

`A027170(A166515(2*n))`
-/

namespace A027177.P4439328491350102426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A166515 (2 * n)).toNat

end

end A027177.P4439328491350102426

namespace A027177

/-- `A027170(A166515(2*n))` -/
def P4439328491350102426.Spec : Prop :=
  ∀ n, P4439328491350102426.a n = A027177 n

end A027177

/-! ## A027177.P16296513151826174570

`A027170(A000982(n)+n)`
-/

namespace A027177.P16296513151826174570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A000982 n + (n : ℤ)).toNat

end

end A027177.P16296513151826174570

namespace A027177

/-- `A027170(A000982(n)+n)` -/
def P16296513151826174570.Spec : Prop :=
  ∀ n, P16296513151826174570.a n = A027177 n

end A027177

/-! ## A027177.P6851777816249802178

`A027170(∑[∑[A010673(n)]])`
-/

namespace A027177.P6851777816249802178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027177.P6851777816249802178

namespace A027177

/-- `A027170(∑[∑[A010673(n)]])` -/
def P6851777816249802178.Spec : Prop :=
  ∀ n, P6851777816249802178.a n = A027177 n

end A027177

/-! ## A027177.P9022983622379261869

`A027170(A004526(n)+∑[n])`
-/

namespace A027177.P9022983622379261869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A004526 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A027177.P9022983622379261869

namespace A027177

/-- `A027170(A004526(n)+∑[n])` -/
def P9022983622379261869.Spec : Prop :=
  ∀ n, P9022983622379261869.a n = A027177 n

end A027177

/-! ## A027177.P15390787595126228860

`A027170(∑[n]+log2(A016116(n)))`
-/

namespace A027177.P15390787595126228860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.logb 2 (A016116 n : ℝ))).toNat

end

end A027177.P15390787595126228860

namespace A027177

/-- `A027170(∑[n]+log2(A016116(n)))` -/
def P15390787595126228860.Spec : Prop :=
  ∀ n, P15390787595126228860.a n = A027177 n

end A027177

/-! ## A027177.P11286998929071788426

`record[A027170(gcd(n, A027186(n+1)))]`
-/

namespace A027177.P11286998929071788426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (Int.gcd (n : ℤ) (A027186 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027177.P11286998929071788426

namespace A027177

/-- `record[A027170(gcd(n, A027186(n+1)))]` -/
def P11286998929071788426.Spec : Prop :=
  ∀ n, P11286998929071788426.a n = A027177 n

end A027177

/-! ## A027177.P1283353344555062649

`record[(1-A027186(n+1))*A027170(n)]`
-/

namespace A027177.P1283353344555062649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A027186 (n + 1)) * A027170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027177.P1283353344555062649

namespace A027177

/-- `record[(1-A027186(n+1))*A027170(n)]` -/
def P1283353344555062649.Spec : Prop :=
  ∀ n, P1283353344555062649.a n = A027177 n

end A027177

/-!
# A027178: a(n) = T(n,0) + T(n,1) + ... + T(n,n), T given by A027170.

The programs for A027178, the canonical program `A027178.P2021023385559460405` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027178 has offset 0).

The definition of A027178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027178.P2021023385559460405

`9*2^n-4*n-8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027178

/-- `9*2^n-4*n-8` -/
def P2021023385559460405.Spec : Prop :=
  ∀ n, P2021023385559460405.a n = A027178 n

theorem P2021023385559460405.correct : P2021023385559460405.Spec := by
  intro n
  simp only [A027178]

end A027178

/-! ## A027178.P9286052270891906285

`∑[ogf((1+2x+x^2)/(1-3x+2x^2))]`
-/

namespace A027178.P9286052270891906285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P9286052270891906285

namespace A027178

/-- `∑[ogf((1+2x+x^2)/(1-3x+2x^2))]` -/
def P9286052270891906285.Spec : Prop :=
  ∀ n, P9286052270891906285.a n = A027178 n

end A027178

/-! ## A027178.P7029096940677332206

`ogf((1+2x+x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A027178.P7029096940677332206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -4, 5, -2] n

end

end A027178.P7029096940677332206

namespace A027178

/-- `ogf((1+2x+x^2)/(1-4x+5x^2-2x^3))` -/
def P7029096940677332206.Spec : Prop :=
  ∀ n, P7029096940677332206.a n = A027178 n

end A027178

/-! ## A027178.P3153458623928505690

`∑[2*(a(n-1)+2)]` with `a(0)=1, a(1)=5`
-/

namespace A027178.P3153458623928505690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P3153458623928505690

namespace A027178

/-- `∑[2*(a(n-1)+2)]` -/
def P3153458623928505690.Spec : Prop :=
  ∀ n, (P3153458623928505690.a n : ℤ) = A027178 n

end A027178

/-! ## A027178.P401199077827190383

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A027178.P401199077827190383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P401199077827190383

namespace A027178

/-- `∑[∑[2*a(n-1)]]` -/
def P401199077827190383.Spec : Prop :=
  ∀ n, (P401199077827190383.a n : ℤ) = A027178 n

end A027178

/-! ## A027178.P6129761350457463171

`2*(a(n-1)+2*n)` with `a(0)=1`
-/

namespace A027178.P6129761350457463171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 2 * n)

end

end A027178.P6129761350457463171

namespace A027178

/-- `2*(a(n-1)+2*n)` -/
def P6129761350457463171.Spec : Prop :=
  ∀ n, (P6129761350457463171.a n : ℤ) = A027178 n

theorem P6129761350457463171.correct : P6129761350457463171.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A027178, Nat.add_sub_cancel, A027178.P6129761350457463171.a, A027178.P2021023385559460405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A027178, Nat.add_sub_cancel, A027178.P6129761350457463171.a, A027178.P2021023385559460405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027178

/-! ## A027178.P9720809590297386020

`2*(3*n-(n-a(n-1)))` with `a(0)=1`
-/

namespace A027178.P9720809590297386020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((3 * n : ℤ) - ((n : ℤ) - a (n - 1)))

end

end A027178.P9720809590297386020

namespace A027178

/-- `2*(3*n-(n-a(n-1)))` -/
def P9720809590297386020.Spec : Prop :=
  ∀ n, P9720809590297386020.a n = A027178 n

theorem P9720809590297386020.correct : P9720809590297386020.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A027178, Nat.add_sub_cancel, A027178.P9720809590297386020.a, A027178.P2021023385559460405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A027178, Nat.add_sub_cancel, A027178.P9720809590297386020.a, A027178.P2021023385559460405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027178

/-! ## A027178.P16156409487132535489

`∑[a(n-1)+a(n-1)+4]` with `a(0)=1, a(1)=5`
-/

namespace A027178.P16156409487132535489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P16156409487132535489

namespace A027178

/-- `∑[a(n-1)+a(n-1)+4]` -/
def P16156409487132535489.Spec : Prop :=
  ∀ n, (P16156409487132535489.a n : ℤ) = A027178 n

end A027178

/-! ## A027178.P16538187315766816665

`(a(n-1)+n+n)/(1-1/2)` with `a(0)=1`
-/

namespace A027178.P16538187315766816665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n : ℚ) + (n : ℚ)) / (1 - (1 : ℚ) / 2)

end

end A027178.P16538187315766816665

namespace A027178

/-- `(a(n-1)+n+n)/(1-1/2)` -/
def P16538187315766816665.Spec : Prop :=
  ∀ n, P16538187315766816665.a n = (A027178 n : ℚ)

theorem P16538187315766816665.correct : P16538187315766816665.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A027178, Nat.add_sub_cancel, A027178.P16538187315766816665.a, A027178.P2021023385559460405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A027178, Nat.add_sub_cancel, A027178.P16538187315766816665.a, A027178.P2021023385559460405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027178

/-! ## A027178.P6503933820547148750

`∑[A053209(n)]`
-/

namespace A027178.P6503933820547148750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P6503933820547148750

namespace A027178

/-- `∑[A053209(n)]` -/
def P6503933820547148750.Spec : Prop :=
  ∀ n, P6503933820547148750.a n = A027178 n

end A027178

/-! ## A027178.P2943296935169350877

`∑[∑[A397439(n)]]`
-/

namespace A027178.P2943296935169350877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397439 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P2943296935169350877

namespace A027178

/-- `∑[∑[A397439(n)]]` -/
def P2943296935169350877.Spec : Prop :=
  ∀ n, P2943296935169350877.a n = A027178 n

end A027178

/-! ## A027178.P17330401807819494247

`∑[∑[A052996(n)]+n]`
-/

namespace A027178.P17330401807819494247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P17330401807819494247

namespace A027178

/-- `∑[∑[A052996(n)]+n]` -/
def P17330401807819494247.Spec : Prop :=
  ∀ n, P17330401807819494247.a n = A027178 n

end A027178

/-! ## A027178.P9200173661170920317

`∑[A116453(n+1)-4]`
-/

namespace A027178.P9200173661170920317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116453 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P9200173661170920317

namespace A027178

/-- `∑[A116453(n+1)-4]` -/
def P9200173661170920317.Spec : Prop :=
  ∀ n, P9200173661170920317.a n = A027178 n

end A027178

/-! ## A027178.P8036764141555499986

`∑[A054127(n+1)-1+n]`
-/

namespace A027178.P8036764141555499986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054127 (n + 1) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P8036764141555499986

namespace A027178

/-- `∑[A054127(n+1)-1+n]` -/
def P8036764141555499986.Spec : Prop :=
  ∀ n, P8036764141555499986.a n = A027178 n

end A027178

/-! ## A027178.P3289922969597655371

`2*(A004277(n)+a(n-1))` with `a(0)=1`
-/

namespace A027178.P3289922969597655371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A004277 n + a (n - 1))

end

end A027178.P3289922969597655371

namespace A027178

/-- `2*(A004277(n)+a(n-1))` -/
def P3289922969597655371.Spec : Prop :=
  ∀ n, P3289922969597655371.a n = A027178 n

end A027178

/-! ## A027178.P13050935854273133493

`∑[A116454(n+1)+2*n+1]`
-/

namespace A027178.P13050935854273133493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116454 (n + 1) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P13050935854273133493

namespace A027178

/-- `∑[A116454(n+1)+2*n+1]` -/
def P13050935854273133493.Spec : Prop :=
  ∀ n, P13050935854273133493.a n = A027178 n

end A027178

/-! ## A027178.P7010638915763023569

`∑[A296953(n+1)+A296953(n)]`
-/

namespace A027178.P7010638915763023569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 (n + 1) + A296953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P7010638915763023569

namespace A027178

/-- `∑[A296953(n+1)+A296953(n)]` -/
def P7010638915763023569.Spec : Prop :=
  ∀ n, P7010638915763023569.a n = A027178 n

end A027178

/-! ## A027178.P14207582443264676400

`∑[2*A033484(n)-A003945(n)]`
-/

namespace A027178.P14207582443264676400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033484 n - A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027178.P14207582443264676400

namespace A027178

/-- `∑[2*A033484(n)-A003945(n)]` -/
def P14207582443264676400.Spec : Prop :=
  ∀ n, P14207582443264676400.a n = A027178 n

end A027178

/-! ## A027178.P12298927630790738094

`(A247620(n)+A142964(n))/2`
-/

namespace A027178.P12298927630790738094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247620 n + A142964 n : ℚ) / 2

end

end A027178.P12298927630790738094

namespace A027178

/-- `(A247620(n)+A142964(n))/2` -/
def P12298927630790738094.Spec : Prop :=
  ∀ n, P12298927630790738094.a n = (A027178 n : ℚ)

end A027178

/-! ## A027178.P4969778896611046529

`Δ[A050488(n)²]/Δ[A050488(n)]`
-/

namespace A027178.P4969778896611046529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050488 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050488 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A027178.P4969778896611046529

namespace A027178

/-- `Δ[A050488(n)²]/Δ[A050488(n)]` -/
def P4969778896611046529.Spec : Prop :=
  ∀ n, P4969778896611046529.a n = (A027178 n : ℚ)

end A027178

/-!
# A027179: a(n) = T(n,0) + T(n,1) + ... + T(n,[ n/2 ]), T given by A027170.

The programs for A027179, there is no canonical definition to state claims against.
-/

/-! ## A027179.P9587871268220063022

`A201206(lcm(A007583(n), A178414(n+1)))`
-/

namespace A027179.P9587871268220063022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201206 (Int.lcm (A007583 n) (A178414 (n + 1)))

end

end A027179.P9587871268220063022

/-! ## A027179.P18254270749982914665

`A302040(n+1)+A238281(A056105(n)²)`
-/

namespace A027179.P18254270749982914665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302040 (n + 1) + A238281 (A056105 n ^ 2).toNat

end

end A027179.P18254270749982914665

/-!
# A027180: a(n) = Sum_{0<=j<=i<=n} A027170(i, j).

The programs for A027180, the canonical program `A027180.P2802054884613363728` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027180 has offset 0).

The definition of A027180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027180.P2802054884613363728

`18*2^n-2*n²-10*n-17`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027180

/-- `18*2^n-2*n²-10*n-17` -/
def P2802054884613363728.Spec : Prop :=
  ∀ n, P2802054884613363728.a n = A027180 n

theorem P2802054884613363728.correct : P2802054884613363728.Spec := by
  intro n
  simp only [A027180]

end A027180

/-! ## A027180.P3286844090423107312

`∑[∑[ogf((1+2x+x^2)/(1-3x+2x^2))]]`
-/

namespace A027180.P3286844090423107312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -3, 2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P3286844090423107312

namespace A027180

/-- `∑[∑[ogf((1+2x+x^2)/(1-3x+2x^2))]]` -/
def P3286844090423107312.Spec : Prop :=
  ∀ n, P3286844090423107312.a n = A027180 n

end A027180

/-! ## A027180.P14562245544312560730

`∑[∑[2*(a(n-1)+2)]]` with `a(0)=1, a(1)=5`
-/

namespace A027180.P14562245544312560730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  2 * (f2 (n - 1) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P14562245544312560730

namespace A027180

/-- `∑[∑[2*(a(n-1)+2)]]` -/
def P14562245544312560730.Spec : Prop :=
  ∀ n, (P14562245544312560730.a n : ℤ) = A027180 n

end A027180

/-! ## A027180.P9785265708587622204

`∑[∑[a(n-1)+a(n-1)+4]]` with `a(0)=1, a(1)=5`
-/

namespace A027180.P9785265708587622204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P9785265708587622204

namespace A027180

/-- `∑[∑[a(n-1)+a(n-1)+4]]` -/
def P9785265708587622204.Spec : Prop :=
  ∀ n, (P9785265708587622204.a n : ℤ) = A027180 n

end A027180

/-! ## A027180.P6949394402912200215

`∑[A027178(n)]`
-/

namespace A027180.P6949394402912200215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P6949394402912200215

namespace A027180

/-- `∑[A027178(n)]` -/
def P6949394402912200215.Spec : Prop :=
  ∀ n, P6949394402912200215.a n = A027180 n

end A027180

/-! ## A027180.P4464482682815899624

`∑[∑[A053209(n)]]`
-/

namespace A027180.P4464482682815899624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P4464482682815899624

namespace A027180

/-- `∑[∑[A053209(n)]]` -/
def P4464482682815899624.Spec : Prop :=
  ∀ n, P4464482682815899624.a n = A027180 n

end A027180

/-! ## A027180.P6933117599268060206

`∑[A308579(n+1)-n]`
-/

namespace A027180.P6933117599268060206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308579 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P6933117599268060206

namespace A027180

/-- `∑[A308579(n+1)-n]` -/
def P6933117599268060206.Spec : Prop :=
  ∀ n, P6933117599268060206.a n = A027180 n

end A027180

/-! ## A027180.P13846032157274333965

`∑[A227712(n)-(n+3)]`
-/

namespace A027180.P13846032157274333965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227712 n - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P13846032157274333965

namespace A027180

/-- `∑[A227712(n)-(n+3)]` -/
def P13846032157274333965.Spec : Prop :=
  ∀ n, P13846032157274333965.a n = A027180 n

end A027180

/-! ## A027180.P1657835444584973497

`∑[A099041(n)-2*n]`
-/

namespace A027180.P1657835444584973497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099041 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P1657835444584973497

namespace A027180

/-- `∑[A099041(n)-2*n]` -/
def P1657835444584973497.Spec : Prop :=
  ∀ n, P1657835444584973497.a n = A027180 n

end A027180

/-! ## A027180.P10457245128385682784

`∑[∑[∑[A052996(n)]+n]]`
-/

namespace A027180.P10457245128385682784
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P10457245128385682784

namespace A027180

/-- `∑[∑[∑[A052996(n)]+n]]` -/
def P10457245128385682784.Spec : Prop :=
  ∀ n, P10457245128385682784.a n = A027180 n

end A027180

/-! ## A027180.P16742566123663940208

`∑[A050488(n)+∑[A033484(n)]]`
-/

namespace A027180.P16742566123663940208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050488 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P16742566123663940208

namespace A027180

/-- `∑[A050488(n)+∑[A033484(n)]]` -/
def P16742566123663940208.Spec : Prop :=
  ∀ n, P16742566123663940208.a n = A027180 n

end A027180

/-! ## A027180.P3617399322531375171

`∑[∑[A048487(n)]-A000225(n)]`
-/

namespace A027180.P3617399322531375171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P3617399322531375171

namespace A027180

/-- `∑[∑[A048487(n)]-A000225(n)]` -/
def P3617399322531375171.Spec : Prop :=
  ∀ n, P3617399322531375171.a n = A027180 n

end A027180

/-! ## A027180.P17358420287415525303

`∑[A050488(n+1)+A050488(n)]`
-/

namespace A027180.P17358420287415525303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050488 (n + 1) + A050488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P17358420287415525303

namespace A027180

/-- `∑[A050488(n+1)+A050488(n)]` -/
def P17358420287415525303.Spec : Prop :=
  ∀ n, P17358420287415525303.a n = A027180 n

end A027180

/-! ## A027180.P5057622896582823084

`∑[∑[A099942(2*n+1)]-A099942(2*n)]`
-/

namespace A027180.P5057622896582823084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099942 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A099942 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027180.P5057622896582823084

namespace A027180

/-- `∑[∑[A099942(2*n+1)]-A099942(2*n)]` -/
def P5057622896582823084.Spec : Prop :=
  ∀ n, P5057622896582823084.a n = A027180 n

end A027180

/-!
# A027181: a(n) = Lucas(n+4) - 2*(n+3).

The programs for A027181, the canonical program `A027181.P16677857839417211237` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027181 has offset 0).

The definition of A027181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027181.P16677857839417211237

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=17`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027181

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P16677857839417211237.Spec : Prop :=
  ∀ n, P16677857839417211237.a n = A027181 n

theorem P16677857839417211237.correct : P16677857839417211237.Spec := by
  intro n
  simp only [A027181]

end A027181

/-! ## A027181.P13698253658549821256

`∑[floor(∑[ϕ^n])]`
-/

namespace A027181.P13698253658549821256
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027181.P13698253658549821256

namespace A027181

/-- `∑[floor(∑[ϕ^n])]` -/
def P13698253658549821256.Spec : Prop :=
  ∀ n, P13698253658549821256.a n = A027181 n

end A027181

/-! ## A027181.P564751485882925587

`ogf((1+x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A027181.P564751485882925587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -3, 2, 1, -1] n

end

end A027181.P564751485882925587

namespace A027181

/-- `ogf((1+x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P564751485882925587.Spec : Prop :=
  ∀ n, P564751485882925587.a n = A027181 n

end A027181

/-! ## A027181.P8930656971670089732

`2*n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A027181.P8930656971670089732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * n + (a (n - 1) + a (n - 2))

end

end A027181.P8930656971670089732

namespace A027181

/-- `2*n+a(n-1)+a(n-2)` -/
def P8930656971670089732.Spec : Prop :=
  ∀ n, (P8930656971670089732.a n : ℤ) = A027181 n

end A027181

/-! ## A027181.P6171666645830488304

`a(n-1)+a(n-2)+n+n` with `a(0)=1, a(1)=3`
-/

namespace A027181.P6171666645830488304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 2) + n + n)

end

end A027181.P6171666645830488304

namespace A027181

/-- `a(n-1)+a(n-2)+n+n` -/
def P6171666645830488304.Spec : Prop :=
  ∀ n, (P6171666645830488304.a n : ℤ) = A027181 n

end A027181

/-! ## A027181.P11619262493333839916

`3*n-(n-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A027181.P11619262493333839916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (3 * n : ℤ) - ((n : ℤ) - a (n - 1) - a (n - 2))

end

end A027181.P11619262493333839916

namespace A027181

/-- `3*n-(n-a(n-1)-a(n-2))` -/
def P11619262493333839916.Spec : Prop :=
  ∀ n, P11619262493333839916.a n = A027181 n

end A027181

/-! ## A027181.P13192573837141412766

`record[A090244(n)-n]`
-/

namespace A027181.P13192573837141412766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027181.P13192573837141412766

namespace A027181

/-- `record[A090244(n)-n]` -/
def P13192573837141412766.Spec : Prop :=
  ∀ n, P13192573837141412766.a n = A027181 n

end A027181

/-! ## A027181.P6114242200069205943

`∑[∑[A169985(n)]]-n`
-/

namespace A027181.P6114242200069205943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A027181.P6114242200069205943

namespace A027181

/-- `∑[∑[A169985(n)]]-n` -/
def P6114242200069205943.Spec : Prop :=
  ∀ n, P6114242200069205943.a n = A027181 n

end A027181

/-! ## A027181.P6226734718118567911

`∑[A288219(n)-2]+1`
-/

namespace A027181.P6226734718118567911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A027181.P6226734718118567911

namespace A027181

/-- `∑[A288219(n)-2]+1` -/
def P6226734718118567911.Spec : Prop :=
  ∀ n, P6226734718118567911.a n = A027181 n

end A027181

/-! ## A027181.P12247101267459967444

`record[A280699(n+2)-n]`
-/

namespace A027181.P12247101267459967444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280699 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027181.P12247101267459967444

namespace A027181

/-- `record[A280699(n+2)-n]` -/
def P12247101267459967444.Spec : Prop :=
  ∀ n, P12247101267459967444.a n = A027181 n

end A027181

/-! ## A027181.P891118158574496270

`record[A329723(n)-n]-n`
-/

namespace A027181.P891118158574496270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A027181.P891118158574496270

namespace A027181

/-- `record[A329723(n)-n]-n` -/
def P891118158574496270.Spec : Prop :=
  ∀ n, P891118158574496270.a n = A027181 n

end A027181

/-! ## A027181.P3496304445628773767

`A023548(n+1)-(n+1)`
-/

namespace A027181.P3496304445628773767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023548 (n + 1) - (n + 1 : ℤ)

end

end A027181.P3496304445628773767

namespace A027181

/-- `A023548(n+1)-(n+1)` -/
def P3496304445628773767.Spec : Prop :=
  ∀ n, P3496304445628773767.a n = A027181 n

end A027181

/-! ## A027181.P16264542612638385786

`A066982(n+3)-(n+2)`
-/

namespace A027181.P16264542612638385786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 3) - (n + 2 : ℤ)

end

end A027181.P16264542612638385786

namespace A027181

/-- `A066982(n+3)-(n+2)` -/
def P16264542612638385786.Spec : Prop :=
  ∀ n, P16264542612638385786.a n = A027181 n

end A027181

/-! ## A027181.P12344094824391503486

`A168043(n+3)-(n+3)`
-/

namespace A027181.P12344094824391503486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168043 (n + 3) - (n + 3 : ℤ)

end

end A027181.P12344094824391503486

namespace A027181

/-- `A168043(n+3)-(n+3)` -/
def P12344094824391503486.Spec : Prop :=
  ∀ n, P12344094824391503486.a n = A027181 n

end A027181

/-! ## A027181.P1445783615089570162

`A014739(n)+a(n-1)` with `a(0)=1`
-/

namespace A027181.P1445783615089570162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014739 n + a (n - 1)

end

end A027181.P1445783615089570162

namespace A027181

/-- `A014739(n)+a(n-1)` -/
def P1445783615089570162.Spec : Prop :=
  ∀ n, P1445783615089570162.a n = A027181 n

end A027181

/-! ## A027181.P5179490212198958397

`∑[A259625(2*(n+1))]-n`
-/

namespace A027181.P5179490212198958397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A027181.P5179490212198958397

namespace A027181

/-- `∑[A259625(2*(n+1))]-n` -/
def P5179490212198958397.Spec : Prop :=
  ∀ n, P5179490212198958397.a n = A027181 n

end A027181

/-! ## A027181.P4360705671564583156

`record[A000032(n+1)-2*n]`
-/

namespace A027181.P4360705671564583156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027181.P4360705671564583156

namespace A027181

/-- `record[A000032(n+1)-2*n]` -/
def P4360705671564583156.Spec : Prop :=
  ∀ n, P4360705671564583156.a n = A027181 n

end A027181

/-! ## A027181.P222487844041274355

`A000032(n+4)-2*(n+3)`
-/

namespace A027181.P222487844041274355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 4) - (2 * (n + 3) : ℤ)

end

end A027181.P222487844041274355

namespace A027181

/-- `A000032(n+4)-2*(n+3)` -/
def P222487844041274355.Spec : Prop :=
  ∀ n, P222487844041274355.a n = A027181 n

end A027181

/-! ## A027181.P7743298175295911967

`record[A000032(n+2)-(n+2)-n]`
-/

namespace A027181.P7743298175295911967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - (n + 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027181.P7743298175295911967

namespace A027181

/-- `record[A000032(n+2)-(n+2)-n]` -/
def P7743298175295911967.Spec : Prop :=
  ∀ n, P7743298175295911967.a n = A027181 n

end A027181

/-! ## A027181.P12336184031725871323

`a(n-2)+A000032(n+3)-4` with `a(0)=1, a(1)=3`
-/

namespace A027181.P12336184031725871323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (A000032 (n + 3) - 4)

end

end A027181.P12336184031725871323

namespace A027181

/-- `a(n-2)+A000032(n+3)-4` -/
def P12336184031725871323.Spec : Prop :=
  ∀ n, P12336184031725871323.a n = A027181 n

end A027181

/-!
# A027183: a(n) = n-th largest even number in array T given by A027170.

The programs for A027183, there is no canonical definition to state claims against.
-/

/-! ## A027183.P7525593978418699633

`2*A027184(n+1)`
-/

namespace A027183.P7525593978418699633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027184 (n + 1)

end

end A027183.P7525593978418699633

/-! ## A027183.P12045129791145186398

`A027184(A000027(n+1))+A027184(n+1)`
-/

namespace A027183.P12045129791145186398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027184 (A000027 (n + 1)).toNat + A027184 (n + 1)

end

end A027183.P12045129791145186398

/-! ## A027183.P8439602884844239595

`A027184(n+1)+A027184(A028310(n+1))`
-/

namespace A027183.P8439602884844239595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027184 (n + 1) + A027184 (A028310 (n + 1)).toNat

end

end A027183.P8439602884844239595

/-! ## A027183.P1538659389300693388

`A027184(n+1)+or(A000007(n), A027184(n+1))`
-/

namespace A027183.P1538659389300693388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027184 (n + 1) + Int.lor (A000007 n) (A027184 (n + 1))

end

end A027183.P1538659389300693388

/-! ## A027183.P13620141700197991447

`A027184(n+1)+A027184(n+1)/ceil(2/A000040(n+1))`
-/

namespace A027183.P13620141700197991447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027184 (n + 1) : ℚ) + (A027184 (n + 1) : ℚ) / (⌈2 / (A000040 (n + 1) : ℚ)⌉ : ℚ)

end

end A027183.P13620141700197991447

/-! ## A027183.P2426869923322491851

`A027184(n+1)+A027184(n+1)/A257993(A006450(n+2)-2)`
-/

namespace A027183.P2426869923322491851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027184 (n + 1) : ℚ) + (A027184 (n + 1) : ℚ) / (A257993 (A006450 (n + 2) - 2).toNat : ℚ)

end

end A027183.P2426869923322491851

/-! ## A027183.P7310668297568674316

`A027184(n+1)+A027184(n+1)%A027174(n+2)`
-/

namespace A027183.P7310668297568674316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027184 (n + 1) + Int.tmod (A027184 (n + 1)) (A027174 (n + 2))

end

end A027183.P7310668297568674316

/-! ## A027183.P2302342820026985577

`A004277(A027184(n+1))`
-/

namespace A027183.P2302342820026985577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A027184 (n + 1)).toNat

end

end A027183.P2302342820026985577

/-! ## A027183.P15798375453988889824

`A004275(A027184(n+1)+1)`
-/

namespace A027183.P15798375453988889824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A027184 (n + 1) + 1).toNat

end

end A027183.P15798375453988889824

/-! ## A027183.P8786543821679318292

`A005843(A027184(n+1)%A041526(n))`
-/

namespace A027183.P8786543821679318292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A027184 (n + 1)) (A041526 n)).toNat

end

end A027183.P8786543821679318292

/-! ## A027183.P2151898348668467897

`A005843(A027184(n+1)+A000007(n+1))`
-/

namespace A027183.P2151898348668467897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A027184 (n + 1) + A000007 (n + 1)).toNat

end

end A027183.P2151898348668467897

/-! ## A027183.P7669850012341768329

`A005843(A027184(n+1))+A000035(A005843(n))`
-/

namespace A027183.P7669850012341768329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A027184 (n + 1)).toNat + A000035 (A005843 n).toNat

end

end A027183.P7669850012341768329

/-!
# A027184: a(n) = (1/2)*(n-th largest even number in array T given by A027170).

The programs for A027184, there is no canonical definition to state claims against.
-/

/-! ## A027184.P17559547261981377774

`A027183(n+1)/2`
-/

namespace A027184.P17559547261981377774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027183 (n + 1) : ℚ) / 2

end

end A027184.P17559547261981377774

/-! ## A027184.P3489356856859192491

`A273943(A027183(n+1))`
-/

namespace A027184.P3489356856859192491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A027183 (n + 1)).toNat

end

end A027184.P3489356856859192491

/-! ## A027184.P2496727922693999764

`A014682(lcm(2, A027183(n+1)))`
-/

namespace A027184.P2496727922693999764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A027183 (n + 1)))

end

end A027184.P2496727922693999764

/-! ## A027184.P7518042035977178819

`A014682(A027183(n+1)+2)-1`
-/

namespace A027184.P7518042035977178819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A027183 (n + 1) + 2).toNat - 1

end

end A027184.P7518042035977178819

/-! ## A027184.P8225120988598205142

`A014682(A027183(n+1)%A017222(n))`
-/

namespace A027184.P8225120988598205142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A027183 (n + 1)) (A017222 n)).toNat

end

end A027184.P8225120988598205142

/-! ## A027184.P2321094049760685551

`A014682(A027183(n+1))%A060665(n+1)`
-/

namespace A027184.P2321094049760685551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 (A027183 (n + 1)).toNat) (A060665 (n + 1))

end

end A027184.P2321094049760685551

/-! ## A027184.P11580309786802957167

`A325564(A027183(n+1)-2)`
-/

namespace A027184.P11580309786802957167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (A027183 (n + 1) - 2).toNat

end

end A027184.P11580309786802957167

/-! ## A027184.P15470584980171625145

`A328399(A027183(n+1)-2)`
-/

namespace A027184.P15470584980171625145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A027183 (n + 1) - 2).toNat

end

end A027184.P15470584980171625145

/-! ## A027184.P656808816717053919

`A249122(A027183(n+1)+1)`
-/

namespace A027184.P656808816717053919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A027183 (n + 1) + 1).toNat

end

end A027184.P656808816717053919

/-! ## A027184.P15470053824102780435

`A004524(A027183(n+1)+1)`
-/

namespace A027184.P15470053824102780435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A027183 (n + 1) + 1).toNat

end

end A027184.P15470053824102780435

/-!
# A027185: Triangular array O by rows: O(n,k) = number of partitions of n into an odd number of parts, the least being k.

The programs for A027185, there is no canonical definition to state claims against.
-/

/-! ## A027185.P4150200490987604092

`A026794(n+1)-A027186(n+1)`
-/

namespace A027185.P4150200490987604092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1) - A027186 (n + 1)

end

end A027185.P4150200490987604092

/-! ## A027185.P6102667698325972717

`A303810(A038722(n+1))-A027186(n+1)`
-/

namespace A027185.P6102667698325972717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A038722 (n + 1)).toNat - A027186 (n + 1)

end

end A027185.P6102667698325972717

/-! ## A027185.P1064278530441295844

`A303810(A061579(n)+1)-A027186(n+1)`
-/

namespace A027185.P1064278530441295844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A061579 n + 1).toNat - A027186 (n + 1)

end

end A027185.P1064278530441295844

/-! ## A027185.P11752194502340133517

`A303810(A278818(n))-A027186(n+1)`
-/

namespace A027185.P11752194502340133517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A278818 n).toNat - A027186 (n + 1)

end

end A027185.P11752194502340133517

/-! ## A027185.P2572229482831152296

`A026807(n+1)-A026807(n+2)%A322427(n+1)-A027186(n+1)`
-/

namespace A027185.P2572229482831152296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1) - Int.tmod (A026807 (n + 2)) (A322427 (n + 1)) - A027186 (n + 1)

end

end A027185.P2572229482831152296

/-!
# A027186: Triangular array E by rows: E(n,k) = number of partitions of n into an even number of parts, the least being k.

The programs for A027186, there is no canonical definition to state claims against.
-/

/-! ## A027186.P7433045622020096033

`A026794(n+1)-A027185(n+1)`
-/

namespace A027186.P7433045622020096033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1) - A027185 (n + 1)

end

end A027186.P7433045622020096033

/-! ## A027186.P9845174166027187507

`A303810(A038722(n+1))-A027185(n+1)`
-/

namespace A027186.P9845174166027187507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A038722 (n + 1)).toNat - A027185 (n + 1)

end

end A027186.P9845174166027187507

/-! ## A027186.P6185866969969175834

`A303810(A061579(n)+1)-A027185(n+1)`
-/

namespace A027186.P6185866969969175834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A061579 n + 1).toNat - A027185 (n + 1)

end

end A027186.P6185866969969175834

/-! ## A027186.P17691626291291284661

`A303810(A278818(n))-A027185(n+1)`
-/

namespace A027186.P17691626291291284661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A278818 n).toNat - A027185 (n + 1)

end

end A027186.P17691626291291284661

/-! ## A027186.P10847763681555348976

`A026807(n+1)-A026807(n+2)%A322427(n+1)-A027185(n+1)`
-/

namespace A027186.P10847763681555348976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1) - Int.tmod (A026807 (n + 2)) (A322427 (n + 1)) - A027185 (n + 1)

end

end A027186.P10847763681555348976

/-!
# A027187: Number of partitions of n into an even number of parts.

The programs for A027187, there is no canonical definition to state claims against.
-/

/-! ## A027187.P9290500752525990420

`A000041(n)-A027193(n)`
-/

namespace A027187.P9290500752525990420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A027193 n

end

end A027187.P9290500752525990420

/-! ## A027187.P2541257260755638396

`A081362(n)+A027193(n)`
-/

namespace A027187.P2541257260755638396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n + A027193 n

end

end A027187.P2541257260755638396

/-! ## A027187.P8850338029773100016

`A000701(n)+A046682(n)-A027193(n)`
-/

namespace A027187.P8850338029773100016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (A046682 n - A027193 n)

end

end A027187.P8850338029773100016

/-! ## A027187.P4729310633959584658

`A239259(n)+A239263(n)-A027193(n)`
-/

namespace A027187.P4729310633959584658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A027193 n)

end

end A027187.P4729310633959584658

/-! ## A027187.P18052514882187791398

`∑[A002865(n)]-A027193(n)`
-/

namespace A027187.P18052514882187791398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027193 n

end

end A027187.P18052514882187791398

/-! ## A027187.P5748160255207769622

`(A081362(n)+A000041(n))/2`
-/

namespace A027187.P5748160255207769622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081362 n + A000041 n : ℚ) / 2

end

end A027187.P5748160255207769622

/-! ## A027187.P17596940866983462957

`A000041(n)-∑{d}[n, A339398(#)]`
-/

namespace A027187.P17596940866983462957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ d ∈ Nat.divisors (f1 n), A339398 d

end

end A027187.P17596940866983462957

/-! ## A027187.P14467572050136857435

`∑[A085811(n+3)]-A027193(n)`
-/

namespace A027187.P14467572050136857435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027193 n

end

end A027187.P14467572050136857435

/-! ## A027187.P199136727327981275

`(A081362(n)+∑[A002865(n)])/2`
-/

namespace A027187.P199136727327981275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A081362 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A027187.P199136727327981275

/-! ## A027187.P11186598049292500228

`∑[A232697(n)]-(A027193(n)+n)`
-/

namespace A027187.P11186598049292500228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A027193 n + (n : ℤ))

end

end A027187.P11186598049292500228

/-! ## A027187.P419789627394625902

`A000837(n)+A018783(n)-A027193(n)`
-/

namespace A027187.P419789627394625902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A027193 n)

end

end A027187.P419789627394625902

/-! ## A027187.P10589259322340816670

`A000009(n)+A047967(n)-A027193(n)`
-/

namespace A027187.P10589259322340816670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A027193 n)

end

end A027187.P10589259322340816670

/-! ## A027187.P8250571317554012035

`A000726(n)+A295341(n)-A027193(n)`
-/

namespace A027187.P8250571317554012035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A027193 n)

end

end A027187.P8250571317554012035

/-! ## A027187.P8295232134491951427

`A139582(n)/2-A027193(n)`
-/

namespace A027187.P8295232134491951427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A027193 n : ℚ)

end

end A027187.P8295232134491951427

/-! ## A027187.P5914993677020722567

`A027193(n+1)-A027194(n+3)`
-/

namespace A027187.P5914993677020722567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (n + 1) - A027194 (n + 3)

end

end A027187.P5914993677020722567

/-! ## A027187.P10485305241875523063

`A035363(2*n)-A027193(n)`
-/

namespace A027187.P10485305241875523063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A027193 n

end

end A027187.P10485305241875523063

/-! ## A027187.P14368332272830992548

`A119620(2*n)-A027193(n)`
-/

namespace A027187.P14368332272830992548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A027193 n

end

end A027187.P14368332272830992548

/-! ## A027187.P24825796374201066

`A047967(n)+A067661(n)+A067659(n)-A027193(n)`
-/

namespace A027187.P24825796374201066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A067661 n + A067659 n) - A027193 n

end

end A027187.P24825796374201066

/-! ## A027187.P8650356982460863522

`A332280(n)+A332281(n)-A027193(n)`
-/

namespace A027187.P8650356982460863522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A027193 n)

end

end A027187.P8650356982460863522

/-! ## A027187.P882414008293838846

`A100824(2*n)-A027193(n)`
-/

namespace A027187.P882414008293838846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A027193 n

end

end A027187.P882414008293838846

/-!
# A027188: a(n) = number of partitions of n into an odd number of parts, the least being 2; also a(n+2) = number of partitions of n into an even number of parts, each >=2.

The programs for A027188, there is no canonical definition to state claims against.
-/

/-! ## A027188.P14542012864132352815

`A085811(n+1)-A027194(A028310(n))`
-/

namespace A027188.P14542012864132352815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1) - A027194 (A028310 n).toNat

end

end A027188.P14542012864132352815

/-! ## A027188.P7408761980979570150

`A085811(n+1)-A027194(A233583(n+1))`
-/

namespace A027188.P7408761980979570150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1) - A027194 (A233583 (n + 1)).toNat

end

end A027188.P7408761980979570150

/-! ## A027188.P14298287460912270369

`A027185(C(n, 2)+2)`
-/

namespace A027188.P14298287460912270369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027185 (Nat.choose n 2 + 2)

end

end A027188.P14298287460912270369

/-! ## A027188.P10061325391829433239

`A027185(∑[n-1]+3)`
-/

namespace A027188.P10061325391829433239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027185 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A027188.P10061325391829433239

/-! ## A027188.P18338734941901435255

`A027185(A238531(n))%A001981(n)`
-/

namespace A027188.P18338734941901435255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027185 (A238531 n).toNat) (A001981 n)

end

end A027188.P18338734941901435255

/-!
# A027189: Number of partitions of n into an odd number of parts, the least being 3; also, a(n+3) = number of partitions of n into an even number of parts, each >=3.

The programs for A027189, there is no canonical definition to state claims against.
-/

/-! ## A027189.P8763967416999530559

`A026796(n+1)-A027195(n+1)`
-/

namespace A027189.P8763967416999530559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 1) - A027195 (n + 1)

end

end A027189.P8763967416999530559

/-! ## A027189.P225504135982004680

`A008483(abs(2-n))-A027195(n+1)`
-/

namespace A027189.P225504135982004680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 |2 - (n : ℤ)|.toNat - A027195 (n + 1)

end

end A027189.P225504135982004680

/-! ## A027189.P1085161601989367545

`A008483(n+1)-(A027195(n+1)+A008484(n+1))`
-/

namespace A027189.P1085161601989367545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) - (A027195 (n + 1) + A008484 (n + 1))

end

end A027189.P1085161601989367545

/-! ## A027189.P2725847411642254118

`A027185(A152950(n+1))-C(n, n²)`
-/

namespace A027189.P2725847411642254118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027185 (A152950 (n + 1)).toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A027189.P2725847411642254118

/-! ## A027189.P1302178564755600365

`A027185(A152950(n+1))%A000108(n)`
-/

namespace A027189.P1302178564755600365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027185 (A152950 (n + 1)).toNat) (A000108 n)

end

end A027189.P1302178564755600365

/-! ## A027189.P13873788420082074447

`A027185(A152950(n+1))-(A000010(n+1)%2)^n`
-/

namespace A027189.P13873788420082074447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027185 (A152950 (n + 1)).toNat - Int.tmod (A000010 (n + 1)) 2 ^ n

end

end A027189.P13873788420082074447

/-!
# A027190: Number of partitions of n into an odd number of parts, the least being 4; also, a(n+4) = number of partitions of n into an even number of parts, each >=4.

The programs for A027190, there is no canonical definition to state claims against.
-/

/-! ## A027190.P16520652357626961326

`A026797(n+1)-A027196(n+1)`
-/

namespace A027190.P16520652357626961326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (n + 1) - A027196 (n + 1)

end

end A027190.P16520652357626961326

/-! ## A027190.P7954138147162559637

`A008484(abs(3-n))-A027196(n+1)`
-/

namespace A027190.P7954138147162559637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 |3 - (n : ℤ)|.toNat - A027196 (n + 1)

end

end A027190.P7954138147162559637

/-! ## A027190.P3812767883020494816

`A008484(n+1)-A185325(n+1)-A027196(n+1)`
-/

namespace A027190.P3812767883020494816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 1) - A185325 (n + 1) - A027196 (n + 1)

end

end A027190.P3812767883020494816

/-! ## A027190.P15958140953655461329

`A008484(n+1)-A026798(n+6)-A027196(n+1)`
-/

namespace A027190.P15958140953655461329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 1) - A026798 (n + 6) - A027196 (n + 1)

end

end A027190.P15958140953655461329

/-! ## A027190.P14447466029565380668

`A008483(n+1)-(A185325(n+1)+A026796(n+1))-A027196(n+1)`
-/

namespace A027190.P14447466029565380668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) - (A185325 (n + 1) + A026796 (n + 1)) - A027196 (n + 1)

end

end A027190.P14447466029565380668

/-! ## A027190.P7455139088096504653

`A026796(n+4)-(A185325(n+1)+A026796(n+1))-A027196(n+1)`
-/

namespace A027190.P7455139088096504653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 4) - (A185325 (n + 1) + A026796 (n + 1)) - A027196 (n + 1)

end

end A027190.P7455139088096504653

/-! ## A027190.P2407953031895271496

`A027185(A145018(n+1))%A046682(n)`
-/

namespace A027190.P2407953031895271496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027185 (A145018 (n + 1)).toNat) (A046682 n)

end

end A027190.P2407953031895271496

/-!
# A027191: Number of partitions of n into an odd number of parts, the least being 5; also, a(n+5) = number of partitions of n into an even number of parts, each >=5.

The programs for A027191, there is no canonical definition to state claims against.
-/

/-! ## A027191.P3658547816232215196

`A026798(n+1)-A027197(n+1)`
-/

namespace A027191.P3658547816232215196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 1) - A027197 (n + 1)

end

end A027191.P3658547816232215196

/-! ## A027191.P4659362427909891201

`A026798(n+1)-A027186(A077169(n)+n)`
-/

namespace A027191.P4659362427909891201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 1) - A027186 (A077169 n + (n : ℤ)).toNat

end

end A027191.P4659362427909891201

/-! ## A027191.P4738829953057901621

`A026798(n+1)-A027186(A034856(n+1)-A004271(n))`
-/

namespace A027191.P4738829953057901621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 1) - A027186 (A034856 (n + 1) - A004271 n).toNat

end

end A027191.P4738829953057901621

/-!
# A027192: Number of partitions of n into an odd number of parts, the least being 6; also, a(n+6) = number of partitions of n into an even number of parts, each >=6.

The programs for A027192, there is no canonical definition to state claims against.
-/

/-! ## A027192.P2137114408183344304

`A026799(n+1)-A027198(n+1)`
-/

namespace A027192.P2137114408183344304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026799 (n + 1) - A027198 (n + 1)

end

end A027192.P2137114408183344304

/-!
# A027193: Number of partitions of n into an odd number of parts.

The programs for A027193, there is no canonical definition to state claims against.
-/

/-! ## A027193.P8538234172601408773

`A000041(n)-A027187(n)`
-/

namespace A027193.P8538234172601408773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A027187 n

end

end A027193.P8538234172601408773

/-! ## A027193.P16752516299162027139

`∑{d}[n, A339398(#)]`
-/

namespace A027193.P16752516299162027139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339398 d

end

end A027193.P16752516299162027139

/-! ## A027193.P2261444443236782265

`A027187(n)-A081362(n)`
-/

namespace A027193.P2261444443236782265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n - A081362 n

end

end A027193.P2261444443236782265

/-! ## A027193.P10246645857512761709

`A000701(n)+A046682(n)-A027187(n)`
-/

namespace A027193.P10246645857512761709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (A046682 n - A027187 n)

end

end A027193.P10246645857512761709

/-! ## A027193.P3814008079058927007

`∑[A002865(n)]-A027187(n)`
-/

namespace A027193.P3814008079058927007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027187 n

end

end A027193.P3814008079058927007

/-! ## A027193.P493434120415150311

`(A000041(n)-A081362(n))/2`
-/

namespace A027193.P493434120415150311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - A081362 n : ℚ) / 2

end

end A027193.P493434120415150311

/-! ## A027193.P4969010579939603339

`∑[A085811(n+3)]-A027187(n)`
-/

namespace A027193.P4969010579939603339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027187 n

end

end A027193.P4969010579939603339

/-! ## A027193.P15402902484022535601

`(∑[A002865(n)]-A081362(n))/2`
-/

namespace A027193.P15402902484022535601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A081362 n : ℤ) : ℚ) / 2

end

end A027193.P15402902484022535601

/-! ## A027193.P18314909416994127370

`∑[A232697(n)]-(A027187(n)+n)`
-/

namespace A027193.P18314909416994127370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A027187 n + (n : ℤ))

end

end A027193.P18314909416994127370

/-! ## A027193.P16678027092255864667

`A000837(n)+A018783(n)-A027187(n)`
-/

namespace A027193.P16678027092255864667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A027187 n)

end

end A027193.P16678027092255864667

/-! ## A027193.P3340385363758880640

`A000009(n)+A047967(n)-A027187(n)`
-/

namespace A027193.P3340385363758880640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A027187 n)

end

end A027193.P3340385363758880640

/-! ## A027193.P17995663165619527467

`A000726(n)+A295341(n)-A027187(n)`
-/

namespace A027193.P17995663165619527467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A027187 n)

end

end A027193.P17995663165619527467

/-! ## A027193.P5964458109102283275

`A168015(n)-(A168014(n)+A027187(n))`
-/

namespace A027193.P5964458109102283275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168015 n - (A168014 n + A027187 n)

end

end A027193.P5964458109102283275

/-! ## A027193.P6244865860665704219

`A139582(n)/2-A027187(n)`
-/

namespace A027193.P6244865860665704219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A027187 n : ℚ)

end

end A027193.P6244865860665704219

/-! ## A027193.P444060700353217248

`A000070(n+1)-(A120452(n+2)+A027187(n))`
-/

namespace A027193.P444060700353217248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A120452 (n + 2) + A027187 n)

end

end A027193.P444060700353217248

/-! ## A027193.P9818962176257505916

`A035363(2*n)-A027187(n)`
-/

namespace A027193.P9818962176257505916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A027187 n

end

end A027193.P9818962176257505916

/-! ## A027193.P16939834099189564067

`A119620(2*n)-A027187(n)`
-/

namespace A027193.P16939834099189564067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A027187 n

end

end A027193.P16939834099189564067

/-! ## A027193.P6116973845656604632

`A047967(n)+A067661(n)+A067659(n)-A027187(n)`
-/

namespace A027193.P6116973845656604632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A067661 n + A067659 n) - A027187 n

end

end A027193.P6116973845656604632

/-! ## A027193.P12188048862872400794

`A002095(n)+A235945(n)-A027187(n)`
-/

namespace A027193.P12188048862872400794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 n + (A235945 n - A027187 n)

end

end A027193.P12188048862872400794

/-! ## A027193.P7675620036212161992

`A332280(n)+A332281(n)-A027187(n)`
-/

namespace A027193.P7675620036212161992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A027187 n)

end

end A027193.P7675620036212161992

/-!
# A027194: Number of partitions of n into an even number of parts, the least being 2; also, a(n+2) = number of partitions of n into an odd number of parts, each >=2.

The programs for A027194, there is no canonical definition to state claims against.
-/

/-! ## A027194.P3006564677815647734

`A085811(n+2)-A027188(n+1)`
-/

namespace A027194.P3006564677815647734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) - A027188 (n + 1)

end

end A027194.P3006564677815647734

/-! ## A027194.P18361870343526805375

`A002865(abs(1-n))-A027188(n+1)`
-/

namespace A027194.P18361870343526805375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 |1 - (n : ℤ)|.toNat - A027188 (n + 1)

end

end A027194.P18361870343526805375

/-! ## A027194.P1701317988842547683

`A027336(n)-(A027188(n+1)+A002865(n))`
-/

namespace A027194.P1701317988842547683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n - (A027188 (n + 1) + A002865 n)

end

end A027194.P1701317988842547683

/-! ## A027194.P18130621201666070135

`A002865(n+1)-(A027188(n+1)+A008483(n+1))`
-/

namespace A027194.P18130621201666070135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - (A027188 (n + 1) + A008483 (n + 1))

end

end A027194.P18130621201666070135

/-! ## A027194.P17811161239521409426

`A027186(∑[char[1]+n]+1)`
-/

namespace A027194.P17811161239521409426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027194.P17811161239521409426

/-! ## A027194.P11840385081668888045

`A027186(C(n+2, 2)-n+1)%A000041(n+1)`
-/

namespace A027194.P11840385081668888045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027186 ((Nat.choose (n + 2) 2 : ℤ) - (n : ℤ) + 1).toNat) (A000041 (n + 1))

end

end A027194.P11840385081668888045

/-!
# A027195: Number of partitions of n into an even number of parts, the least being 3; also, a(n+3) = number of partitions of n into an odd number of parts, each >=3.

The programs for A027195, there is no canonical definition to state claims against.
-/

/-! ## A027195.P14580814606595115159

`A026796(n+1)-A027189(n+1)`
-/

namespace A027195.P14580814606595115159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 1) - A027189 (n + 1)

end

end A027195.P14580814606595115159

/-! ## A027195.P4889828213612935420

`A008483(abs(2-n))-A027189(n+1)`
-/

namespace A027195.P4889828213612935420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 |2 - (n : ℤ)|.toNat - A027189 (n + 1)

end

end A027195.P4889828213612935420

/-! ## A027195.P12587116850664079809

`A008483(n+1)-(A027189(n+1)+A008484(n+1))`
-/

namespace A027195.P12587116850664079809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) - (A027189 (n + 1) + A008484 (n + 1))

end

end A027195.P12587116850664079809

/-! ## A027195.P12790381989380689776

`A121081(n+1)-(A121659(n+1)+A027189(n+1))`
-/

namespace A027195.P12790381989380689776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121081 (n + 1) - (A121659 (n + 1) + A027189 (n + 1))

end

end A027195.P12790381989380689776

/-! ## A027195.P9676078333312220790

`A027186(∑[n+1]+2-A233583(n+1))`
-/

namespace A027195.P9676078333312220790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) - A233583 (n + 1)).toNat

end

end A027195.P9676078333312220790

/-! ## A027195.P12076341983449197226

`A027186(A034856(n+1)-A004275(n))`
-/

namespace A027195.P12076341983449197226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (A034856 (n + 1) - A004275 n).toNat

end

end A027195.P12076341983449197226

/-! ## A027195.P17811360110965425146

`A027186(A145018(n+1)-A060576(n))`
-/

namespace A027195.P17811360110965425146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (A145018 (n + 1) - A060576 n).toNat

end

end A027195.P17811360110965425146

/-! ## A027195.P7096159977269725709

`A027186(A107393(2*n)+A000124(n))`
-/

namespace A027195.P7096159977269725709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (A107393 (2 * n) + A000124 n).toNat

end

end A027195.P7096159977269725709

/-!
# A027196: Number of partitions of n into an even number of parts, the least being 4; also, a(n+4) = number of partitions of n into an odd number of parts, each >=4.

The programs for A027196, there is no canonical definition to state claims against.
-/

/-! ## A027196.P7288661958440648544

`A026797(n+1)-A027190(n+1)`
-/

namespace A027196.P7288661958440648544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (n + 1) - A027190 (n + 1)

end

end A027196.P7288661958440648544

/-! ## A027196.P7108758074083922165

`A008484(abs(3-n))-A027190(n+1)`
-/

namespace A027196.P7108758074083922165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 |3 - (n : ℤ)|.toNat - A027190 (n + 1)

end

end A027196.P7108758074083922165

/-! ## A027196.P14580389337969106778

`A008484(n+1)-A185325(n+1)-A027190(n+1)`
-/

namespace A027196.P14580389337969106778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 1) - A185325 (n + 1) - A027190 (n + 1)

end

end A027196.P14580389337969106778

/-! ## A027196.P2646089241984527346

`A008484(n+1)-A026798(n+6)-A027190(n+1)`
-/

namespace A027196.P2646089241984527346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 1) - A026798 (n + 6) - A027190 (n + 1)

end

end A027196.P2646089241984527346

/-! ## A027196.P1946643651823731009

`A008483(n+1)-(A185325(n+1)+A026796(n+1))-A027190(n+1)`
-/

namespace A027196.P1946643651823731009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) - (A185325 (n + 1) + A026796 (n + 1)) - A027190 (n + 1)

end

end A027196.P1946643651823731009

/-! ## A027196.P9799318381082862046

`A026796(n+4)-(A185325(n+1)+A026796(n+1))-A027190(n+1)`
-/

namespace A027196.P9799318381082862046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 4) - (A185325 (n + 1) + A026796 (n + 1)) - A027190 (n + 1)

end

end A027196.P9799318381082862046

/-! ## A027196.P4566077267871413328

`A027186(A077169(n+1)-1)`
-/

namespace A027196.P4566077267871413328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (A077169 (n + 1) - 1).toNat

end

end A027196.P4566077267871413328

/-! ## A027196.P17303700752959890352

`A027186(A034856(n+1)-A004274(n))`
-/

namespace A027196.P17303700752959890352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (A034856 (n + 1) - A004274 n).toNat

end

end A027196.P17303700752959890352

/-!
# A027197: Number of partitions of n into an even number of parts, the least being 5; also, a(n+5) = number of partitions of n into an odd number of parts, each >=5.

The programs for A027197, there is no canonical definition to state claims against.
-/

/-! ## A027197.P3262190579049073776

`A026798(n+1)-A027191(n+1)`
-/

namespace A027197.P3262190579049073776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 1) - A027191 (n + 1)

end

end A027197.P3262190579049073776

/-! ## A027197.P17147807963417951074

`A027186(A077169(n)+n)`
-/

namespace A027197.P17147807963417951074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (A077169 n + (n : ℤ)).toNat

end

end A027197.P17147807963417951074

/-! ## A027197.P2131793480240831471

`A027186(A034856(n+1)-A004271(n))`
-/

namespace A027197.P2131793480240831471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (A034856 (n + 1) - A004271 n).toNat

end

end A027197.P2131793480240831471

/-!
# A027198: Number of partitions of n into an even number of parts, the least being 6; also, a(n+6) = number of partitions of n into an odd number of parts, each >=6.

The programs for A027198, there is no canonical definition to state claims against.
-/

/-! ## A027198.P9547670806596413356

`A026799(n+1)-A027192(n+1)`
-/

namespace A027198.P9547670806596413356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026799 (n + 1) - A027192 (n + 1)

end

end A027198.P9547670806596413356

/-!
# A027199: Triangular array T read by rows: T(n,k) = number of partitions of n into an odd number of parts, each >=k.

The programs for A027199, there is no canonical definition to state claims against.
-/

/-! ## A027199.P5893967766042015998

`A026807(n+1)-A027200(n+1)`
-/

namespace A027199.P5893967766042015998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1) - A027200 (n + 1)

end

end A027199.P5893967766042015998

/-! ## A027199.P387947056315940344

`A026794(A245300(n+1))-A027200(n+1)`
-/

namespace A027199.P387947056315940344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A245300 (n + 1)).toNat - A027200 (n + 1)

end

end A027199.P387947056315940344

/-! ## A027199.P8615230753643997326

`A027186(A245300(n)+A108872(n+1))`
-/

namespace A027199.P8615230753643997326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027186 (A245300 n + A108872 (n + 1)).toNat

end

end A027199.P8615230753643997326

/-! ## A027199.P6086259670855460800

`A070939(A000045(A026794(n+1)+1))`
-/

namespace A027199.P6086259670855460800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000045 (A026794 (n + 1) + 1).toNat).toNat

end

end A027199.P6086259670855460800

