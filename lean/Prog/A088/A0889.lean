import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

/-!
# A088900: Numbers n such that 2*n*k(n) is an integer, where k(n) is sum of successive remainders when computing the Euclidean algorithm for (1, 1/sqrt(n)) as defined in A086378 (MuPAD program is given there).

The programs for A088900, there is no canonical definition to state claims against.
-/

/-! ## A088900.P1153902142675601117

`A086378(floor(sqrt(n)/5+n+1))`
-/

namespace A088900.P1153902142675601117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086378 ⌊Real.sqrt (n : ℝ) / 5 + (n + 1 : ℝ)⌋.toNat

end

end A088900.P1153902142675601117

/-! ## A088900.P2012981627310934573

`A086378(A348553(n))%∑[A263973(n+1)]`
-/

namespace A088900.P2012981627310934573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086378 (A348553 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088900.P2012981627310934573

/-! ## A088900.P7467916977218523061

`A086378(A348553(n))+A000038(A081580(n))`
-/

namespace A088900.P7467916977218523061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086378 (A348553 n).toNat + A000038 (A081580 n).toNat

end

end A088900.P7467916977218523061

/-! ## A088900.P17304690315563353284

`A086378(A348553(n))%A263964(A028310(n))`
-/

namespace A088900.P17304690315563353284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086378 (A348553 n).toNat) (A263964 (A028310 n).toNat)

end

end A088900.P17304690315563353284

/-! ## A088900.P3329450320787571124

`A086378(A348553(n))+A000038(A338903(n+1))`
-/

namespace A088900.P3329450320787571124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086378 (A348553 n).toNat + A000038 (A338903 (n + 1)).toNat

end

end A088900.P3329450320787571124

/-!
# A088901: Numbers n such that n*k(n) is an integer, where k(n) is sum of successive remainders when computing the Euclidean algorithm for (1, 1/sqrt(n)) as defined in A086378 (MuPAD program is given there).

The programs for A088901, there is no canonical definition to state claims against.
-/

/-! ## A088901.P457889218969485817

`∩[A086378(n+1), A230872(n+2)]`
-/

namespace A088901.P457889218969485817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230872 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088901.P457889218969485817

/-! ## A088901.P16831492197824543526

`∩[A088900(n+1), A230872(n+2)]`
-/

namespace A088901.P16831492197824543526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230872 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088901.P16831492197824543526

/-! ## A088901.P1762434701897456048

`A086378(lt[A132269(n), A318848(3*n+4)])`
-/

namespace A088901.P1762434701897456048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132269 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318848 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086378 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A088901.P1762434701897456048

/-! ## A088901.P8740478133271606861

`A088900(A008620(4*A062399(n)))`
-/

namespace A088901.P8740478133271606861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (A008620 (4 * A062399 n).toNat).toNat

end

end A088901.P8740478133271606861

/-! ## A088901.P1850582400110912925

`A088900(A062399(n)+A008620(n))`
-/

namespace A088901.P1850582400110912925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (A062399 n + A008620 n).toNat

end

end A088901.P1850582400110912925

/-!
# A088902: Numbers n such that n = product (p_k)^(c_k) and set of its (c_k k's)'s is a self-conjugate partition, where p_k is k-th prime and c_k > 0.

The programs for A088902, there is no canonical definition to state claims against.
-/

/-! ## A088902.P16341913605171667161

`record[(n+1)*A331168(A331170(n+1))]`
-/

namespace A088902.P16341913605171667161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A331168 (A331170 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088902.P16341913605171667161

/-! ## A088902.P18265081031601832269

`record[A280491(n+1)]`
-/

namespace A088902.P18265081031601832269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088902.P18265081031601832269

/-! ## A088902.P9274540873801771129

`lt[A280490(n+1), 2]+1`
-/

namespace A088902.P9274540873801771129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280490 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088902.P9274540873801771129

/-! ## A088902.P6999372982345719537

`record[A000027(n+1)/A280490(n+1)]`
-/

namespace A088902.P6999372982345719537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A280490 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088902.P6999372982345719537

/-! ## A088902.P9280395846067006899

`record[A331170(n+1)/A280490(n+1)]`
-/

namespace A088902.P9280395846067006899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331170 (n + 1) : ℚ) / (A280490 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088902.P9280395846067006899

/-!
# A088903: Primes P such that P and P+2 are twin primes and P = p(n)# + p(m) with p(n) < p(m) < p(n+1)^2, or 0 if no such prime P for n, p(n)# = n-th primorial, p(m)= m-th prime ( p(m), p(m+1) twin primes ).

The programs for A088903, there is no canonical definition to state claims against.
-/

/-! ## A088903.P94520910848311626

`A001359(lt[A329429(n+2), A029903(n)])`
-/

namespace A088903.P94520910848311626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329429 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A088903.P94520910848311626

/-! ## A088903.P8392196852322076331

`A007528(∩[A325468(2*(n+1)), A052419(n+1)])`
-/

namespace A088903.P8392196852322076331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325468 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A088903.P8392196852322076331

/-! ## A088903.P7443922346401614253

`record[A242060(A205451(n+1)+1)]`
-/

namespace A088903.P7443922346401614253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242060 (A205451 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088903.P7443922346401614253

/-!
# A088904: Number of ways to write n = x^i + x^j with 1

The programs for A088904, there is no canonical definition to state claims against.
-/

/-! ## A088904.P12829770229153770331

`A089309(A072856(n)%A045623(n))`
-/

namespace A088904.P12829770229153770331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Int.tmod (A072856 n) (A045623 n)).toNat

end

end A088904.P12829770229153770331

/-! ## A088904.P8596319034689914748

`A086010(A234590(n))+A001222(n+1)`
-/

namespace A088904.P8596319034689914748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086010 (A234590 n).toNat + A001222 (n + 1)

end

end A088904.P8596319034689914748

/-! ## A088904.P11015071396417192184

`A188014(A214831(n))+A091222(n+1)`
-/

namespace A088904.P11015071396417192184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A214831 n).toNat + A091222 (n + 1)

end

end A088904.P11015071396417192184

/-! ## A088904.P12540856551891567601

`A353351(n+1)+A131533(A242882(n+2))`
-/

namespace A088904.P12540856551891567601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + A131533 (A242882 (n + 2)).toNat

end

end A088904.P12540856551891567601

/-! ## A088904.P9530958044918029097

`A353419(A029542(n+3))+A353371(n+1)`
-/

namespace A088904.P9530958044918029097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (A029542 (n + 3)).toNat + A353371 (n + 1)

end

end A088904.P9530958044918029097

/-!
# A088905: Numbers m having exactly one representation m = x^i + x^j with 1

The programs for A088905, the canonical program `A088905.P6975458775948714409` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088905 has offset 1).

The definition of A088905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9915 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088905.P6975458775948714409

`record[A052410(A004277(n))+1]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A088905

/-- `record[A052410(A004277(n))+1]` -/
def P6975458775948714409.Spec : Prop :=
  ∀ n, P6975458775948714409.a n = A088905 (n + 1)

theorem P6975458775948714409.correct : P6975458775948714409.Spec := by
  intro n
  simp only [A088905, Nat.add_sub_cancel]

end A088905

/-! ## A088905.P9528034732771566427

`eq[1, A088904(n+1)]+1`
-/

namespace A088905.P9528034732771566427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088905.P9528034732771566427

namespace A088905

/-- `eq[1, A088904(n+1)]+1` -/
def P9528034732771566427.Spec : Prop :=
  ∀ n, (P9528034732771566427.a n : ℤ) = A088905 (n + 1)

end A088905

/-! ## A088905.P10935398871278127370

`record[(n+2)/A088904(n+2)]`
-/

namespace A088905.P10935398871278127370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A088904 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088905.P10935398871278127370

namespace A088905

/-- `record[(n+2)/A088904(n+2)]` -/
def P10935398871278127370.Spec : Prop :=
  ∀ n, P10935398871278127370.a n = (A088905 (n + 1) : ℚ)

end A088905

/-! ## A088905.P2326051837029255563

`eq[A000035(n), A052409(n+1)]+2`
-/

namespace A088905.P2326051837029255563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A088905.P2326051837029255563

namespace A088905

/-- `eq[A000035(n), A052409(n+1)]+2` -/
def P2326051837029255563.Spec : Prop :=
  ∀ n, (P2326051837029255563.a n : ℤ) = A088905 (n + 1)

end A088905

/-! ## A088905.P15754726756698600799

`eq[n+1, A052410(A022998(n)+1)]+2`
-/

namespace A088905.P15754726756698600799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A022998 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088905.P15754726756698600799

namespace A088905

/-- `eq[n+1, A052410(A022998(n)+1)]+2` -/
def P15754726756698600799.Spec : Prop :=
  ∀ n, (P15754726756698600799.a n : ℤ) = A088905 (n + 1)

end A088905

/-! ## A088905.P6353133143529389460

`eq[A065033(A052410(n+1)), A065033(n)]+2`
-/

namespace A088905.P6353133143529389460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A052410 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A088905.P6353133143529389460

namespace A088905

/-- `eq[A065033(A052410(n+1)), A065033(n)]+2` -/
def P6353133143529389460.Spec : Prop :=
  ∀ n, (P6353133143529389460.a n : ℤ) = A088905 (n + 1)

end A088905

/-! ## A088905.P9883465380217512486

`record[A263449(A052410(2*(n+1))+A036987(2*n))]`
-/

namespace A088905.P9883465380217512486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (A052410 (2 * (n + 1)) + A036987 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088905.P9883465380217512486

namespace A088905

/-- `record[A263449(A052410(2*(n+1))+A036987(2*n))]` -/
def P9883465380217512486.Spec : Prop :=
  ∀ n, P9883465380217512486.a n = A088905 (n + 1)

end A088905

/-! ## A088905.P4098637343399932656

`eq[A081676(n+1), A081676(A261671(n))]+2`
-/

namespace A088905.P4098637343399932656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A261671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A088905.P4098637343399932656

namespace A088905

/-- `eq[A081676(n+1), A081676(A261671(n))]+2` -/
def P4098637343399932656.Spec : Prop :=
  ∀ n, (P4098637343399932656.a n : ℤ) = A088905 (n + 1)

end A088905

/-! ## A088905.P3158667954151001657

`record[A233583(2*(n+1))/A253641(2*n)]`
-/

namespace A088905.P3158667954151001657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (2 * (n + 1)) : ℚ) / (A253641 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088905.P3158667954151001657

namespace A088905

/-- `record[A233583(2*(n+1))/A253641(2*n)]` -/
def P3158667954151001657.Spec : Prop :=
  ∀ n, P3158667954151001657.a n = (A088905 (n + 1) : ℚ)

end A088905

/-!
# A088907: Least k such that mean(1,1/2,...,1/k) <= 1/n.

The programs for A088907, there is no canonical definition to state claims against.
-/

/-! ## A088907.P14621117686153841648

`floor(A181625(n+1)+acot(n))`
-/

namespace A088907.P14621117686153841648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181625 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A088907.P14621117686153841648

/-! ## A088907.P7527558611703915543

`A181625(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A088907.P7527558611703915543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A181625 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A088907.P7527558611703915543

/-! ## A088907.P449667548060176089

`A181440(A181625(n+1))`
-/

namespace A088907.P449667548060176089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A181625 (n + 1)).toNat

end

end A088907.P449667548060176089

/-! ## A088907.P10167728575089647652

`A181625(n+1)+A000007(n)`
-/

namespace A088907.P10167728575089647652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181625 (n + 1) + A000007 n

end

end A088907.P10167728575089647652

/-! ## A088907.P18198418137217131829

`A181625(n+1)+A088157(n)`
-/

namespace A088907.P18198418137217131829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181625 (n + 1) + A088157 n

end

end A088907.P18198418137217131829

/-! ## A088907.P9215240641056580864

`A181625(n+1)+A112316(n)`
-/

namespace A088907.P9215240641056580864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181625 (n + 1) + A112316 n

end

end A088907.P9215240641056580864

/-! ## A088907.P13585218030643938012

`A181625(n+1)+A151810(n)`
-/

namespace A088907.P13585218030643938012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181625 (n + 1) + A151810 n

end

end A088907.P13585218030643938012

/-! ## A088907.P2263740555441555697

`A181625(n+1)+A151878(n)`
-/

namespace A088907.P2263740555441555697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181625 (n + 1) + A151878 n

end

end A088907.P2263740555441555697

/-! ## A088907.P6242334071214575015

`A181625(n+1)+A151909(n)`
-/

namespace A088907.P6242334071214575015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181625 (n + 1) + A151909 n

end

end A088907.P6242334071214575015

/-! ## A088907.P1163170813600955777

`A181625(n+1)+A151933(n)`
-/

namespace A088907.P1163170813600955777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181625 (n + 1) + A151933 n

end

end A088907.P1163170813600955777

/-!
# A088908: Numbers expressible as sum or difference of the squares of two distinct primes.

The programs for A088908, there is no canonical definition to state claims against.
-/

/-! ## A088908.P13892442974503625829

`∪[A088909(n+1), A124865(n+1)]`
-/

namespace A088908.P13892442974503625829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088908.P13892442974503625829

/-! ## A088908.P16396918796055180897

`∪[A088909(n+1), record[A168469(n+1)%(11*n+7)]]`
-/

namespace A088908.P16396918796055180897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088909 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168469 (n + 1)) (11 * n + 7 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088908.P16396918796055180897

/-! ## A088908.P17799175926604320864

`eq[2, A088910(n)]`
-/

namespace A088908.P17799175926604320864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088908.P17799175926604320864

/-!
# A088909: Numbers expressible as the sum of squares of two distinct primes.

The programs for A088909, there is no canonical definition to state claims against.
-/

/-! ## A088909.P14033729439981696889

`∩[A045636(n+1), A225102(n+1)]`
-/

namespace A088909.P14033729439981696889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088909.P14033729439981696889

/-! ## A088909.P2525977646605259903

`∩[A045636(n+1), A298591(n+1)]`
-/

namespace A088909.P2525977646605259903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088909.P2525977646605259903

/-! ## A088909.P4184841731004340244

`filter[A088908(n+2), A353491(#)]`
-/

namespace A088909.P4184841731004340244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088908 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353491 (f1 j).toNat = 1) n)

end

end A088909.P4184841731004340244

/-! ## A088909.P15235371245222236818

`filter[A088908(n+2), A359374(#)]`
-/

namespace A088909.P15235371245222236818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088908 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A088909.P15235371245222236818

/-! ## A088909.P10540685720664996461

`∩[A045636(n+1), A088908(n+1)]`
-/

namespace A088909.P10540685720664996461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088909.P10540685720664996461

/-!
# A088911: Period 6: repeat [1, 1, 1, 0, 0, 0].

The programs for A088911, the canonical program `A088911.P10625138519151970146` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088911 has offset 0).

The definition of A088911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088911.P10625138519151970146

`a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=0, a(5)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A088911

/-- `a(n-6)` -/
def P10625138519151970146.Spec : Prop :=
  ∀ n, (P10625138519151970146.a n : ℤ) = A088911 n

theorem P10625138519151970146.correct : P10625138519151970146.Spec := by
  intro n
  simp only [A088911]

end A088911

/-!
# A088912: a(n) = smallest m such that sigma(m) = (n+1/2)*m.

The programs for A088912, there is no canonical definition to state claims against.
-/

/-! ## A088912.P15620784379136225145

`A317681(2*n+3)`
-/

namespace A088912.P15620784379136225145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317681 (2 * n + 3)

end

end A088912.P15620784379136225145

/-!
# A088913: a(n) = (Lucas(2n) + Lucas(2n+1)*phi)/kappa(phi/Fibonacci(4n)) where kappa(x) is the sum of successive remainders in computing the Euclidean algorithm for (1,x).

The programs for A088913, there is no canonical definition to state claims against.
-/

/-! ## A088913.P9122293385517419971

`3*A273622(2*(n+1))`
-/

namespace A088913.P9122293385517419971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A273622 (2 * (n + 1))

end

end A088913.P9122293385517419971

/-! ## A088913.P2150720311245223972

`A087215(n+1)-A005248(n+1)`
-/

namespace A088913.P2150720311245223972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087215 (n + 1) - A005248 (n + 1)

end

end A088913.P2150720311245223972

/-! ## A088913.P535274429630187160

`A005248(n+1)*A215580(2*n+1)`
-/

namespace A088913.P535274429630187160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) * A215580 (2 * n + 1)

end

end A088913.P535274429630187160

/-! ## A088913.P9391838621254397306

`A245580(2*(n+1))-A000204(2*(n+1))`
-/

namespace A088913.P9391838621254397306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245580 (2 * (n + 1)) - A000204 (2 * (n + 1))

end

end A088913.P9391838621254397306

/-! ## A088913.P11646111418923378492

`A002878(n+1)*A288913(n)-A002878(n)`
-/

namespace A088913.P11646111418923378492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) * A288913 n - A002878 n

end

end A088913.P11646111418923378492

/-!
# A088914: a(n) = (Fibonacci(2n+1) + Fibonacci(2n+2)*phi)/kappa(phi/Fibonacci(4n+2)) where kappa(x) is the sum of successive remainders by computing the Euclidean algorithm for (1,x).

The programs for A088914, there is no canonical definition to state claims against.
-/

/-! ## A088914.P13429349081081090117

`A273623(Δ[n²])`
-/

namespace A088914.P13429349081081090117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273623 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088914.P13429349081081090117

/-! ## A088914.P6630200863657729076

`A193922(A033573(n))`
-/

namespace A088914.P6630200863657729076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (A033573 n).toNat

end

end A088914.P6630200863657729076

/-! ## A088914.P8967233850802840728

`A205371(A064225(n))`
-/

namespace A088914.P8967233850802840728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205371 (A064225 n).toNat

end

end A088914.P8967233850802840728

/-! ## A088914.P13875711032483323371

`A076684(n)-A027941(n)`
-/

namespace A088914.P13875711032483323371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076684 n - A027941 n

end

end A088914.P13875711032483323371

/-! ## A088914.P1012866206952877762

`A002878(n)*A033890(n)`
-/

namespace A088914.P1012866206952877762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n * A033890 n

end

end A088914.P1012866206952877762

/-!
# A088915: Nonnegative numbers of the form mn(m+n) with integers m,n.

The programs for A088915, the canonical program `A088915.P15281990114647050217` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088915 has offset 1).

The definition of A088915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088915.P1369147763558027712

`∪[A255265(n+1), A002378(n)]`
-/

namespace A088915.P1369147763558027712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088915.P1369147763558027712

namespace A088915

/-- `∪[A255265(n+1), A002378(n)]` -/
def P1369147763558027712.Spec : Prop :=
  ∀ n, (P1369147763558027712.a n : ℤ) = A088915 (n + 1)

end A088915

/-! ## A088915.P15281990114647050217

`record[n*(char[A107985(n)]+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A088915

/-- `record[n*(char[A107985(n)]+1)]` -/
def P15281990114647050217.Spec : Prop :=
  ∀ n, (P15281990114647050217.a n : ℤ) = A088915 (n + 1)

theorem P15281990114647050217.correct : P15281990114647050217.Spec := by
  intro n
  simp only [A088915, Nat.add_sub_cancel]

end A088915

/-! ## A088915.P11027817654564519067

`record[char[A107985(n)]*A004277(n)]`
-/

namespace A088915.P11027817654564519067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088915.P11027817654564519067

namespace A088915

/-- `record[char[A107985(n)]*A004277(n)]` -/
def P11027817654564519067.Spec : Prop :=
  ∀ n, P11027817654564519067.a n = A088915 (n + 1)

end A088915

/-! ## A088915.P12939716052695593077

`record[char[A121741(n+1)]*A004277(n)]`
-/

namespace A088915.P12939716052695593077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121741 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088915.P12939716052695593077

namespace A088915

/-- `record[char[A121741(n+1)]*A004277(n)]` -/
def P12939716052695593077.Spec : Prop :=
  ∀ n, P12939716052695593077.a n = A088915 (n + 1)

end A088915

/-! ## A088915.P7305927977410716646

`record[char[A121741(n+1)]*A005843(n)]`
-/

namespace A088915.P7305927977410716646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121741 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088915.P7305927977410716646

namespace A088915

/-- `record[char[A121741(n+1)]*A005843(n)]` -/
def P7305927977410716646.Spec : Prop :=
  ∀ n, P7305927977410716646.a n = A088915 (n + 1)

end A088915

/-!
# A088917: Central Delannoy numbers (mod 3); Characteristic function for Cantor set.

The programs for A088917, the canonical program `A088917.P10709094076665346594` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088917 has offset 0).

The definition of A088917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088917.P13656046924811949414

`1-A316829(n)`
-/

namespace A088917.P13656046924811949414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A316829 n

end

end A088917.P13656046924811949414

namespace A088917

/-- `1-A316829(n)` -/
def P13656046924811949414.Spec : Prop :=
  ∀ n, P13656046924811949414.a n = A088917 n

end A088917

/-! ## A088917.P8070165743781106889

`2-A105220(n)`
-/

namespace A088917.P8070165743781106889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A105220 n

end

end A088917.P8070165743781106889

namespace A088917

/-- `2-A105220(n)` -/
def P8070165743781106889.Spec : Prop :=
  ∀ n, P8070165743781106889.a n = A088917 n

end A088917

/-! ## A088917.P10709094076665346594

`A001850(n)-3*floor(A001850(n)/3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088917

/-- `A001850(n)-3*floor(A001850(n)/3)` -/
def P10709094076665346594.Spec : Prop :=
  ∀ n, P10709094076665346594.a n = A088917 n

theorem P10709094076665346594.correct : P10709094076665346594.Spec := by
  intro n
  simp only [A088917]

end A088917

/-! ## A088917.P2690365733870255283

`and(n+1, a(floor(n/3)))` with `a(0)=1`
-/

namespace A088917.P2690365733870255283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land (n + 1) (a ⌊(n : ℚ) / 3⌋.toNat)

end

end A088917.P2690365733870255283

namespace A088917

/-- `and(n+1, a(floor(n/3)))` -/
def P2690365733870255283.Spec : Prop :=
  ∀ n, (P2690365733870255283.a n : ℤ) = A088917 n

end A088917

/-! ## A088917.P6269494791241042921

`a(floor(n/3))%gcd(2, n)` with `a(0)=1`
-/

namespace A088917.P6269494791241042921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat % Nat.gcd 2 n

end

end A088917.P6269494791241042921

namespace A088917

/-- `a(floor(n/3))%gcd(2, n)` -/
def P6269494791241042921.Spec : Prop :=
  ∀ n, (P6269494791241042921.a n : ℤ) = A088917 n

end A088917

/-! ## A088917.P8384047786365132660

`or(n, a(floor(n/3)))-n` with `a(0)=1`
-/

namespace A088917.P8384047786365132660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (n : ℤ) (a ⌊(n : ℚ) / 3⌋.toNat) - (n : ℤ)

end

end A088917.P8384047786365132660

namespace A088917

/-- `or(n, a(floor(n/3)))-n` -/
def P8384047786365132660.Spec : Prop :=
  ∀ n, P8384047786365132660.a n = A088917 n

end A088917

/-! ## A088917.P9057006622325463401

`(n-1)%(a(floor(n/3))+1)` with `a(0)=1`
-/

namespace A088917.P9057006622325463401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) - 1) (a ⌊(n : ℚ) / 3⌋.toNat + 1)

end

end A088917.P9057006622325463401

namespace A088917

/-- `(n-1)%(a(floor(n/3))+1)` -/
def P9057006622325463401.Spec : Prop :=
  ∀ n, P9057006622325463401.a n = A088917 n

end A088917

/-! ## A088917.P13078089846730398354

`((n+1)*a(floor(n/3)))%2` with `a(0)=1`
-/

namespace A088917.P13078089846730398354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a ⌊(n : ℚ) / 3⌋.toNat % 2

end

end A088917.P13078089846730398354

namespace A088917

/-- `((n+1)*a(floor(n/3)))%2` -/
def P13078089846730398354.Spec : Prop :=
  ∀ n, (P13078089846730398354.a n : ℤ) = A088917 n

end A088917

/-! ## A088917.P3675572469177054964

`a(floor(n/(3-a(n-1))))` with `a(0)=1, a(1)=0`
-/

namespace A088917.P3675572469177054964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ⌊(n : ℚ) / (3 - (a (n - 1) : ℤ) : ℚ)⌋.toNat

end

end A088917.P3675572469177054964

namespace A088917

/-- `a(floor(n/(3-a(n-1))))` -/
def P3675572469177054964.Spec : Prop :=
  ∀ n, (P3675572469177054964.a n : ℤ) = A088917 n

end A088917

/-! ## A088917.P6384564778134810979

`val(lcm(4, n+1)/4, a(floor(n/3))+n)` with `a(0)=1`
-/

namespace A088917.P6384564778134810979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat (a ⌊(n : ℚ) / 3⌋.toNat + n)

end

end A088917.P6384564778134810979

namespace A088917

/-- `val(lcm(4, n+1)/4, a(floor(n/3))+n)` -/
def P6384564778134810979.Spec : Prop :=
  ∀ n, (P6384564778134810979.a n : ℤ) = A088917 n

end A088917

/-! ## A088917.P6261103215343258867

`val((n+1)/2^val(n+1, 2), a(floor(n/3))+n)` with `a(0)=1`
-/

namespace A088917.P6261103215343258867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat (a ⌊(n : ℚ) / 3⌋.toNat + n)

end

end A088917.P6261103215343258867

namespace A088917

/-- `val((n+1)/2^val(n+1, 2), a(floor(n/3))+n)` -/
def P6261103215343258867.Spec : Prop :=
  ∀ n, (P6261103215343258867.a n : ℤ) = A088917 n

end A088917

/-! ## A088917.P1917210030514998833

`char[A167878(n)]`
-/

namespace A088917.P1917210030514998833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A088917.P1917210030514998833

namespace A088917

/-- `char[A167878(n)]` -/
def P1917210030514998833.Spec : Prop :=
  ∀ n, (P1917210030514998833.a n : ℤ) = A088917 n

end A088917

/-! ## A088917.P2472237972070071170

`char[A300222(n)]`
-/

namespace A088917.P2472237972070071170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A088917.P2472237972070071170

namespace A088917

/-- `char[A300222(n)]` -/
def P2472237972070071170.Spec : Prop :=
  ∀ n, (P2472237972070071170.a n : ℤ) = A088917 n

end A088917

/-! ## A088917.P17856700722669004152

`A006047(n)%2`
-/

namespace A088917.P17856700722669004152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006047 n) 2

end

end A088917.P17856700722669004152

namespace A088917

/-- `A006047(n)%2` -/
def P17856700722669004152.Spec : Prop :=
  ∀ n, P17856700722669004152.a n = A088917 n

end A088917

/-! ## A088917.P8159404418538902511

`A117980(n)%2`
-/

namespace A088917.P8159404418538902511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117980 n) 2

end

end A088917.P8159404418538902511

namespace A088917

/-- `A117980(n)%2` -/
def P8159404418538902511.Spec : Prop :=
  ∀ n, P8159404418538902511.a n = A088917 n

end A088917

/-! ## A088917.P7675348115780927319

`A120880(n)%2`
-/

namespace A088917.P7675348115780927319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120880 n) 2

end

end A088917.P7675348115780927319

namespace A088917

/-- `A120880(n)%2` -/
def P7675348115780927319.Spec : Prop :=
  ∀ n, P7675348115780927319.a n = A088917 n

end A088917

/-! ## A088917.P14931130885243015392

`A290091(n)%2`
-/

namespace A088917.P14931130885243015392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290091 n) 2

end

end A088917.P14931130885243015392

namespace A088917

/-- `A290091(n)%2` -/
def P14931130885243015392.Spec : Prop :=
  ∀ n, P14931130885243015392.a n = A088917 n

end A088917

/-! ## A088917.P15822871999382204730

`A382724(n)%2`
-/

namespace A088917.P15822871999382204730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382724 n) 2

end

end A088917.P15822871999382204730

namespace A088917

/-- `A382724(n)%2` -/
def P15822871999382204730.Spec : Prop :=
  ∀ n, P15822871999382204730.a n = A088917 n

end A088917

/-! ## A088917.P2331814362410964142

`char[record[A004488(n)]]`
-/

namespace A088917.P2331814362410964142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A088917.P2331814362410964142

namespace A088917

/-- `char[record[A004488(n)]]` -/
def P2331814362410964142.Spec : Prop :=
  ∀ n, (P2331814362410964142.a n : ℤ) = A088917 n

end A088917

/-!
# A088918: Number of representations of n as sum of two squares of distinct primes.

The programs for A088918, there is no canonical definition to state claims against.
-/

/-! ## A088918.P18310475769772713446

`char[A088909(n+1)-1]`
-/

namespace A088918.P18310475769772713446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088909 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A088918.P18310475769772713446

/-! ## A088918.P4468795589346359568

`char[lt[1, A279372(n+1)]]`
-/

namespace A088918.P4468795589346359568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279372 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A088918.P4468795589346359568

/-! ## A088918.P1742504673807685845

`char[lt[1, A279372(n)]-1]`
-/

namespace A088918.P1742504673807685845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279372 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A088918.P1742504673807685845

/-! ## A088918.P12180952833654576552

`A045698(C(∏{p}[n+1, #], n))`
-/

namespace A088918.P12180952833654576552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n)

end

end A088918.P12180952833654576552

/-! ## A088918.P1898535761786356285

`floor((A281477(n+1)+6)%3/2)`
-/

namespace A088918.P1898535761786356285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A281477 (n + 1) + 6) 3 : ℚ) / 2⌋

end

end A088918.P1898535761786356285

/-! ## A088918.P9358015606655043924

`and(∑[n+1], A045698(∏{p}[n+1, #]))`
-/

namespace A088918.P9358015606655043924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A045698 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A088918.P9358015606655043924

/-! ## A088918.P4966504198984906444

`A281441(A281477(n+1)!)`
-/

namespace A088918.P4966504198984906444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281441 (Nat.factorial (A281477 (n + 1)).toNat)

end

end A088918.P4966504198984906444

/-! ## A088918.P8012490263220413287

`A281442(A281477(n+1)!)`
-/

namespace A088918.P8012490263220413287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281442 (Nat.factorial (A281477 (n + 1)).toNat)

end

end A088918.P8012490263220413287

/-! ## A088918.P14488199988326085542

`A281458(A281477(n+1)!)`
-/

namespace A088918.P14488199988326085542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281458 (Nat.factorial (A281477 (n + 1)).toNat)

end

end A088918.P14488199988326085542

/-! ## A088918.P15465679739892740138

`A056170(A281477(n+1)+2)`
-/

namespace A088918.P15465679739892740138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A281477 (n + 1) + 2).toNat

end

end A088918.P15465679739892740138

/-! ## A088918.P8493622763832117006

`A090677(A281477(n+1)+2)`
-/

namespace A088918.P8493622763832117006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (A281477 (n + 1) + 2).toNat

end

end A088918.P8493622763832117006

/-! ## A088918.P1174180623676814548

`A111900(A281477(n+1)+2)`
-/

namespace A088918.P1174180623676814548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 (A281477 (n + 1) + 2).toNat

end

end A088918.P1174180623676814548

/-! ## A088918.P6283714003122562812

`A280126(A281477(n+1)+2)`
-/

namespace A088918.P6283714003122562812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280126 (A281477 (n + 1) + 2).toNat

end

end A088918.P6283714003122562812

/-! ## A088918.P7825632481601716641

`A281449(A281477(n+1)+2)`
-/

namespace A088918.P7825632481601716641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281449 (A281477 (n + 1) + 2).toNat

end

end A088918.P7825632481601716641

/-! ## A088918.P7882877823197623278

`A281477(A281477(n+1)+2)`
-/

namespace A088918.P7882877823197623278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281477 (A281477 (n + 1) + 2).toNat

end

end A088918.P7882877823197623278

/-! ## A088918.P12571402601967967657

`A045698(lcm(n+1, A008683(n+1)))`
-/

namespace A088918.P12571402601967967657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 (Int.lcm (n + 1 : ℤ) (A008683 (n + 1)))

end

end A088918.P12571402601967967657

/-! ## A088918.P17107518099602012644

`and(A008683(n+1), A045698(n+1))`
-/

namespace A088918.P17107518099602012644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (n + 1)) (A045698 (n + 1))

end

end A088918.P17107518099602012644

/-! ## A088918.P3972311710316010581

`A045698((n+1)*abs(A008683(n+1)))`
-/

namespace A088918.P3972311710316010581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 ((n + 1 : ℤ) * |A008683 (n + 1)|).toNat

end

end A088918.P3972311710316010581

/-! ## A088918.P461350258713340465

`A045698((n+1)^abs(A008683(n+1)))`
-/

namespace A088918.P461350258713340465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (|A008683 (n + 1)| : ℤ))).toNat

end

end A088918.P461350258713340465

/-! ## A088918.P6420282027874578319

`A063725(A045698(n+1)*A063725(n+1))`
-/

namespace A088918.P6420282027874578319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A045698 (n + 1) * A063725 (n + 1)).toNat

end

end A088918.P6420282027874578319

/-!
# A088920: Solutions k to the Diophantine equation k = 2n^2 = m^2+1.

The programs for A088920, there is no canonical definition to state claims against.
-/

/-! ## A088920.P671955816711622754

`ceil(∑[((sqrt(2)+1)^n)²])²+1`
-/

namespace A088920.P671955816711622754
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2 + 1

end

end A088920.P671955816711622754

/-! ## A088920.P14363177665231526115

`2*record[-floor((sqrt(2)+1)*a(n-1))]²` with `a(0)=1`
-/

namespace A088920.P14363177665231526115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -⌊(Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A088920.P14363177665231526115

/-! ## A088920.P9207527823703289927

`2*A008844(n)`
-/

namespace A088920.P9207527823703289927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008844 n

end

end A088920.P9207527823703289927

/-! ## A088920.P3642321712310910929

`xor(3, A008843(n))`
-/

namespace A088920.P3642321712310910929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A008843 n)

end

end A088920.P3642321712310910929

/-! ## A088920.P4407546154827119875

`A114619(Δ[n²])`
-/

namespace A088920.P4407546154827119875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088920.P4407546154827119875

/-! ## A088920.P4163413984937068779

`A115599(Δ[n²])`
-/

namespace A088920.P4163413984937068779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115599 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088920.P4163413984937068779

/-! ## A088920.P4740993990441648726

`xor(3, A002315(n)²)`
-/

namespace A088920.P4740993990441648726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A002315 n ^ 2)

end

end A088920.P4740993990441648726

/-! ## A088920.P10420567694649298898

`A055997(2*(n+1))`
-/

namespace A088920.P10420567694649298898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055997 (2 * (n + 1))

end

end A088920.P10420567694649298898

/-! ## A088920.P7609660962284400764

`A165518(n+1)/2`
-/

namespace A088920.P7609660962284400764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165518 (n + 1) : ℚ) / 2

end

end A088920.P7609660962284400764

/-! ## A088920.P13309134339409219380

`A024537(4*n+1)`
-/

namespace A088920.P13309134339409219380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 (4 * n + 1)

end

end A088920.P13309134339409219380

/-!
# A088921: The number of 321- and 2143-avoiding permutations of length n.

The programs for A088921, the canonical program `A088921.P16065288275914059738` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088921 has offset 1).

The definition of A088921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088921.P16065288275914059738

`∑[∑[2^n-n]]-n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A088921

/-- `∑[∑[2^n-n]]-n` -/
def P16065288275914059738.Spec : Prop :=
  ∀ n, P16065288275914059738.a n = A088921 (n + 1)

theorem P16065288275914059738.correct : P16065288275914059738.Spec := by
  intro n
  simp only [A088921, Nat.add_sub_cancel]

end A088921

/-! ## A088921.P8343034778178673108

`∑[∑[2*a(n-1)]+a(n-1)-n]` with `a(0)=1, a(1)=1`
-/

namespace A088921.P8343034778178673108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P8343034778178673108

namespace A088921

/-- `∑[∑[2*a(n-1)]+a(n-1)-n]` -/
def P8343034778178673108.Spec : Prop :=
  ∀ n, P8343034778178673108.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P2103524055357062002

`∑[∑[2*a(n-1)]-(n-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A088921.P2103524055357062002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P2103524055357062002

namespace A088921

/-- `∑[∑[2*a(n-1)]-(n-a(n-1))]` -/
def P2103524055357062002.Spec : Prop :=
  ∀ n, P2103524055357062002.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P14892884079100269921

`∑[A095121(n)-∑[n]]`
-/

namespace A088921.P14892884079100269921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P14892884079100269921

namespace A088921

/-- `∑[A095121(n)-∑[n]]` -/
def P14892884079100269921.Spec : Prop :=
  ∀ n, P14892884079100269921.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P15628658950961662955

`∑[abs(2-A080522(n+1))]`
-/

namespace A088921.P15628658950961662955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A080522 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P15628658950961662955

namespace A088921

/-- `∑[abs(2-A080522(n+1))]` -/
def P15628658950961662955.Spec : Prop :=
  ∀ n, P15628658950961662955.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P4396827597057351807

`∑[A296965(n+1)-∑[n]]`
-/

namespace A088921.P4396827597057351807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P4396827597057351807

namespace A088921

/-- `∑[A296965(n+1)-∑[n]]` -/
def P4396827597057351807.Spec : Prop :=
  ∀ n, P4396827597057351807.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P7982087341977900864

`abs(∑[∑[A155559(n)-n]]+1)`
-/

namespace A088921.P7982087341977900864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A088921.P7982087341977900864

namespace A088921

/-- `abs(∑[∑[A155559(n)-n]]+1)` -/
def P7982087341977900864.Spec : Prop :=
  ∀ n, P7982087341977900864.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P16008345541423351677

`∑[∑[A000079(n)-(char[1]+n)]]`
-/

namespace A088921.P16008345541423351677
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (((if ∃ j, f3 j = n then 1 else 0) + n : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P16008345541423351677

namespace A088921

/-- `∑[∑[A000079(n)-(char[1]+n)]]` -/
def P16008345541423351677.Spec : Prop :=
  ∀ n, P16008345541423351677.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P18106975730209160333

`abs(n-∑[∑[A005803(n)+n]])`
-/

namespace A088921.P18106975730209160333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A088921.P18106975730209160333

namespace A088921

/-- `abs(n-∑[∑[A005803(n)+n]])` -/
def P18106975730209160333.Spec : Prop :=
  ∀ n, P18106975730209160333.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P13916336038789843523

`∑[A116713(n+2)-(n+1)²]`
-/

namespace A088921.P13916336038789843523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116713 (n + 2) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P13916336038789843523

namespace A088921

/-- `∑[A116713(n+2)-(n+1)²]` -/
def P13916336038789843523.Spec : Prop :=
  ∀ n, P13916336038789843523.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P3445649162963066625

`∑[A028310(n)+∑[A000295(n)]]`
-/

namespace A088921.P3445649162963066625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P3445649162963066625

namespace A088921

/-- `∑[A028310(n)+∑[A000295(n)]]` -/
def P3445649162963066625.Spec : Prop :=
  ∀ n, P3445649162963066625.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P9094938042552264697

`∑[A027383(A004273(n))-∑[n]]`
-/

namespace A088921.P9094938042552264697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (A004273 n).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P9094938042552264697

namespace A088921

/-- `∑[A027383(A004273(n))-∑[n]]` -/
def P9094938042552264697.Spec : Prop :=
  ∀ n, P9094938042552264697.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P4702124216891283199

`∑[A000079(n+1)-A133263(n)]`
-/

namespace A088921.P4702124216891283199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A133263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P4702124216891283199

namespace A088921

/-- `∑[A000079(n+1)-A133263(n)]` -/
def P4702124216891283199.Spec : Prop :=
  ∀ n, P4702124216891283199.a n = A088921 (n + 1)

end A088921

/-! ## A088921.P12551729249269614933

`∑[2*A000079(n)-A133263(n)]`
-/

namespace A088921.P12551729249269614933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n - A133263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088921.P12551729249269614933

namespace A088921

/-- `∑[2*A000079(n)-A133263(n)]` -/
def P12551729249269614933.Spec : Prop :=
  ∀ n, P12551729249269614933.a n = A088921 (n + 1)

end A088921

/-!
# A088922: Consider the n X n matrix with entries (i*j mod n), where i,j=0..n-1; a(n) = rank of this matrix over the real numbers.

The programs for A088922, the canonical program `A088922.P11172242905826586929` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088922 has offset 1).

The definition of A088922 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088922.P11172242905826586929

`A000005(n+1)+A110654(n+1)-2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A088922

/-- `A000005(n+1)+A110654(n+1)-2` -/
def P11172242905826586929.Spec : Prop :=
  ∀ n, P11172242905826586929.a n = A088922 (n + 1)

theorem P11172242905826586929.correct : P11172242905826586929.Spec := by
  intro n
  simp only [A088922, Nat.add_sub_cancel]

end A088922

/-! ## A088922.P17705404351128641377

`floor(∑{d}[n+1, floor(atan(#))]+n/2)`
-/

namespace A088922.P17705404351128641377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋ : ℤ) : ℚ) + (n : ℚ) / 2⌋

end

end A088922.P17705404351128641377

namespace A088922

/-- `floor(∑{d}[n+1, floor(atan(#))]+n/2)` -/
def P17705404351128641377.Spec : Prop :=
  ∀ n, P17705404351128641377.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P6729323079563700175

`∑{d}[n+1, floor(n/2)^C(#, #²)]`
-/

namespace A088922.P6729323079563700175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(n : ℚ) / 2⌋ ^ Nat.choose d (d ^ 2)

end

end A088922.P6729323079563700175

namespace A088922

/-- `∑{d}[n+1, floor(n/2)^C(#, #²)]` -/
def P6729323079563700175.Spec : Prop :=
  ∀ n, P6729323079563700175.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P7011022268476842839

`floor(∏{e}[n+1, #+1]+n/2)-1`
-/

namespace A088922.P7011022268476842839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) + (n : ℚ) / 2⌋ - 1

end

end A088922.P7011022268476842839

namespace A088922

/-- `floor(∏{e}[n+1, #+1]+n/2)-1` -/
def P7011022268476842839.Spec : Prop :=
  ∀ n, P7011022268476842839.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P11367928611158665496

`∑{d}[n+1, 2%#/2]+ceil(n/2)`
-/

namespace A088922.P11367928611158665496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((2 % d : ℕ) : ℚ) / 2 + (⌈(n : ℚ) / 2⌉ : ℚ)

end

end A088922.P11367928611158665496

namespace A088922

/-- `∑{d}[n+1, 2%#/2]+ceil(n/2)` -/
def P11367928611158665496.Spec : Prop :=
  ∀ n, P11367928611158665496.a n = (A088922 (n + 1) : ℚ)

end A088922

/-! ## A088922.P8420011716527797461

`∑{d}[n+1, ceil(#/(n+3-#))]-1`
-/

namespace A088922.P8420011716527797461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈(d : ℚ) / ((n + 3 : ℤ) - (d : ℤ) : ℚ)⌉ - 1

end

end A088922.P8420011716527797461

namespace A088922

/-- `∑{d}[n+1, ceil(#/(n+3-#))]-1` -/
def P8420011716527797461.Spec : Prop :=
  ∀ n, P8420011716527797461.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P10854187135374266259

`floor(∑{d}[n+1, tanh(log2(#))]+(n+1)/2)`
-/

namespace A088922.P10854187135374266259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), Real.tanh (Real.logb 2 (d : ℝ)) + ((n + 1 : ℚ) / 2 : ℝ)⌋

end

end A088922.P10854187135374266259

namespace A088922

/-- `floor(∑{d}[n+1, tanh(log2(#))]+(n+1)/2)` -/
def P10854187135374266259.Spec : Prop :=
  ∀ n, P10854187135374266259.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P13979465798592852324

`∑[char[2*n]]+∏{e}[n+1, #+1]-2`
-/

namespace A088922.P13979465798592852324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) - 2)

end

end A088922.P13979465798592852324

namespace A088922

/-- `∑[char[2*n]]+∏{e}[n+1, #+1]-2` -/
def P13979465798592852324.Spec : Prop :=
  ∀ n, P13979465798592852324.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P17813596590212904565

`A361003(n+1)-1`
-/

namespace A088922.P17813596590212904565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361003 (n + 1) - 1

end

end A088922.P17813596590212904565

namespace A088922

/-- `A361003(n+1)-1` -/
def P17813596590212904565.Spec : Prop :=
  ∀ n, P17813596590212904565.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P771157650912500347

`n-A003165(n+1)`
-/

namespace A088922.P771157650912500347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003165 (n + 1)

end

end A088922.P771157650912500347

namespace A088922

/-- `n-A003165(n+1)` -/
def P771157650912500347.Spec : Prop :=
  ∀ n, P771157650912500347.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P3298027248390754205

`floor(n/2+Δ[A006218(n)]-1)`
-/

namespace A088922.P3298027248390754205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 + (f1 (n + 1) - f1 n - 1 : ℚ)⌋

end

end A088922.P3298027248390754205

namespace A088922

/-- `floor(n/2+Δ[A006218(n)]-1)` -/
def P3298027248390754205.Spec : Prop :=
  ∀ n, P3298027248390754205.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P6820873769244403175

`∑[(n-1)%2]+A000005(C(n+1, n))`
-/

namespace A088922.P6820873769244403175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000005 (Nat.choose (n + 1) n)

end

end A088922.P6820873769244403175

namespace A088922

/-- `∑[(n-1)%2]+A000005(C(n+1, n))` -/
def P6820873769244403175.Spec : Prop :=
  ∀ n, P6820873769244403175.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P9295364639876800065

`∑{d}[n+1, #+1]-A000203(n+1)+floor(n/2)-1`
-/

namespace A088922.P9295364639876800065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) + (⌊(n : ℚ) / 2⌋ - 1)

end

end A088922.P9295364639876800065

namespace A088922

/-- `∑{d}[n+1, #+1]-A000203(n+1)+floor(n/2)-1` -/
def P9295364639876800065.Spec : Prop :=
  ∀ n, P9295364639876800065.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P3860929583812970640

`A032741(n+1)+A004526(n)`
-/

namespace A088922.P3860929583812970640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + A004526 n

end

end A088922.P3860929583812970640

namespace A088922

/-- `A032741(n+1)+A004526(n)` -/
def P3860929583812970640.Spec : Prop :=
  ∀ n, P3860929583812970640.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P8947246317043307332

`A110654(n)+A023645(n+1)`
-/

namespace A088922.P8947246317043307332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A023645 (n + 1)

end

end A088922.P8947246317043307332

namespace A088922

/-- `A110654(n)+A023645(n+1)` -/
def P8947246317043307332.Spec : Prop :=
  ∀ n, P8947246317043307332.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P11294396620469760194

`A373925(n+1)+A052938(n)`
-/

namespace A088922.P11294396620469760194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373925 (n + 1) + A052938 n

end

end A088922.P11294396620469760194

namespace A088922

/-- `A373925(n+1)+A052938(n)` -/
def P11294396620469760194.Spec : Prop :=
  ∀ n, P11294396620469760194.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P7768891027202592903

`A032766(n)-A049820(n+1)`
-/

namespace A088922.P7768891027202592903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n - A049820 (n + 1)

end

end A088922.P7768891027202592903

namespace A088922

/-- `A032766(n)-A049820(n+1)` -/
def P7768891027202592903.Spec : Prop :=
  ∀ n, P7768891027202592903.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P16465930109328970047

`A134871(n+1)-A065033(n)`
-/

namespace A088922.P16465930109328970047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134871 (n + 1) - A065033 n

end

end A088922.P16465930109328970047

namespace A088922

/-- `A134871(n+1)-A065033(n)` -/
def P16465930109328970047.Spec : Prop :=
  ∀ n, P16465930109328970047.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P15689091227851780468

`A158907(n+1)-A080513(n)`
-/

namespace A088922.P15689091227851780468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) - A080513 n

end

end A088922.P15689091227851780468

namespace A088922

/-- `A158907(n+1)-A080513(n)` -/
def P15689091227851780468.Spec : Prop :=
  ∀ n, P15689091227851780468.a n = A088922 (n + 1)

end A088922

/-! ## A088922.P18429903692069221134

`A295220(n+1)-A030451(n)`
-/

namespace A088922.P18429903692069221134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295220 (n + 1) - A030451 n

end

end A088922.P18429903692069221134

namespace A088922

/-- `A295220(n+1)-A030451(n)` -/
def P18429903692069221134.Spec : Prop :=
  ∀ n, P18429903692069221134.a n = A088922 (n + 1)

end A088922

/-!
# A088924: Number of "9ish numbers" with n digits.

The programs for A088924, the canonical program `A088924.P12255029344912140237` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088924 has offset 1).

The definition of A088924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088924.P12255029344912140237

`9*10^n-8*9^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A088924

/-- `9*10^n-8*9^n` -/
def P12255029344912140237.Spec : Prop :=
  ∀ n, P12255029344912140237.a n = A088924 (n + 1)

theorem P12255029344912140237.correct : P12255029344912140237.Spec := by
  intro n
  simp only [A088924, Nat.add_sub_cancel]

end A088924

/-! ## A088924.P7341537812395284552

`lcm(9, a(n-1)+10^(n-1))` with `a(0)=1`
-/

namespace A088924.P7341537812395284552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 9 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A088924.P7341537812395284552

namespace A088924

/-- `lcm(9, a(n-1)+10^(n-1))` -/
def P7341537812395284552.Spec : Prop :=
  ∀ n, (P7341537812395284552.a n : ℤ) = A088924 (n + 1)

end A088924

/-! ## A088924.P6296662473613219086

`abs(Δ[A016189(n)])`
-/

namespace A088924.P6296662473613219086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A088924.P6296662473613219086

namespace A088924

/-- `abs(Δ[A016189(n)])` -/
def P6296662473613219086.Spec : Prop :=
  ∀ n, P6296662473613219086.a n = A088924 (n + 1)

end A088924

/-! ## A088924.P14007252450150647135

`abs(Δ[A155671(n)])`
-/

namespace A088924.P14007252450150647135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A088924.P14007252450150647135

namespace A088924

/-- `abs(Δ[A155671(n)])` -/
def P14007252450150647135.Spec : Prop :=
  ∀ n, P14007252450150647135.a n = A088924 (n + 1)

end A088924

/-! ## A088924.P8974306363461453664

`A050686(Δ[n²])`
-/

namespace A088924.P8974306363461453664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088924.P8974306363461453664

namespace A088924

/-- `A050686(Δ[n²])` -/
def P8974306363461453664.Spec : Prop :=
  ∀ n, P8974306363461453664.a n = A088924 (n + 1)

end A088924

/-! ## A088924.P1487237421153927706

`record[A050686(A029579(n))]`
-/

namespace A088924.P1487237421153927706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050686 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088924.P1487237421153927706

namespace A088924

/-- `record[A050686(A029579(n))]` -/
def P1487237421153927706.Spec : Prop :=
  ∀ n, P1487237421153927706.a n = A088924 (n + 1)

end A088924

/-! ## A088924.P4492078343155124852

`or(Δ[A016189(n)], A000007(n))`
-/

namespace A088924.P4492078343155124852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A000007 n)

end

end A088924.P4492078343155124852

namespace A088924

/-- `or(Δ[A016189(n)], A000007(n))` -/
def P4492078343155124852.Spec : Prop :=
  ∀ n, P4492078343155124852.a n = A088924 (n + 1)

end A088924

/-! ## A088924.P16390986329482938473

`abs(Δ[A155647(n)-A155648(n)])`
-/

namespace A088924.P16390986329482938473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155647 n - A155648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A088924.P16390986329482938473

namespace A088924

/-- `abs(Δ[A155647(n)-A155648(n)])` -/
def P16390986329482938473.Spec : Prop :=
  ∀ n, P16390986329482938473.a n = A088924 (n + 1)

end A088924

/-!
# A088925: Square table, read by antidiagonals, of coefficients T(n,k) of x^n*y^k in f(x,y) that satisfies f(x,y) = 1/(1-x-y) + xy*f(x,y)^3.

The programs for A088925, there is no canonical definition to state claims against.
-/

/-! ## A088925.P14960550207381340641

`A107105(n)+A102683(A347618(n))`
-/

namespace A088925.P14960550207381340641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107105 n + A102683 (A347618 n).toNat

end

end A088925.P14960550207381340641

/-! ## A088925.P14376364558025394634

`A000217(A007318(n))+and(2, A358194(3*n+4))`
-/

namespace A088925.P14376364558025394634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007318 n).toNat + Int.land 2 (A358194 (3 * n + 4))

end

end A088925.P14376364558025394634

/-! ## A088925.P6911247888503420986

`A055641(A196922(2*(n+2)))+A000217(A007318(n))`
-/

namespace A088925.P6911247888503420986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A196922 (2 * (n + 2))).toNat + A000217 (A007318 n).toNat

end

end A088925.P6911247888503420986

/-!
# A088926: Main diagonal of table A088925, which lists coefficients T(n,k) of x^n*y^k in f(x,y) that satisfies f(x,y) = 1/(1-x-y) + xy*f(x,y)^3.

The programs for A088926, there is no canonical definition to state claims against.
-/

/-! ## A088926.P13612787406246545774

`A088925(∑[4*n])`
-/

namespace A088926.P13612787406246545774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088925 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088926.P13612787406246545774

/-! ## A088926.P5915093013752608569

`record[A088925(∑[A071045(n)])]`
-/

namespace A088926.P5915093013752608569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088925 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088926.P5915093013752608569

/-!
# A088927: Antidiagonal sums of table A088925, which lists coefficients T(n,k) of x^n*y^k in f(x,y) that satisfies f(x,y) = 1/(1-x-y) + xy*f(x,y)^3.

The programs for A088927, there is no canonical definition to state claims against.
-/

/-! ## A088927.P4183472902756004092

`A241463(A360891(n))+A126566(n)`
-/

namespace A088927.P4183472902756004092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241463 (A360891 n).toNat + A126566 n

end

end A088927.P4183472902756004092

/-! ## A088927.P5053411202594219305

`∑[A226190(∑[A149186(n)])]`
-/

namespace A088927.P5053411202594219305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088927.P5053411202594219305

/-! ## A088927.P7841894925603430921

`A369158(n)+A216278(A007837(n))`
-/

namespace A088927.P7841894925603430921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369158 n + A216278 (A007837 n).toNat

end

end A088927.P7841894925603430921

/-!
# A088929: Coefficient of x^n in A(x)^n is A087457(n) for n>=1.

The programs for A088929, there is no canonical definition to state claims against.
-/

/-! ## A088929.P17940173780777485046

`A356111(n)-A336525(n)%A139382(n+1)`
-/

namespace A088929.P17940173780777485046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356111 n - Int.tmod (A336525 n) (A139382 (n + 1))

end

end A088929.P17940173780777485046

/-!
# A088930: Sum of first n terms of A(x)^n is A087457(n) for n>=1.

The programs for A088930, there is no canonical definition to state claims against.
-/

/-! ## A088930.P4544490765327119850

`A181768(A004880(n+1))+A131577(n)`
-/

namespace A088930.P4544490765327119850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (A004880 (n + 1)).toNat + A131577 n

end

end A088930.P4544490765327119850

/-! ## A088930.P1160230484668840549

`∑[A202059(A073788(n))]`
-/

namespace A088930.P1160230484668840549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202059 (A073788 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088930.P1160230484668840549

/-! ## A088930.P846730955919528719

`∑[A276571(A000698(n))]`
-/

namespace A088930.P846730955919528719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A000698 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088930.P846730955919528719

/-!
# A088931: G.f.: Sum_{n >= 1} ( x^(2^n)/ ((1+x^(2^(n-1)))*Product_{j=0..n-1} (1-x^(2^j)) ) ).

The programs for A088931, there is no canonical definition to state claims against.
-/

/-! ## A088931.P5171112681287343884

`a(n-2)+a(floor(n/2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A088931.P5171112681287343884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A088931.P5171112681287343884

/-! ## A088931.P10282818382473476533

`a(floor(n/2))-ceil(-a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A088931.P10282818382473476533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - (-a (n - 2))

end

end A088931.P10282818382473476533

/-! ## A088931.P10046523638176146808

`abs(a(n-2)+a(and(n, -2)/2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A088931.P10046523638176146808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A088931.P10046523638176146808

/-! ## A088931.P10095286926240692475

`ceil(a(n-2)+a(and(n, -2)/2))` with `a(0)=0, a(1)=0, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A088931.P10095286926240692475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A088931.P10095286926240692475

/-! ## A088931.P18072109487133001412

`round(a(ceil((n-1)/2))+a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A088931.P18072109487133001412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat + a (n - 2)

end

end A088931.P18072109487133001412

/-! ## A088931.P6558873128586240495

`floor(a(n-2)+a(∑[a(n-2)²]))` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A088931.P6558873128586240495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + a (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088931.P6558873128586240495

/-! ## A088931.P8340426687422682736

`floor(a(n-2)+a(∑[floor(a(n-2))]))` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A088931.P8340426687422682736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + a (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088931.P8340426687422682736

/-! ## A088931.P3140705168609087793

`A088980(n)%n!`
-/

namespace A088931.P3140705168609087793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088980 n) (Nat.factorial n : ℤ)

end

end A088931.P3140705168609087793

/-! ## A088931.P18164793063037831424

`A018819(n)-A088567(n)`
-/

namespace A088931.P18164793063037831424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n - A088567 n

end

end A088931.P18164793063037831424

/-! ## A088931.P5486749422033639941

`A088980(n)*A157928(n)`
-/

namespace A088931.P5486749422033639941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088980 n * A157928 n

end

end A088931.P5486749422033639941

/-!
# A088932: G.f.: 1/((1-x)^2*(1-x^2)*(1-x^4)*(1-x^8)).

The programs for A088932, the canonical program `A088932.P12918642318921764939` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088932 has offset 0).

The definition of A088932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088932.P12918642318921764939

`∑[A008643(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A088932

/-- `∑[A008643(n)]` -/
def P12918642318921764939.Spec : Prop :=
  ∀ n, P12918642318921764939.a n = A088932 n

theorem P12918642318921764939.correct : P12918642318921764939.Spec := by
  intro n
  simp only [A088932]

end A088932

/-! ## A088932.P4125069349932559404

`∑[A008804(floor(n/2))]`
-/

namespace A088932.P4125069349932559404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088932.P4125069349932559404

namespace A088932

/-- `∑[A008804(floor(n/2))]` -/
def P4125069349932559404.Spec : Prop :=
  ∀ n, P4125069349932559404.a n = A088932 n

end A088932

/-! ## A088932.P8469631089408506929

`A008643(char[2]+n)+a(n-1)` with `a(0)=1`
-/

namespace A088932.P8469631089408506929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008643 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A088932.P8469631089408506929

namespace A088932

/-- `A008643(char[2]+n)+a(n-1)` -/
def P8469631089408506929.Spec : Prop :=
  ∀ n, P8469631089408506929.a n = A088932 n

end A088932

/-! ## A088932.P15223573799475941318

`∑[∑[A059841(n)*A092532(n)]]`
-/

namespace A088932.P15223573799475941318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A092532 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088932.P15223573799475941318

namespace A088932

/-- `∑[∑[A059841(n)*A092532(n)]]` -/
def P15223573799475941318.Spec : Prop :=
  ∀ n, P15223573799475941318.a n = A088932 n

end A088932

/-! ## A088932.P2546563408564428674

`A008644(2*n)`
-/

namespace A088932.P2546563408564428674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008644 (2 * n)

end

end A088932.P2546563408564428674

namespace A088932

/-- `A008644(2*n)` -/
def P2546563408564428674.Spec : Prop :=
  ∀ n, P2546563408564428674.a n = A088932 n

end A088932

/-! ## A088932.P12354115451577766412

`A088954(2*n+1)-A088954(2*n)`
-/

namespace A088932.P12354115451577766412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088954 (2 * n + 1) - A088954 (2 * n)

end

end A088932.P12354115451577766412

namespace A088932

/-- `A088954(2*n+1)-A088954(2*n)` -/
def P12354115451577766412.Spec : Prop :=
  ∀ n, P12354115451577766412.a n = A088932 n

end A088932

/-! ## A088932.P10296390926870780562

`record[A008644(n-A008612(n+1))]`
-/

namespace A088932.P10296390926870780562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008644 ((n : ℤ) - A008612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088932.P10296390926870780562

namespace A088932

/-- `record[A008644(n-A008612(n+1))]` -/
def P10296390926870780562.Spec : Prop :=
  ∀ n, P10296390926870780562.a n = A088932 n

end A088932

/-! ## A088932.P2731690766792146886

`∑[A029300(3*n)]`
-/

namespace A088932.P2731690766792146886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029300 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088932.P2731690766792146886

namespace A088932

/-- `∑[A029300(3*n)]` -/
def P2731690766792146886.Spec : Prop :=
  ∀ n, P2731690766792146886.a n = A088932 n

end A088932

/-! ## A088932.P3812099863756930081

`∑[A029238(A168326(n+1))]`
-/

namespace A088932.P3812099863756930081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A168326 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088932.P3812099863756930081

namespace A088932

/-- `∑[A029238(A168326(n+1))]` -/
def P3812099863756930081.Spec : Prop :=
  ∀ n, P3812099863756930081.a n = A088932 n

end A088932

/-! ## A088932.P10033504211872284350

`record[Δ[Δ[A008645(n)]]]`
-/

namespace A088932.P10033504211872284350
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088932.P10033504211872284350

namespace A088932

/-- `record[Δ[Δ[A008645(n)]]]` -/
def P10033504211872284350.Spec : Prop :=
  ∀ n, P10033504211872284350.a n = A088932 n

end A088932

/-! ## A088932.P9302541858450363559

`A008645(4*n+2)-A008645(4*n)`
-/

namespace A088932.P9302541858450363559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 (4 * n + 2) - A008645 (4 * n)

end

end A088932.P9302541858450363559

namespace A088932

/-- `A008645(4*n+2)-A008645(4*n)` -/
def P9302541858450363559.Spec : Prop :=
  ∀ n, P9302541858450363559.a n = A088932 n

end A088932

/-! ## A088932.P5258998222249112468

`record[A008644(A008611(n))]`
-/

namespace A088932.P5258998222249112468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008644 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088932.P5258998222249112468

namespace A088932

/-- `record[A008644(A008611(n))]` -/
def P5258998222249112468.Spec : Prop :=
  ∀ n, P5258998222249112468.a n = A088932 n

end A088932

/-! ## A088932.P16477891632192162572

`record[A008644(A008624(n))]`
-/

namespace A088932.P16477891632192162572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008644 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088932.P16477891632192162572

namespace A088932

/-- `record[A008644(A008624(n))]` -/
def P16477891632192162572.Spec : Prop :=
  ∀ n, P16477891632192162572.a n = A088932 n

end A088932

/-! ## A088932.P11324459332076640471

`record[A008644(A008612(n))]`
-/

namespace A088932.P11324459332076640471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008644 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088932.P11324459332076640471

namespace A088932

/-- `record[A008644(A008612(n))]` -/
def P11324459332076640471.Spec : Prop :=
  ∀ n, P11324459332076640471.a n = A088932 n

end A088932

/-! ## A088932.P2326013452683578111

`record[A008644(A008615(n))]`
-/

namespace A088932.P2326013452683578111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008644 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088932.P2326013452683578111

namespace A088932

/-- `record[A008644(A008615(n))]` -/
def P2326013452683578111.Spec : Prop :=
  ∀ n, P2326013452683578111.a n = A088932 n

end A088932

/-!
# A088934: Maximum prime required for the representation of n by a signed sum of squares of distinct primes that has the minimal number of terms A088910(n).

The programs for A088934, there is no canonical definition to state claims against.
-/

/-! ## A088934.P9780368027509358633

`A089294(A048766(n^3))`
-/

namespace A088934.P9780368027509358633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089294 (A048766 (n ^ 3)).toNat

end

end A088934.P9780368027509358633

/-! ## A088934.P7077575511497869707

`A089294(A089458(n+1)+n)`
-/

namespace A088934.P7077575511497869707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089294 (A089458 (n + 1) + (n : ℤ)).toNat

end

end A088934.P7077575511497869707

/-! ## A088934.P17484951466034663867

`A089294(n)*A350529(C(n, 2))`
-/

namespace A088934.P17484951466034663867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089294 n * A350529 (Nat.choose n 2)

end

end A088934.P17484951466034663867

/-! ## A088934.P15132915080683588696

`∏{p}[A089294(n)^A104324(Δ[n²]), #]`
-/

namespace A088934.P15132915080683588696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089294 n : ℚ) ^ (A104324 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A088934.P15132915080683588696

/-! ## A088934.P149036078753950438

`A089294(n)%A337231(n²+(n+1)²)`
-/

namespace A088934.P149036078753950438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089294 n) (A337231 (n ^ 2 + (n + 1) ^ 2))

end

end A088934.P149036078753950438

/-!
# A088935: Numbers n such that leading digits of 2^n and 5^n are equal.

The programs for A088935, there is no canonical definition to state claims against.
-/

/-! ## A088935.P17064843389150592162

`eq[A008952(n), A111395(n)]`
-/

namespace A088935.P17064843389150592162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088935.P17064843389150592162

/-!
# A088936: a(1)=1, a(2)=2 then a(A(k))=a(k) where a(1),a(2),...,a(k) are k consecutive defined terms and A(k)=a(1)+a(2)+...+a(k). Fill in any undefined places with max{a(i)+1 : 1<=i<=k}.

The programs for A088936, there is no canonical definition to state claims against.
-/

/-! ## A088936.P1700547339653422730

`Δ[A088937(A028310(n))%(n+1)²]`
-/

namespace A088936.P1700547339653422730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088937 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088936.P1700547339653422730

/-! ## A088936.P4889317455685155842

`A028310(Δ[A088937(A028310(n))])`
-/

namespace A088936.P4889317455685155842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088937 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A088936.P4889317455685155842

/-! ## A088936.P14357459914704224613

`A028310(A088937(n+1)-A088937(A028310(n)))`
-/

namespace A088936.P14357459914704224613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A088937 (n + 1) - A088937 (A028310 n).toNat).toNat

end

end A088936.P14357459914704224613

/-! ## A088936.P124304794126533226

`A088939(A004277(n))`
-/

namespace A088936.P124304794126533226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088939 (A004277 n).toNat

end

end A088936.P124304794126533226

/-! ## A088936.P7015631617784461666

`A088939(A004275(n+1))`
-/

namespace A088936.P7015631617784461666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088939 (A004275 (n + 1)).toNat

end

end A088936.P7015631617784461666

/-!
# A088937: Partial sums of A088936.

The programs for A088937, there is no canonical definition to state claims against.
-/

/-! ## A088937.P2085340057334934452

`∑[A088936(n+1)]`
-/

namespace A088937.P2085340057334934452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088937.P2085340057334934452

/-! ## A088937.P1934379636200724875

`A088936(2*n+1-n)+a(n-1)` with `a(0)=1`
-/

namespace A088937.P1934379636200724875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088936 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat + a (n - 1)

end

end A088937.P1934379636200724875

/-! ## A088937.P262983420413983408

`A088936(n+1)+A028310(a(n-1))` with `a(0)=1`
-/

namespace A088937.P262983420413983408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088936 (n + 1) + A028310 (a (n - 1)).toNat

end

end A088937.P262983420413983408

/-! ## A088937.P16724796713319937685

`lt[A088936(abs(1-n)+1), A088936(n+1)]`
-/

namespace A088937.P16724796713319937685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088936 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088937.P16724796713319937685

/-!
# A088938: Occurrences of 2's in A088936.

The programs for A088938, there is no canonical definition to state claims against.
-/

/-! ## A088938.P12256046529771025933

`(∑[∑[n!]]+3)/2`
-/

namespace A088938.P12256046529771025933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℚ) / 2

end

end A088938.P12256046529771025933

/-! ## A088938.P9943752424190625717

`∑[∑[round(n!/2)]]-(n-1)`
-/

namespace A088938.P9943752424190625717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1)

end

end A088938.P9943752424190625717

/-! ## A088938.P5902323030474216147

`∑[∑[n*a(n-1)]]` with `a(0)=2, a(1)=-1, a(2)=1`
-/

namespace A088938.P5902323030474216147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 1] fun n f2 =>
  (n : ℤ) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088938.P5902323030474216147

/-! ## A088938.P657552296271480173

`∑[∑[a(n-1)/n^(-1)]]` with `a(0)=2, a(1)=-1, a(2)=1`
-/

namespace A088938.P657552296271480173
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, -1, 1] fun n f2 =>
  f2 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088938.P657552296271480173

/-! ## A088938.P5125652003826420300

`(n+1)*(a(n-1)-a(n-2))+2` with `a(0)=2, a(1)=3`
-/

namespace A088938.P5125652003826420300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) - a (n - 2)) + 2

end

end A088938.P5125652003826420300

/-!
# A088939: Runs are reduced to one term in A088936.

The programs for A088939, there is no canonical definition to state claims against.
-/

/-! ## A088939.P1034142891581724658

`Δ[A088940(A028310(n))%A000079(n)]`
-/

namespace A088939.P1034142891581724658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088940 (A028310 n).toNat) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088939.P1034142891581724658

/-! ## A088939.P5743033198265229300

`Δ[A088940(A028310(n))+A036453(n+1)]`
-/

namespace A088939.P5743033198265229300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088940 (A028310 n).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088939.P5743033198265229300

/-! ## A088939.P3002289157210519417

`A001221(A276620(n+1))+A001221(A290829(n+1))`
-/

namespace A088939.P3002289157210519417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276620 (n + 1)).toNat + A001221 (A290829 (n + 1)).toNat

end

end A088939.P3002289157210519417

/-!
# A088940: Partial sums of A088939.

The programs for A088940, there is no canonical definition to state claims against.
-/

/-! ## A088940.P3045647082027167573

`∑[A088939(n+1)]`
-/

namespace A088940.P3045647082027167573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088940.P3045647082027167573

/-!
# A088941: a(n)=12*sum(1<=i<=j<=k<=n,i*j/k).

The programs for A088941, the canonical program `A088941.P4255863776560165692` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088941 has offset 0).

The definition of A088941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088941.P4255863776560165692

`n/24*(9*n^3+58*n²+123*n+98)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A088941

/-- `n/24*(9*n^3+58*n²+123*n+98)` -/
def P4255863776560165692.Spec : Prop :=
  ∀ n, P4255863776560165692.a n = (A088941 n : ℚ)

end A088941

/-! ## A088941.P1827548677434093494

`∑[(record[xor(1, n+1)]+n)*∑[n+1]]`
-/

namespace A088941.P1827548677434093494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088941.P1827548677434093494

namespace A088941

/-- `∑[(record[xor(1, n+1)]+n)*∑[n+1]]` -/
def P1827548677434093494.Spec : Prop :=
  ∀ n, (P1827548677434093494.a n : ℤ) = A088941 n

end A088941

/-! ## A088941.P16386293282271532556

`∑[∑[∑[9*n+1]]%(n+1)²²]`
-/

namespace A088941.P16386293282271532556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % ((n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088941.P16386293282271532556

namespace A088941

/-- `∑[∑[∑[9*n+1]]%(n+1)²²]` -/
def P16386293282271532556.Spec : Prop :=
  ∀ n, (P16386293282271532556.a n : ℤ) = A088941 n

end A088941

/-! ## A088941.P14494518737002950568

`A051798(n)-1`
-/

namespace A088941.P14494518737002950568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051798 n - 1

end

end A088941.P14494518737002950568

namespace A088941

/-- `A051798(n)-1` -/
def P14494518737002950568.Spec : Prop :=
  ∀ n, P14494518737002950568.a n = A088941 n

end A088941

/-! ## A088941.P844248444097419692

`∑[∑[∑[9*n+1]]*A057427(n)]`
-/

namespace A088941.P844248444097419692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088941.P844248444097419692

namespace A088941

/-- `∑[∑[∑[9*n+1]]*A057427(n)]` -/
def P844248444097419692.Spec : Prop :=
  ∀ n, P844248444097419692.a n = A088941 n

end A088941

/-! ## A088941.P10851307692115470014

`A051799(n)-A145126(n)`
-/

namespace A088941.P10851307692115470014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051799 n - A145126 n

end

end A088941.P10851307692115470014

namespace A088941

/-- `A051799(n)-A145126(n)` -/
def P10851307692115470014.Spec : Prop :=
  ∀ n, P10851307692115470014.a n = A088941 n

end A088941

/-! ## A088941.P8610679360324025940

`A215862(n)+A168566(n+1)`
-/

namespace A088941.P8610679360324025940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n + A168566 (n + 1)

end

end A088941.P8610679360324025940

namespace A088941

/-- `A215862(n)+A168566(n+1)` -/
def P8610679360324025940.Spec : Prop :=
  ∀ n, P8610679360324025940.a n = A088941 n

end A088941

/-! ## A088941.P491918393023280162

`∑[A007586(n+1)]-1`
-/

namespace A088941.P491918393023280162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088941.P491918393023280162

namespace A088941

/-- `∑[A007586(n+1)]-1` -/
def P491918393023280162.Spec : Prop :=
  ∀ n, P491918393023280162.a n = A088941 n

end A088941

/-! ## A088941.P1709273502643824597

`∑[∑[n+1]*A225126(2*n+1)]`
-/

namespace A088941.P1709273502643824597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A225126 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088941.P1709273502643824597

namespace A088941

/-- `∑[∑[n+1]*A225126(2*n+1)]` -/
def P1709273502643824597.Spec : Prop :=
  ∀ n, P1709273502643824597.a n = A088941 n

end A088941

/-! ## A088941.P310013849066092145

`∑[(A056595(A008578(n+1))+3*n)*A000217(n+1)]`
-/

namespace A088941.P310013849066092145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056595 (A008578 (n + 1)).toNat + (3 * n : ℤ)) * A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088941.P310013849066092145

namespace A088941

/-- `∑[(A056595(A008578(n+1))+3*n)*A000217(n+1)]` -/
def P310013849066092145.Spec : Prop :=
  ∀ n, P310013849066092145.a n = A088941 n

end A088941

/-!
# A088944: a(n) = least k such that for any m>=0 k*sum(1<=u<=v<=w<=m,u^n*v/w) is an integer.

The programs for A088944, there is no canonical definition to state claims against.
-/

/-! ## A088944.P13861327293394205352

`A000034(A032020(n))*A051717(n+2)`
-/

namespace A088944.P13861327293394205352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A032020 n).toNat * A051717 (n + 2)

end

end A088944.P13861327293394205352

/-! ## A088944.P13271247708069883687

`A051717(n+2)*A112753(A010004(n+2))`
-/

namespace A088944.P13271247708069883687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (n + 2) * A112753 (A010004 (n + 2)).toNat

end

end A088944.P13271247708069883687

/-! ## A088944.P9463251898378431514

`A006519(A051717(n+4))*A051717(n+2)`
-/

namespace A088944.P9463251898378431514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A051717 (n + 4)).toNat * A051717 (n + 2)

end

end A088944.P9463251898378431514

/-! ## A088944.P10825521918002997986

`A016002(A113155(n+4))*A051717(n+2)`
-/

namespace A088944.P10825521918002997986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016002 (A113155 (n + 4)).toNat * A051717 (n + 2)

end

end A088944.P10825521918002997986

/-!
# A088946: Coefficient of x^n of A(x)^n is A005651(n), which is the sum of multinomial coefficients for n.

The programs for A088946, there is no canonical definition to state claims against.
-/

/-! ## A088946.P15391037816948180491

`A132015(A324512(n+1)+1)`
-/

namespace A088946.P15391037816948180491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (A324512 (n + 1) + 1).toNat

end

end A088946.P15391037816948180491

/-! ## A088946.P9622642635216998396

`A106619(A319612(n)+A093578(n))`
-/

namespace A088946.P9622642635216998396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A319612 n + A093578 n).toNat

end

end A088946.P9622642635216998396

/-! ## A088946.P3893629554206808055

`A360746(A174706(n+1)+A001349(n))`
-/

namespace A088946.P3893629554206808055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360746 (A174706 (n + 1) + A001349 n).toNat

end

end A088946.P3893629554206808055

/-! ## A088946.P1440688987584122393

`A318674(n+1)+A004526(A319612(n))`
-/

namespace A088946.P1440688987584122393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318674 (n + 1) + A004526 (A319612 n).toNat

end

end A088946.P1440688987584122393

/-!
# A088947: Positions of records in A069862.

The programs for A088947, there is no canonical definition to state claims against.
-/

/-! ## A088947.P2980460438487660609

`eq[A007877(n), A357643(A383706(2*n+1))]`
-/

namespace A088947.P2980460438487660609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357643 (A383706 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088947.P2980460438487660609

/-! ## A088947.P8307449466867538947

`∑[gcd(12, A006504(A088013(n)))]`
-/

namespace A088947.P8307449466867538947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A006504 (A088013 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088947.P8307449466867538947

/-! ## A088947.P2563548790310603969

`A211272(A123638(n+1))+A123643(n)`
-/

namespace A088947.P2563548790310603969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (A123638 (n + 1)).toNat + A123643 n

end

end A088947.P2563548790310603969

/-! ## A088947.P6400713244847981624

`or(A006093(n+1), A007920(A104629(n)))`
-/

namespace A088947.P6400713244847981624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006093 (n + 1)) (A007920 (A104629 n).toNat)

end

end A088947.P6400713244847981624

/-! ## A088947.P6076722286328887290

`or(A025487(n+1), A033093(A118930(n)))`
-/

namespace A088947.P6076722286328887290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025487 (n + 1)) (A033093 (A118930 n).toNat)

end

end A088947.P6076722286328887290

/-!
# A088948: Numbers k such that (A006530(k) + A020639(k))/2 is an integer; that is, arithmetic mean of least and largest prime factor is an integer.

The programs for A088948, the canonical program `A088948.P9416875312986327135` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088948 has offset 1).

The definition of A088948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088948.P9416875312986327135

`eq[n-2, lcm(1-and(n, n-1), n-2)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A088948

/-- `eq[n-2, lcm(1-and(n, n-1), n-2)]` -/
def P9416875312986327135.Spec : Prop :=
  ∀ n, (P9416875312986327135.a n : ℤ) = A088948 (n + 1)

theorem P9416875312986327135.correct : P9416875312986327135.Spec := by
  intro n
  simp only [A088948, Nat.add_sub_cancel]

end A088948

/-! ## A088948.P17462837788696143190

`eq[n+1, gcd(n+1, and(n+1, n+2))]+2`
-/

namespace A088948.P17462837788696143190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.land (n + 1) (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A088948.P17462837788696143190

namespace A088948

/-- `eq[n+1, gcd(n+1, and(n+1, n+2))]+2` -/
def P17462837788696143190.Spec : Prop :=
  ∀ n, (P17462837788696143190.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P13105927037631468581

`eq[0, A128975(n+2)]+2`
-/

namespace A088948.P13105927037631468581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088948.P13105927037631468581

namespace A088948

/-- `eq[0, A128975(n+2)]+2` -/
def P13105927037631468581.Spec : Prop :=
  ∀ n, (P13105927037631468581.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P3894005667207854126

`eq[(n+1)%2, A209229(n)]`
-/

namespace A088948.P3894005667207854126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088948.P3894005667207854126

namespace A088948

/-- `eq[(n+1)%2, A209229(n)]` -/
def P3894005667207854126.Spec : Prop :=
  ∀ n, (P3894005667207854126.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P11759987171149185886

`comp[2*comp[A000225(n)]]+2`
-/

namespace A088948.P11759987171149185886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A088948.P11759987171149185886

namespace A088948

/-- `comp[2*comp[A000225(n)]]+2` -/
def P11759987171149185886.Spec : Prop :=
  ∀ n, (P11759987171149185886.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P9674604734332284778

`eq[n+1, A245092(n+1)]+2`
-/

namespace A088948.P9674604734332284778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A088948.P9674604734332284778

namespace A088948

/-- `eq[n+1, A245092(n+1)]+2` -/
def P9674604734332284778.Spec : Prop :=
  ∀ n, (P9674604734332284778.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P15007125668191700743

`comp[A004277(comp[2^n])-1]+1`
-/

namespace A088948.P15007125668191700743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A088948.P15007125668191700743

namespace A088948

/-- `comp[A004277(comp[2^n])-1]+1` -/
def P15007125668191700743.Spec : Prop :=
  ∀ n, (P15007125668191700743.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P10439301694476594742

`lt[A081729(n), A081729(n)²]`
-/

namespace A088948.P10439301694476594742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088948.P10439301694476594742

namespace A088948

/-- `lt[A081729(n), A081729(n)²]` -/
def P10439301694476594742.Spec : Prop :=
  ∀ n, (P10439301694476594742.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P14176555714603165455

`eq[1, A019426(A081729(n)+n)]`
-/

namespace A088948.P14176555714603165455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A081729 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088948.P14176555714603165455

namespace A088948

/-- `eq[1, A019426(A081729(n)+n)]` -/
def P14176555714603165455.Spec : Prop :=
  ∀ n, (P14176555714603165455.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P15344428953012286438

`eq[1, A019427(A081729(n)+n)]`
-/

namespace A088948.P15344428953012286438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A081729 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088948.P15344428953012286438

namespace A088948

/-- `eq[1, A019427(A081729(n)+n)]` -/
def P15344428953012286438.Spec : Prop :=
  ∀ n, (P15344428953012286438.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P9531392587138903172

`eq[1, A019428(A081729(n)+n)]`
-/

namespace A088948.P9531392587138903172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A081729 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088948.P9531392587138903172

namespace A088948

/-- `eq[1, A019428(A081729(n)+n)]` -/
def P9531392587138903172.Spec : Prop :=
  ∀ n, (P9531392587138903172.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P17149060906501281341

`eq[1, A019429(A081729(n)+n)]`
-/

namespace A088948.P17149060906501281341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A081729 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088948.P17149060906501281341

namespace A088948

/-- `eq[1, A019429(A081729(n)+n)]` -/
def P17149060906501281341.Spec : Prop :=
  ∀ n, (P17149060906501281341.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P10312168114090376569

`eq[1, A019430(A081729(n)+n)]`
-/

namespace A088948.P10312168114090376569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A081729 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088948.P10312168114090376569

namespace A088948

/-- `eq[1, A019430(A081729(n)+n)]` -/
def P10312168114090376569.Spec : Prop :=
  ∀ n, (P10312168114090376569.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P8690572940955283672

`eq[1, A019431(A081729(n)+n)]`
-/

namespace A088948.P8690572940955283672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A081729 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088948.P8690572940955283672

namespace A088948

/-- `eq[1, A019431(A081729(n)+n)]` -/
def P8690572940955283672.Spec : Prop :=
  ∀ n, (P8690572940955283672.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P7879698833583431804

`eq[1, A019432(A081729(n)+n)]`
-/

namespace A088948.P7879698833583431804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A081729 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088948.P7879698833583431804

namespace A088948

/-- `eq[1, A019432(A081729(n)+n)]` -/
def P7879698833583431804.Spec : Prop :=
  ∀ n, (P7879698833583431804.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P6425950090826671841

`eq[1, A019433(A081729(n)+n)]`
-/

namespace A088948.P6425950090826671841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 (A081729 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088948.P6425950090826671841

namespace A088948

/-- `eq[1, A019433(A081729(n)+n)]` -/
def P6425950090826671841.Spec : Prop :=
  ∀ n, (P6425950090826671841.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P10905650112833882622

`∪[A059046(n+1), A020742(n)]`
-/

namespace A088948.P10905650112833882622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088948.P10905650112833882622

namespace A088948

/-- `∪[A059046(n+1), A020742(n)]` -/
def P10905650112833882622.Spec : Prop :=
  ∀ n, (P10905650112833882622.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P18297229074767694982

`∪[A246655(n+1), A020742(n)]`
-/

namespace A088948.P18297229074767694982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088948.P18297229074767694982

namespace A088948

/-- `∪[A246655(n+1), A020742(n)]` -/
def P18297229074767694982.Spec : Prop :=
  ∀ n, (P18297229074767694982.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P16872717137339837534

`comp[A004277(comp[A000225(n)])]+2`
-/

namespace A088948.P16872717137339837534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A088948.P16872717137339837534

namespace A088948

/-- `comp[A004277(comp[A000225(n)])]+2` -/
def P16872717137339837534.Spec : Prop :=
  ∀ n, (P16872717137339837534.a n : ℤ) = A088948 (n + 1)

end A088948

/-! ## A088948.P2010242308831545028

`comp[A005843(comp[A000225(n)])]+2`
-/

namespace A088948.P2010242308831545028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A088948.P2010242308831545028

namespace A088948

/-- `comp[A005843(comp[A000225(n)])]+2` -/
def P2010242308831545028.Spec : Prop :=
  ∀ n, (P2010242308831545028.a n : ℤ) = A088948 (n + 1)

end A088948

/-!
# A088949: Composite numbers k such that (A006530(k) + A020639(k))/2 is an integer that divides k; special terms of A088948.

The programs for A088949, there is no canonical definition to state claims against.
-/

/-! ## A088949.P11449642765767586351

`∩[A134344(n+1), A327473(n+1)]`
-/

namespace A088949.P11449642765767586351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088949.P11449642765767586351

/-! ## A088949.P10474580348809669182

`∩[A158804(n+1), A358378(n+1)]`
-/

namespace A088949.P10474580348809669182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088949.P10474580348809669182

/-! ## A088949.P10325803766521414362

`∩[A327473(n+1), A336663(n+1)]`
-/

namespace A088949.P10325803766521414362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088949.P10325803766521414362

/-! ## A088949.P6792776406404087885

`∩[A358378(n+1), A370354(n+1)]`
-/

namespace A088949.P6792776406404087885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088949.P6792776406404087885

/-!
# A088950: Number of square-subwords in ternary representation of n.

The programs for A088950, there is no canonical definition to state claims against.
-/

/-! ## A088950.P1918178214521281630

`A080791(lcm(A034461(n+1)!, A060585(n)))`
-/

namespace A088950.P1918178214521281630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.lcm (Nat.factorial (A034461 (n + 1)).toNat : ℤ) (A060585 n))

end

end A088950.P1918178214521281630

/-! ## A088950.P8035138119733611154

`A106483(A068165(2*n+5))%A043277(A028310(n))`
-/

namespace A088950.P8035138119733611154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106483 (A068165 (2 * n + 5)).toNat) (A043277 (A028310 n).toNat)

end

end A088950.P8035138119733611154

/-! ## A088950.P15840050814138580649

`A325817(A018068(n+1))`
-/

namespace A088950.P15840050814138580649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (A018068 (n + 1)).toNat

end

end A088950.P15840050814138580649

/-! ## A088950.P17767825197351736494

`A309332(A300946(n))`
-/

namespace A088950.P17767825197351736494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309332 (A300946 n).toNat

end

end A088950.P17767825197351736494

/-! ## A088950.P11331756066422272347

`A358142(A353850(n))%A353929(n)`
-/

namespace A088950.P11331756066422272347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358142 (A353850 n).toNat) (A353929 n)

end

end A088950.P11331756066422272347

/-!
# A088951: Number of distinct square-subwords in ternary representation of n.

The programs for A088951, there is no canonical definition to state claims against.
-/

/-! ## A088951.P11801315189517773953

`A230093(A062028(n)^A088950(n))`
-/

namespace A088951.P11801315189517773953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (SequenceMachineLib.roundAway ((A062028 n : ℚ) ^ (A088950 n : ℤ))).toNat

end

end A088951.P11801315189517773953

/-! ## A088951.P4376398057231456291

`A230093(A176995(n+1)^A088950(n))`
-/

namespace A088951.P4376398057231456291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (SequenceMachineLib.roundAway ((A176995 (n + 1) : ℚ) ^ (A088950 n : ℤ))).toNat

end

end A088951.P4376398057231456291

/-! ## A088951.P6748459936693005651

`A000045(A088950(n)^A144018(n+1))`
-/

namespace A088951.P6748459936693005651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A088950 n : ℚ) ^ (A144018 (n + 1) : ℤ))).toNat

end

end A088951.P6748459936693005651

/-! ## A088951.P344847092741116873

`ceil(A088950(n)/A347498(n+5))`
-/

namespace A088951.P344847092741116873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088950 n : ℚ) / (A347498 (n + 5) : ℚ)⌉

end

end A088951.P344847092741116873

/-! ## A088951.P3328094591484000205

`A057215(A139391(2*n+5)%A160486(n+1))`
-/

namespace A088951.P3328094591484000205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057215 (Int.tmod (A139391 (2 * n + 5)) (A160486 (n + 1))).toNat

end

end A088951.P3328094591484000205

/-!
# A088952: Numbers that are squarefree words in ternary representation.

The programs for A088952, there is no canonical definition to state claims against.
-/

/-! ## A088952.P16072183567222769352

`eq[0, A088950(n)]`
-/

namespace A088952.P16072183567222769352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088952.P16072183567222769352

/-! ## A088952.P14386235841704412739

`eq[0, A088951(n)]`
-/

namespace A088952.P14386235841704412739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088952.P14386235841704412739

/-! ## A088952.P7171345223121790552

`lt[A088950(round(acot(n)+n)), 1]`
-/

namespace A088952.P7171345223121790552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088952.P7171345223121790552

/-! ## A088952.P13909965925340201456

`lt[A088951(round(acot(n)+n)), 1]`
-/

namespace A088952.P13909965925340201456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088951 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088952.P13909965925340201456

/-! ## A088952.P2132916926546396134

`lt[A088950(A028310(n)), 1]`
-/

namespace A088952.P2132916926546396134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088952.P2132916926546396134

/-!
# A088953: Number of numbers that are ternary squarefree words of length n.

The programs for A088953, there is no canonical definition to state claims against.
-/

/-! ## A088953.P17316856514264603928

`A099479(A006156(n))`
-/

namespace A088953.P17316856514264603928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A006156 n).toNat

end

end A088953.P17316856514264603928

/-! ## A088953.P6313888472378162963

`A096386(A006156(n)+1)`
-/

namespace A088953.P6313888472378162963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096386 (A006156 n + 1).toNat

end

end A088953.P6313888472378162963

/-! ## A088953.P12050968489601355107

`A004396(A006156(n)+char[1])`
-/

namespace A088953.P12050968489601355107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A006156 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A088953.P12050968489601355107

/-! ## A088953.P6681035438665179118

`A006369(A006156(n)-char[1])`
-/

namespace A088953.P6681035438665179118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A006156 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A088953.P6681035438665179118

/-! ## A088953.P13739163602004114874

`A099479(3^n-A171761(n))`
-/

namespace A088953.P13739163602004114874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 ((3 ^ n : ℤ) - A171761 n).toNat

end

end A088953.P13739163602004114874

/-!
# A088954: G.f.: 1/((1-x)^2*(1-x^2)*(1-x^4)*(1-x^8)*(1-x^16)).

The programs for A088954, the canonical program `A088954.P1995228907627646483` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088954 has offset 0).

The definition of A088954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088954.P12966252480639962625

`∑[A008644(n)]`
-/

namespace A088954.P12966252480639962625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088954.P12966252480639962625

namespace A088954

/-- `∑[A008644(n)]` -/
def P12966252480639962625.Spec : Prop :=
  ∀ n, P12966252480639962625.a n = A088954 n

end A088954

/-! ## A088954.P1995228907627646483

`∑[A088932(floor(n/2))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088954

/-- `∑[A088932(floor(n/2))]` -/
def P1995228907627646483.Spec : Prop :=
  ∀ n, P1995228907627646483.a n = A088954 n

theorem P1995228907627646483.correct : P1995228907627646483.Spec := by
  intro n
  simp only [A088954]

end A088954

/-! ## A088954.P15921611343851871671

`A008645(2*n)`
-/

namespace A088954.P15921611343851871671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 (2 * n)

end

end A088954.P15921611343851871671

namespace A088954

/-- `A008645(2*n)` -/
def P15921611343851871671.Spec : Prop :=
  ∀ n, P15921611343851871671.a n = A088954 n

end A088954

/-! ## A088954.P4473656153377783100

`record[xor(a(n-1), A008645(n))]` with `a(0)=1`
-/

namespace A088954.P4473656153377783100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (f1 (n - 1)) (A008645 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088954.P4473656153377783100

namespace A088954

/-- `record[xor(a(n-1), A008645(n))]` -/
def P4473656153377783100.Spec : Prop :=
  ∀ n, P4473656153377783100.a n = A088954 n

end A088954

/-! ## A088954.P9898135797881005099

`record[A008645((n+2)%8+n-1)]`
-/

namespace A088954.P9898135797881005099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 ((n + 2) % 8 + n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088954.P9898135797881005099

namespace A088954

/-- `record[A008645((n+2)%8+n-1)]` -/
def P9898135797881005099.Spec : Prop :=
  ∀ n, P9898135797881005099.a n = A088954 n

end A088954

/-! ## A088954.P6252797514230349024

`record[A008645(A093178(n))]`
-/

namespace A088954.P6252797514230349024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088954.P6252797514230349024

namespace A088954

/-- `record[A008645(A093178(n))]` -/
def P6252797514230349024.Spec : Prop :=
  ∀ n, P6252797514230349024.a n = A088954 n

end A088954

/-! ## A088954.P17085017818660428533

`record[A008645(n)-A000035(n)]`
-/

namespace A088954.P17085017818660428533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088954.P17085017818660428533

namespace A088954

/-- `record[A008645(n)-A000035(n)]` -/
def P17085017818660428533.Spec : Prop :=
  ∀ n, P17085017818660428533.a n = A088954 n

end A088954

/-! ## A088954.P5107218430964037133

`record[A008645(n)/A001511(n+1)]`
-/

namespace A088954.P5107218430964037133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008645 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088954.P5107218430964037133

namespace A088954

/-- `record[A008645(n)/A001511(n+1)]` -/
def P5107218430964037133.Spec : Prop :=
  ∀ n, P5107218430964037133.a n = (A088954 n : ℚ)

end A088954

/-! ## A088954.P14611312365010052803

`record[A008645(n)/A067513(n+1)]`
-/

namespace A088954.P14611312365010052803
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008645 n : ℚ) / (A067513 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088954.P14611312365010052803

namespace A088954

/-- `record[A008645(n)/A067513(n+1)]` -/
def P14611312365010052803.Spec : Prop :=
  ∀ n, P14611312365010052803.a n = (A088954 n : ℚ)

end A088954

/-! ## A088954.P17833814324153036596

`record[A008645(n)/A073575(n+1)]`
-/

namespace A088954.P17833814324153036596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008645 n : ℚ) / (A073575 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088954.P17833814324153036596

namespace A088954

/-- `record[A008645(n)/A073575(n+1)]` -/
def P17833814324153036596.Spec : Prop :=
  ∀ n, P17833814324153036596.a n = (A088954 n : ℚ)

end A088954

/-! ## A088954.P16528898473990533485

`record[A008645(A008611(n))]`
-/

namespace A088954.P16528898473990533485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088954.P16528898473990533485

namespace A088954

/-- `record[A008645(A008611(n))]` -/
def P16528898473990533485.Spec : Prop :=
  ∀ n, P16528898473990533485.a n = A088954 n

end A088954

/-! ## A088954.P12426497411059922848

`A008645(A005843(n))%A270424(n+1)`
-/

namespace A088954.P12426497411059922848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008645 (A005843 n).toNat) (A270424 (n + 1))

end

end A088954.P12426497411059922848

namespace A088954

/-- `A008645(A005843(n))%A270424(n+1)` -/
def P12426497411059922848.Spec : Prop :=
  ∀ n, P12426497411059922848.a n = A088954 n

end A088954

/-!
# A088955: Primes of the form 60*k + 1.

The programs for A088955, the canonical program `A088955.P7262574511799154947` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088955 has offset 1).

The definition of A088955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A090605, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088955.P11896632891549102482

`60*A088958(n+1)+1`
-/

namespace A088955.P11896632891549102482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A088958 (n + 1) + 1

end

end A088955.P11896632891549102482

namespace A088955

/-- `60*A088958(n+1)+1` -/
def P11896632891549102482.Spec : Prop :=
  ∀ n, P11896632891549102482.a n = A088955 (n + 1)

end A088955

/-! ## A088955.P7262574511799154947

`A000040(A090605(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A088955

/-- `A000040(A090605(n+1))` -/
def P7262574511799154947.Spec : Prop :=
  ∀ n, P7262574511799154947.a n = A088955 (n + 1)

theorem P7262574511799154947.correct : P7262574511799154947.Spec := by
  intro n
  simp only [A088955, Nat.add_sub_cancel]

end A088955

/-! ## A088955.P8555808366596599554

`∩[A107152(n+1), A141881(n+1)]`
-/

namespace A088955.P8555808366596599554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P8555808366596599554

namespace A088955

/-- `∩[A107152(n+1), A141881(n+1)]` -/
def P8555808366596599554.Spec : Prop :=
  ∀ n, (P8555808366596599554.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P840936246801558818

`∩[A107152(n+1), A132230(n+1)]`
-/

namespace A088955.P840936246801558818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P840936246801558818

namespace A088955

/-- `∩[A107152(n+1), A132230(n+1)]` -/
def P840936246801558818.Spec : Prop :=
  ∀ n, (P840936246801558818.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P18349975663694490884

`∩[A132230(n+1), A141881(n+1)]`
-/

namespace A088955.P18349975663694490884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P18349975663694490884

namespace A088955

/-- `∩[A132230(n+1), A141881(n+1)]` -/
def P18349975663694490884.Spec : Prop :=
  ∀ n, (P18349975663694490884.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P6916602962515868701

`p?[60*n+1]`
-/

namespace A088955.P6916602962515868701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A088955.P6916602962515868701

namespace A088955

/-- `p?[60*n+1]` -/
def P6916602962515868701.Spec : Prop :=
  ∀ n, (P6916602962515868701.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P5659789190299479490

`or(1, p?[or(1, 60*n)])`
-/

namespace A088955.P5659789190299479490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (60 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088955.P5659789190299479490

namespace A088955

/-- `or(1, p?[or(1, 60*n)])` -/
def P5659789190299479490.Spec : Prop :=
  ∀ n, (P5659789190299479490.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P5036736118129119655

`∩[A030430(n+1), A243188(n+1)]`
-/

namespace A088955.P5036736118129119655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P5036736118129119655

namespace A088955

/-- `∩[A030430(n+1), A243188(n+1)]` -/
def P5036736118129119655.Spec : Prop :=
  ∀ n, (P5036736118129119655.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P10750357589393976171

`∩[A033212(n+1), A141881(n+1)]`
-/

namespace A088955.P10750357589393976171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P10750357589393976171

namespace A088955

/-- `∩[A033212(n+1), A141881(n+1)]` -/
def P10750357589393976171.Spec : Prop :=
  ∀ n, (P10750357589393976171.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P18366948080941260525

`∩[A068228(n+1), A132230(n+1)]`
-/

namespace A088955.P18366948080941260525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P18366948080941260525

namespace A088955

/-- `∩[A068228(n+1), A132230(n+1)]` -/
def P18366948080941260525.Spec : Prop :=
  ∀ n, (P18366948080941260525.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P6528978874963174059

`∩[A068228(n+1), A141881(n+1)]`
-/

namespace A088955.P6528978874963174059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P6528978874963174059

namespace A088955

/-- `∩[A068228(n+1), A141881(n+1)]` -/
def P6528978874963174059.Spec : Prop :=
  ∀ n, (P6528978874963174059.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P8530254102679121121

`∩[A068228(n+1), A179446(n+1)]`
-/

namespace A088955.P8530254102679121121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P8530254102679121121

namespace A088955

/-- `∩[A068228(n+1), A179446(n+1)]` -/
def P8530254102679121121.Spec : Prop :=
  ∀ n, (P8530254102679121121.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P16281735982118213587

`∩[A033205(n+1), A132230(n+1)]`
-/

namespace A088955.P16281735982118213587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P16281735982118213587

namespace A088955

/-- `∩[A033205(n+1), A132230(n+1)]` -/
def P16281735982118213587.Spec : Prop :=
  ∀ n, (P16281735982118213587.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P16207449881676126357

`∩[A216815(n+1), A132230(n+1)]`
-/

namespace A088955.P16207449881676126357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P16207449881676126357

namespace A088955

/-- `∩[A216815(n+1), A132230(n+1)]` -/
def P16207449881676126357.Spec : Prop :=
  ∀ n, (P16207449881676126357.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P15400104017573398606

`∩[A068228(n+1), A132240(n+1)]`
-/

namespace A088955.P15400104017573398606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P15400104017573398606

namespace A088955

/-- `∩[A068228(n+1), A132240(n+1)]` -/
def P15400104017573398606.Spec : Prop :=
  ∀ n, (P15400104017573398606.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P16630921470999684739

`∩[A107152(n+1), A132240(n+1)]`
-/

namespace A088955.P16630921470999684739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P16630921470999684739

namespace A088955

/-- `∩[A107152(n+1), A132240(n+1)]` -/
def P16630921470999684739.Spec : Prop :=
  ∀ n, (P16630921470999684739.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P17233879216268844741

`∩[A132240(n+1), A141881(n+1)]`
-/

namespace A088955.P17233879216268844741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P17233879216268844741

namespace A088955

/-- `∩[A132240(n+1), A141881(n+1)]` -/
def P17233879216268844741.Spec : Prop :=
  ∀ n, (P17233879216268844741.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P7583294059470457460

`∩[A030430(n+1), A068228(n+1)]`
-/

namespace A088955.P7583294059470457460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P7583294059470457460

namespace A088955

/-- `∩[A030430(n+1), A068228(n+1)]` -/
def P7583294059470457460.Spec : Prop :=
  ∀ n, (P7583294059470457460.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P12703619471739334773

`∩[A030430(n+1), A107152(n+1)]`
-/

namespace A088955.P12703619471739334773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P12703619471739334773

namespace A088955

/-- `∩[A030430(n+1), A107152(n+1)]` -/
def P12703619471739334773.Spec : Prop :=
  ∀ n, (P12703619471739334773.a n : ℤ) = A088955 (n + 1)

end A088955

/-! ## A088955.P4774951210926820046

`∩[A045453(n+1), A068228(n+1)]`
-/

namespace A088955.P4774951210926820046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088955.P4774951210926820046

namespace A088955

/-- `∩[A045453(n+1), A068228(n+1)]` -/
def P4774951210926820046.Spec : Prop :=
  ∀ n, (P4774951210926820046.a n : ℤ) = A088955 (n + 1)

end A088955

/-!
# A088956: Triangle, read by rows, of coefficients of the hyperbinomial transform.

The programs for A088956, there is no canonical definition to state claims against.
-/

/-! ## A088956.P16822712170861030472

`A000272(A004736(n+1))*A007318(n)`
-/

namespace A088956.P16822712170861030472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (A004736 (n + 1)).toNat * A007318 n

end

end A088956.P16822712170861030472

/-! ## A088956.P10115760577616634939

`abs(A000272(A004736(n+1))*A130595(n))`
-/

namespace A088956.P10115760577616634939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000272 (A004736 (n + 1)).toNat * A130595 n|

end

end A088956.P10115760577616634939

/-! ## A088956.P7045512085508318585

`sqrt(A008459(n))*A000272(A004736(n+1))`
-/

namespace A088956.P7045512085508318585
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000272 (A004736 (n + 1)).toNat : ℝ)

end

end A088956.P7045512085508318585

/-! ## A088956.P9654824909935343376

`Δ[A102363(n)]*A000272(A004736(n+1))`
-/

namespace A088956.P9654824909935343376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000272 (A004736 (n + 1)).toNat

end

end A088956.P9654824909935343376

/-! ## A088956.P4515565166113063140

`A185390(n)/A000312(A002262(n))`
-/

namespace A088956.P4515565166113063140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185390 n : ℚ) / (A000312 (A002262 n).toNat : ℚ)

end

end A088956.P4515565166113063140

/-!
# A088957: Hyperbinomial transform of the sequence of 1's.

The programs for A088957, there is no canonical definition to state claims against.
-/

/-! ## A088957.P13559294681658312200

`Δ[A270593(n)]`
-/

namespace A088957.P13559294681658312200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088957.P13559294681658312200

/-! ## A088957.P3915081722295229076

`A144303(∑[n+2]-1)`
-/

namespace A088957.P3915081722295229076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A088957.P3915081722295229076

/-! ## A088957.P5831785643521633208

`record[A144303(A056847(n)+n)]`
-/

namespace A088957.P5831785643521633208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A056847 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088957.P5831785643521633208

/-! ## A088957.P17485120496167236230

`record[A144303(A114327(n)+n)]`
-/

namespace A088957.P17485120496167236230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A114327 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088957.P17485120496167236230

/-! ## A088957.P11777154132870002360

`A270593(n+1)-A270593(n)`
-/

namespace A088957.P11777154132870002360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270593 (n + 1) - A270593 n

end

end A088957.P11777154132870002360

/-! ## A088957.P8849183970716956877

`record[A144303(A004489(n+1)+n)]`
-/

namespace A088957.P8849183970716956877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A004489 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088957.P8849183970716956877

/-! ## A088957.P5323448812001897162

`record[A144303(n)/A144303(n+1)]`
-/

namespace A088957.P5323448812001897162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144303 n : ℚ) / (A144303 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088957.P5323448812001897162

/-! ## A088957.P12040659100720478861

`A277473(n+1)/(n+1)`
-/

namespace A088957.P12040659100720478861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277473 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088957.P12040659100720478861

/-! ## A088957.P3561421006083773446

`∑[A038051(n+1)]/(n+1)`
-/

namespace A088957.P3561421006083773446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038051 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A088957.P3561421006083773446

/-!
# A088958: Numbers n such that 60*n+1 is prime.

The programs for A088958, the canonical program `A088958.P13027518788364127214` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088958 has offset 1).

The definition of A088958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088955, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088958.P13027518788364127214

`(A088955(n+1)-1)/60`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A088958

/-- `(A088955(n+1)-1)/60` -/
def P13027518788364127214.Spec : Prop :=
  ∀ n, P13027518788364127214.a n = (A088958 (n + 1) : ℚ)

end A088958

/-! ## A088958.P3328631186952808806

`(A000040(A090605(n+1))-1)/60`
-/

namespace A088958.P3328631186952808806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A090605 (n + 1)).toNat - 1 : ℚ) / 60

end

end A088958.P3328631186952808806

namespace A088958

/-- `(A000040(A090605(n+1))-1)/60` -/
def P3328631186952808806.Spec : Prop :=
  ∀ n, P3328631186952808806.a n = (A088958 (n + 1) : ℚ)

end A088958

/-! ## A088958.P8417543235019475772

`floor(A088955(n+1)/60)`
-/

namespace A088958.P8417543235019475772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088955 (n + 1) : ℚ) / 60⌋

end

end A088958.P8417543235019475772

namespace A088958

/-- `floor(A088955(n+1)/60)` -/
def P8417543235019475772.Spec : Prop :=
  ∀ n, P8417543235019475772.a n = A088958 (n + 1)

end A088958

/-! ## A088958.P6972243583571473576

`floor(p?[a(n-1)+60]/60)` with `a(0)=1`
-/

namespace A088958.P6972243583571473576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 60

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 60⌋

end

end A088958.P6972243583571473576

namespace A088958

/-- `floor(p?[a(n-1)+60]/60)` -/
def P6972243583571473576.Spec : Prop :=
  ∀ n, P6972243583571473576.a n = A088958 (n + 1)

end A088958

/-! ## A088958.P6688506323166957904

`eq[1, A237053(A249674(n))]`
-/

namespace A088958.P6688506323166957904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A249674 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088958.P6688506323166957904

namespace A088958

/-- `eq[1, A237053(A249674(n))]` -/
def P6688506323166957904.Spec : Prop :=
  ∀ n, (P6688506323166957904.a n : ℤ) = A088958 (n + 1)

end A088958

/-! ## A088958.P6524022135633596807

`eq[2, A305973(A249674(n)+1)]`
-/

namespace A088958.P6524022135633596807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A249674 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088958.P6524022135633596807

namespace A088958

/-- `eq[2, A305973(A249674(n)+1)]` -/
def P6524022135633596807.Spec : Prop :=
  ∀ n, (P6524022135633596807.a n : ℤ) = A088958 (n + 1)

end A088958

/-! ## A088958.P18076952670682378971

`eq[2, A305973(A248572(n)+n)]`
-/

namespace A088958.P18076952670682378971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A248572 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088958.P18076952670682378971

namespace A088958

/-- `eq[2, A305973(A248572(n)+n)]` -/
def P18076952670682378971.Spec : Prop :=
  ∀ n, (P18076952670682378971.a n : ℤ) = A088958 (n + 1)

end A088958

/-! ## A088958.P4144534236126268164

`eq[1, A091088(6*n)]`
-/

namespace A088958.P4144534236126268164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088958.P4144534236126268164

namespace A088958

/-- `eq[1, A091088(6*n)]` -/
def P4144534236126268164.Spec : Prop :=
  ∀ n, (P4144534236126268164.a n : ℤ) = A088958 (n + 1)

end A088958

/-! ## A088958.P6407907352454686523

`eq[1, A001222(60*n+1)]`
-/

namespace A088958.P6407907352454686523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (60 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088958.P6407907352454686523

namespace A088958

/-- `eq[1, A001222(60*n+1)]` -/
def P6407907352454686523.Spec : Prop :=
  ∀ n, (P6407907352454686523.a n : ℤ) = A088958 (n + 1)

end A088958

/-! ## A088958.P16134836158311984949

`eq[2, A000005(60*n+1)]`
-/

namespace A088958.P16134836158311984949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (60 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088958.P16134836158311984949

namespace A088958

/-- `eq[2, A000005(60*n+1)]` -/
def P16134836158311984949.Spec : Prop :=
  ∀ n, (P16134836158311984949.a n : ℤ) = A088958 (n + 1)

end A088958

/-! ## A088958.P2434506403661306261

`eq[A057427(n), A068695(A008458(n))]`
-/

namespace A088958.P2434506403661306261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088958.P2434506403661306261

namespace A088958

/-- `eq[A057427(n), A068695(A008458(n))]` -/
def P2434506403661306261.Spec : Prop :=
  ∀ n, (P2434506403661306261.a n : ℤ) = A088958 (n + 1)

end A088958

/-! ## A088958.P1517014599523603893

`eq[1, A211173(30*n)]`
-/

namespace A088958.P1517014599523603893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 (30 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088958.P1517014599523603893

namespace A088958

/-- `eq[1, A211173(30*n)]` -/
def P1517014599523603893.Spec : Prop :=
  ∀ n, (P1517014599523603893.a n : ℤ) = A088958 (n + 1)

end A088958

/-!
# A088959: Lowest numbers which are d-Pythagorean decomposable, i.e., square is expressible as sum of two positive squares in more ways than for any smaller number.

The programs for A088959, there is no canonical definition to state claims against.
-/

/-! ## A088959.P13857106903101450704

`A006339(A088111(n+1))`
-/

namespace A088959.P13857106903101450704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006339 (A088111 (n + 1)).toNat

end

end A088959.P13857106903101450704

/-! ## A088959.P1353030597015169055

`A006339(record[A063647(or(1, n))])`
-/

namespace A088959.P1353030597015169055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006339 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088959.P1353030597015169055

/-! ## A088959.P18233317995551726520

`A006339(record[A063647(2*n+1)])`
-/

namespace A088959.P18233317995551726520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006339 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088959.P18233317995551726520

/-! ## A088959.P13050780262175119730

`A071340(∑[2^n])`
-/

namespace A088959.P13050780262175119730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071340 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088959.P13050780262175119730

/-!
# A088960: Triangle read by rows: T(n,k) = number of configurations of k non-attacking bishops on the white squares of an n X n chessboard (for n even, 0 <= k < n).

The programs for A088960, there is no canonical definition to state claims against.
-/

/-! ## A088960.P7905153418514359913

`A274106(round(sqrt(n))²+n+1)`
-/

namespace A088960.P7905153418514359913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274106 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 + (n + 1 : ℤ)).toNat

end

end A088960.P7905153418514359913

/-! ## A088960.P8015563870524785093

`A274105(A007607(n+1)+1)`
-/

namespace A088960.P8015563870524785093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274105 (A007607 (n + 1) + 1).toNat

end

end A088960.P8015563870524785093

/-! ## A088960.P3768678022044776512

`A274105(A162917(n+1)+2)`
-/

namespace A088960.P3768678022044776512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274105 (A162917 (n + 1) + 2).toNat

end

end A088960.P3768678022044776512

/-! ## A088960.P15122673375903122866

`A007318(∑[n])*A274106(A007607(n+1))`
-/

namespace A088960.P15122673375903122866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A274106 (A007607 (n + 1)).toNat

end

end A088960.P15122673375903122866

/-! ## A088960.P16347788752504831304

`A274106(A007607(n+1))%∑[A000032(n)]`
-/

namespace A088960.P16347788752504831304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274106 (A007607 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088960.P16347788752504831304

/-!
# A088962: Values of n that generate Generalized Gaussian-Mersenne primes (see below).

The programs for A088962, there is no canonical definition to state claims against.
-/

/-! ## A088962.P3030133786293683149

`lt[A002260(A210565(3*n+1)), n]`
-/

namespace A088962.P3030133786293683149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A210565 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088962.P3030133786293683149

/-! ## A088962.P10570801089822354789

`lt[A238086(A302998(3*n)), A000603(n)]`
-/

namespace A088962.P10570801089822354789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A302998 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088962.P10570801089822354789

/-! ## A088962.P8544054146328476842

`lt[A238086(A302998(3*n)), A061819(n+1)]`
-/

namespace A088962.P8544054146328476842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A302998 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088962.P8544054146328476842

/-! ## A088962.P86643614275130280

`lt[A351895(A219924(3*n)), A351897(n+2)]`
-/

namespace A088962.P86643614275130280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351895 (A219924 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351897 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088962.P86643614275130280

/-! ## A088962.P9919020474661897845

`lt[A126286(A126277(3*(n+1))), A126281(n+1)]`
-/

namespace A088962.P9919020474661897845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126286 (A126277 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088962.P9919020474661897845

/-!
# A088963: Primes p such that 5p is the hypotenuse belonging to two prime-free primitive Pythagorean triples.

The programs for A088963, there is no canonical definition to state claims against.
-/

/-! ## A088963.P11897335836681625951

`A002313(comp[A182105(n+1)-A263145(n)])`
-/

namespace A088963.P11897335836681625951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (n + 1) - A263145 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A088963.P11897335836681625951

/-! ## A088963.P10681795987399497386

`A002144(comp[A381431(n+1)-A129760(3*n+1)]+2)`
-/

namespace A088963.P10681795987399497386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381431 (n + 1) - A129760 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A088963.P10681795987399497386

/-! ## A088963.P10891582593878877998

`A002144(lt[A276401(n+3), A062880(2*n+1)])`
-/

namespace A088963.P10891582593878877998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276401 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A088963.P10891582593878877998

/-! ## A088963.P2155702617465933694

`∩[A110134(n+1), A164318(n+1)]`
-/

namespace A088963.P2155702617465933694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088963.P2155702617465933694

/-!
# A088964: Number of solutions to x^2 == 2y^2 (mod n).

The programs for A088964, there is no canonical definition to state claims against.
-/

/-! ## A088964.P16093215807535563375

`2*A331996(n+1)-A062775(n+1)`
-/

namespace A088964.P16093215807535563375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331996 (n + 1) - A062775 (n + 1)

end

end A088964.P16093215807535563375

/-! ## A088964.P10888360743842186119

`A004277(A331996(n+1))-A062775(n+1)`
-/

namespace A088964.P10888360743842186119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A331996 (n + 1)).toNat - A062775 (n + 1)

end

end A088964.P10888360743842186119

/-! ## A088964.P6111097707797946165

`A004277(A331996(n+1))-A038712(A000188(n+1))*A087687(n+1)`
-/

namespace A088964.P6111097707797946165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A331996 (n + 1)).toNat - A038712 (A000188 (n + 1)).toNat * A087687 (n + 1)

end

end A088964.P6111097707797946165

/-! ## A088964.P8814087479106072279

`A004277(A331996(n+1))-A059905(A038712(n+1))*A087687(n+1)`
-/

namespace A088964.P8814087479106072279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A331996 (n + 1)).toNat - A059905 (A038712 (n + 1)).toNat * A087687 (n + 1)

end

end A088964.P8814087479106072279

/-! ## A088964.P2888783942305496780

`A331996(2*(n+1))%(2*(n+1))`
-/

namespace A088964.P2888783942305496780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331996 (2 * (n + 1))) (2 * (n + 1) : ℤ)

end

end A088964.P2888783942305496780

/-!
# A088966: Numbers k such that A007947(k) = A007947(m+1) and A007947(m) = A007947(k+1), where k > m.

The programs for A088966, there is no canonical definition to state claims against.
-/

/-! ## A088966.P8937833889708114997

`A049068(4^n)`
-/

namespace A088966.P8937833889708114997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (4 ^ n)

end

end A088966.P8937833889708114997

/-! ## A088966.P990775126431313970

`A112594(4^n)`
-/

namespace A088966.P990775126431313970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112594 (4 ^ n)

end

end A088966.P990775126431313970

/-! ## A088966.P12889265137100977764

`A174805(4^n)`
-/

namespace A088966.P12889265137100977764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174805 (4 ^ n)

end

end A088966.P12889265137100977764

/-!
# A088967: Numbers n such that n+9 is a prime.

The programs for A088967, the canonical program `A088967.P975798610123419620` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088967 has offset 1).

The definition of A088967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088967.P975798610123419620

`p?[2*n+9]-9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A088967

/-- `p?[2*n+9]-9` -/
def P975798610123419620.Spec : Prop :=
  ∀ n, P975798610123419620.a n = A088967 (n + 1)

theorem P975798610123419620.correct : P975798610123419620.Spec := by
  intro n
  simp only [A088967, Nat.add_sub_cancel]

end A088967

/-! ## A088967.P13356040506003794914

`A172407(n+1)+1`
-/

namespace A088967.P13356040506003794914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1) + 1

end

end A088967.P13356040506003794914

namespace A088967

/-- `A172407(n+1)+1` -/
def P13356040506003794914.Spec : Prop :=
  ∀ n, P13356040506003794914.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P10976921804581188792

`2*A155722(n+1)`
-/

namespace A088967.P10976921804581188792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155722 (n + 1)

end

end A088967.P10976921804581188792

namespace A088967

/-- `2*A155722(n+1)` -/
def P10976921804581188792.Spec : Prop :=
  ∀ n, P10976921804581188792.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P7500167221324185565

`A156037(n+5)-8`
-/

namespace A088967.P7500167221324185565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 5) - 8

end

end A088967.P7500167221324185565

namespace A088967

/-- `A156037(n+5)-8` -/
def P7500167221324185565.Spec : Prop :=
  ∀ n, P7500167221324185565.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P5526578205387644051

`∑[A001223(n+4)]-2`
-/

namespace A088967.P5526578205387644051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A088967.P5526578205387644051

namespace A088967

/-- `∑[A001223(n+4)]-2` -/
def P5526578205387644051.Spec : Prop :=
  ∀ n, P5526578205387644051.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P3420231746630572543

`Δ[A007504(n+4)]-9`
-/

namespace A088967.P3420231746630572543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 9

end

end A088967.P3420231746630572543

namespace A088967

/-- `Δ[A007504(n+4)]-9` -/
def P3420231746630572543.Spec : Prop :=
  ∀ n, P3420231746630572543.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P3434982124874868440

`2*(A101448(n+1)+1)`
-/

namespace A088967.P3434982124874868440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A101448 (n + 1) + 1)

end

end A088967.P3434982124874868440

namespace A088967

/-- `2*(A101448(n+1)+1)` -/
def P3434982124874868440.Spec : Prop :=
  ∀ n, P3434982124874868440.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P4825893096028111645

`A101448(n+1)+A155722(n+1)+1`
-/

namespace A088967.P4825893096028111645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) + (A155722 (n + 1) + 1)

end

end A088967.P4825893096028111645

namespace A088967

/-- `A101448(n+1)+A155722(n+1)+1` -/
def P4825893096028111645.Spec : Prop :=
  ∀ n, P4825893096028111645.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P10388333173634874071

`A155722(A000027(n+1))+A155722(n+1)`
-/

namespace A088967.P10388333173634874071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (A000027 (n + 1)).toNat + A155722 (n + 1)

end

end A088967.P10388333173634874071

namespace A088967

/-- `A155722(A000027(n+1))+A155722(n+1)` -/
def P10388333173634874071.Spec : Prop :=
  ∀ n, P10388333173634874071.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P2003300039482489491

`A086304(n+2)-3`
-/

namespace A088967.P2003300039482489491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 2) - 3

end

end A088967.P2003300039482489491

namespace A088967

/-- `A086304(n+2)-3` -/
def P2003300039482489491.Spec : Prop :=
  ∀ n, P2003300039482489491.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P6761540249567296566

`A140461(n+2)-9`
-/

namespace A088967.P6761540249567296566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 2) - 9

end

end A088967.P6761540249567296566

namespace A088967

/-- `A140461(n+2)-9` -/
def P6761540249567296566.Spec : Prop :=
  ∀ n, P6761540249567296566.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P12783963464564530192

`2*(A105760(n+2)-1)`
-/

namespace A088967.P12783963464564530192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A105760 (n + 2) - 1)

end

end A088967.P12783963464564530192

namespace A088967

/-- `2*(A105760(n+2)-1)` -/
def P12783963464564530192.Spec : Prop :=
  ∀ n, P12783963464564530192.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P251293715358252110

`A105760(n+2)+A101448(n+1)`
-/

namespace A088967.P251293715358252110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 2) + A101448 (n + 1)

end

end A088967.P251293715358252110

namespace A088967

/-- `A105760(n+2)+A101448(n+1)` -/
def P251293715358252110.Spec : Prop :=
  ∀ n, P251293715358252110.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P5944317729923072233

`A172367(n+3)-5`
-/

namespace A088967.P5944317729923072233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 3) - 5

end

end A088967.P5944317729923072233

namespace A088967

/-- `A172367(n+3)-5` -/
def P5944317729923072233.Spec : Prop :=
  ∀ n, P5944317729923072233.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P16263751916580064958

`A004139(n+3)-9`
-/

namespace A088967.P16263751916580064958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 3) - 9

end

end A088967.P16263751916580064958

namespace A088967

/-- `A004139(n+3)-9` -/
def P16263751916580064958.Spec : Prop :=
  ∀ n, P16263751916580064958.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P16439468791438867575

`A215848(n+3)-9`
-/

namespace A088967.P16439468791438867575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 3) - 9

end

end A088967.P16439468791438867575

namespace A088967

/-- `A215848(n+3)-9` -/
def P16439468791438867575.Spec : Prop :=
  ∀ n, P16439468791438867575.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P7064892818221570393

`2*(A089038(n+3)-2)`
-/

namespace A088967.P7064892818221570393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089038 (n + 3) - 2)

end

end A088967.P7064892818221570393

namespace A088967

/-- `2*(A089038(n+3)-2)` -/
def P7064892818221570393.Spec : Prop :=
  ∀ n, P7064892818221570393.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P8260769946253175267

`∑[A135732(n+3)]+n-1`
-/

namespace A088967.P8260769946253175267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A088967.P8260769946253175267

namespace A088967

/-- `∑[A135732(n+3)]+n-1` -/
def P8260769946253175267.Spec : Prop :=
  ∀ n, P8260769946253175267.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P13609615508076394350

`A045319(n+4)-9`
-/

namespace A088967.P13609615508076394350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 4) - 9

end

end A088967.P13609615508076394350

namespace A088967

/-- `A045319(n+4)-9` -/
def P13609615508076394350.Spec : Prop :=
  ∀ n, P13609615508076394350.a n = A088967 (n + 1)

end A088967

/-! ## A088967.P5387937087089099826

`2*(A008507(A020705(n))+n)`
-/

namespace A088967.P5387937087089099826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008507 (A020705 n).toNat + (n : ℤ))

end

end A088967.P5387937087089099826

namespace A088967

/-- `2*(A008507(A020705(n))+n)` -/
def P5387937087089099826.Spec : Prop :=
  ∀ n, P5387937087089099826.a n = A088967 (n + 1)

end A088967

/-!
# A088971: Number of twin prime pairs between consecutive prime-indexed primes of order 3. The bounds are included in the calculation.

The programs for A088971, there is no canonical definition to state claims against.
-/

/-! ## A088971.P12280710091469757136

`Δ[A071538(A290641(A038580(n+1)))]`
-/

namespace A088971.P12280710091469757136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A290641 (A038580 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088971.P12280710091469757136

/-!
# A088977: Side of primitive equilateral triangle with prime cevian p=A002476(n) cutting an edge into two integral parts.

The programs for A088977, there is no canonical definition to state claims against.
-/

/-! ## A088977.P12090412226724825939

`A088241(n+1)*A088298(A187829(n+1))`
-/

namespace A088977.P12090412226724825939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088241 (n + 1) * A088298 (A187829 (n + 1)).toNat

end

end A088977.P12090412226724825939

/-! ## A088977.P7292853298859857369

`A088298(A187829(n+1))*A205787(p?[3*n+1])`
-/

namespace A088977.P7292853298859857369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088298 (A187829 (n + 1)).toNat * A205787 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088977.P7292853298859857369

/-! ## A088977.P15900107243693911981

`A088241(A187829(n+1))*A212285(p?[3*n+1])`
-/

namespace A088977.P15900107243693911981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088241 (A187829 (n + 1)).toNat * A212285 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088977.P15900107243693911981

/-! ## A088977.P1570283038200157795

`A088241(A187829(n+1))*A212286(p?[3*n+1])`
-/

namespace A088977.P1570283038200157795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088241 (A187829 (n + 1)).toNat * A212286 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088977.P1570283038200157795

/-! ## A088977.P14649269258839856863

`A088241(n+1)%A039687(n+1)*A088298(n+1)`
-/

namespace A088977.P14649269258839856863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088241 (n + 1)) (A039687 (n + 1)) * A088298 (n + 1)

end

end A088977.P14649269258839856863

/-!
# A088978: Number of Pythagorean triangles having the n-th prime prime(n) as one of their sides.

The programs for A088978, the canonical program `A088978.P15849920336664136640` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088978 has offset 1).

The definition of A088978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088978.P8159386007829455600

`log2(gcd(4, A006093(n+1)))`
-/

namespace A088978.P8159386007829455600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A006093 (n + 1)) : ℝ)

end

end A088978.P8159386007829455600

namespace A088978

/-- `log2(gcd(4, A006093(n+1)))` -/
def P8159386007829455600.Spec : Prop :=
  ∀ n, P8159386007829455600.a n = (A088978 (n + 1) : ℝ)

end A088978

/-! ## A088978.P9475399877449611721

`ceil(sqrt(sqrt(A023506(n+1))))`
-/

namespace A088978.P9475399877449611721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A023506 (n + 1) : ℝ))⌉

end

end A088978.P9475399877449611721

namespace A088978

/-- `ceil(sqrt(sqrt(A023506(n+1))))` -/
def P9475399877449611721.Spec : Prop :=
  ∀ n, P9475399877449611721.a n = A088978 (n + 1)

end A088978

/-! ## A088978.P3536491225738523685

`ceil(sqrt(sqrt(A023579(n+1))))`
-/

namespace A088978.P3536491225738523685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A023579 (n + 1) : ℝ))⌉

end

end A088978.P3536491225738523685

namespace A088978

/-- `ceil(sqrt(sqrt(A023579(n+1))))` -/
def P3536491225738523685.Spec : Prop :=
  ∀ n, P3536491225738523685.a n = A088978 (n + 1)

end A088978

/-! ## A088978.P15849920336664136640

`(A039702(n+1)+1)%3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A088978

/-- `(A039702(n+1)+1)%3` -/
def P15849920336664136640.Spec : Prop :=
  ∀ n, P15849920336664136640.a n = A088978 (n + 1)

theorem P15849920336664136640.correct : P15849920336664136640.Spec := by
  intro n
  simp only [A088978, Nat.add_sub_cancel]

end A088978

/-! ## A088978.P13504278142550405548

`ceil((A000040(n+1)+2)%4/2)`
-/

namespace A088978.P13504278142550405548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A000040 (n + 1) + 2) 4 : ℚ) / 2⌉

end

end A088978.P13504278142550405548

namespace A088978

/-- `ceil((A000040(n+1)+2)%4/2)` -/
def P13504278142550405548.Spec : Prop :=
  ∀ n, P13504278142550405548.a n = A088978 (n + 1)

end A088978

/-! ## A088978.P8681690872832322728

`A063918(A080089(n+1)+1)`
-/

namespace A088978.P8681690872832322728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (A080089 (n + 1) + 1).toNat

end

end A088978.P8681690872832322728

namespace A088978

/-- `A063918(A080089(n+1)+1)` -/
def P8681690872832322728.Spec : Prop :=
  ∀ n, P8681690872832322728.a n = A088978 (n + 1)

end A088978

/-! ## A088978.P13688910196517344776

`1-A008683(A068504(n+1))`
-/

namespace A088978.P13688910196517344776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008683 (A068504 (n + 1)).toNat

end

end A088978.P13688910196517344776

namespace A088978

/-- `1-A008683(A068504(n+1))` -/
def P13688910196517344776.Spec : Prop :=
  ∀ n, P13688910196517344776.a n = A088978 (n + 1)

end A088978

/-! ## A088978.P8134582678199025390

`A158388(n)+A098033(n+1)`
-/

namespace A088978.P8134582678199025390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A098033 (n + 1)

end

end A088978.P8134582678199025390

namespace A088978

/-- `A158388(n)+A098033(n+1)` -/
def P8134582678199025390.Spec : Prop :=
  ∀ n, P8134582678199025390.a n = A088978 (n + 1)

end A088978

/-! ## A088978.P6095544371958593491

`gcd(A102781(n+1), A130130(n))`
-/

namespace A088978.P6095544371958593491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102781 (n + 1)) (A130130 n)

end

end A088978.P6095544371958593491

namespace A088978

/-- `gcd(A102781(n+1), A130130(n))` -/
def P6095544371958593491.Spec : Prop :=
  ∀ n, (P6095544371958593491.a n : ℤ) = A088978 (n + 1)

end A088978

/-! ## A088978.P13795582498660654952

`A098033(n+1)-A153881(n+1)`
-/

namespace A088978.P13795582498660654952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (n + 1) - A153881 (n + 1)

end

end A088978.P13795582498660654952

namespace A088978

/-- `A098033(n+1)-A153881(n+1)` -/
def P13795582498660654952.Spec : Prop :=
  ∀ n, P13795582498660654952.a n = A088978 (n + 1)

end A088978

/-! ## A088978.P16639465324166141323

`A102781(n+1)/A236965(n+1)`
-/

namespace A088978.P16639465324166141323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102781 (n + 1) : ℚ) / (A236965 (n + 1) : ℚ)

end

end A088978.P16639465324166141323

namespace A088978

/-- `A102781(n+1)/A236965(n+1)` -/
def P16639465324166141323.Spec : Prop :=
  ∀ n, P16639465324166141323.a n = (A088978 (n + 1) : ℚ)

end A088978

/-! ## A088978.P13218819279587207932

`A007814(and(3, A000040(n+1)-2)+1)`
-/

namespace A088978.P13218819279587207932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.land 3 (A000040 (n + 1) - 2) + 1).toNat

end

end A088978.P13218819279587207932

namespace A088978

/-- `A007814(and(3, A000040(n+1)-2)+1)` -/
def P13218819279587207932.Spec : Prop :=
  ∀ n, P13218819279587207932.a n = A088978 (n + 1)

end A088978

/-! ## A088978.P477486543578357861

`(A006093(n+1)-A130290(n+1))/A236965(n+1)`
-/

namespace A088978.P477486543578357861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) - A130290 (n + 1) : ℚ) / (A236965 (n + 1) : ℚ)

end

end A088978.P477486543578357861

namespace A088978

/-- `(A006093(n+1)-A130290(n+1))/A236965(n+1)` -/
def P477486543578357861.Spec : Prop :=
  ∀ n, P477486543578357861.a n = (A088978 (n + 1) : ℚ)

end A088978

/-! ## A088978.P15508212167112425444

`A023512(A061716(A061716(A061716(A227471(n+1)))))`
-/

namespace A088978.P15508212167112425444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023512 (A061716 (A061716 (A061716 (A227471 (n + 1)).toNat).toNat).toNat).toNat

end

end A088978.P15508212167112425444

namespace A088978

/-- `A023512(A061716(A061716(A061716(A227471(n+1)))))` -/
def P15508212167112425444.Spec : Prop :=
  ∀ n, P15508212167112425444.a n = A088978 (n + 1)

end A088978

/-! ## A088978.P797506390010790582

`A166124(A068504(n+1))`
-/

namespace A088978.P797506390010790582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166124 (A068504 (n + 1)).toNat

end

end A088978.P797506390010790582

namespace A088978

/-- `A166124(A068504(n+1))` -/
def P797506390010790582.Spec : Prop :=
  ∀ n, P797506390010790582.a n = A088978 (n + 1)

end A088978

/-!
# A088979: a(n) = n! - ((n-1)!!)^2.

The programs for A088979, there is no canonical definition to state claims against.
-/

/-! ## A088979.P11128488030760611680

`A007911(n+3)*A248809(∑[n])`
-/

namespace A088979.P11128488030760611680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007911 (n + 3) * A248809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088979.P11128488030760611680

/-! ## A088979.P17171025984149801963

`Δ[A129981(n)]*A007911(n+3)`
-/

namespace A088979.P17171025984149801963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007911 (n + 3)

end

end A088979.P17171025984149801963

/-! ## A088979.P10452532936664976746

`A000142(n+2)-A184877(n+1)`
-/

namespace A088979.P10452532936664976746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 2) - A184877 (n + 1)

end

end A088979.P10452532936664976746

/-! ## A088979.P10371126618080226183

`A006882(n+1)*A007911(n+3)`
-/

namespace A088979.P10371126618080226183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) * A007911 (n + 3)

end

end A088979.P10371126618080226183

/-! ## A088979.P1278358234725362810

`A007911(n+3)*A230698(A253145(n))`
-/

namespace A088979.P1278358234725362810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007911 (n + 3) * A230698 (A253145 n).toNat

end

end A088979.P1278358234725362810

/-! ## A088979.P4182132806052509538

`A007911(n+3)*A172089(A134869(n+1))`
-/

namespace A088979.P4182132806052509538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007911 (n + 3) * A172089 (A134869 (n + 1)).toNat

end

end A088979.P4182132806052509538

/-! ## A088979.P15946183785985341990

`A007911(n+3)*A172089(A000217(n+2))`
-/

namespace A088979.P15946183785985341990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007911 (n + 3) * A172089 (A000217 (n + 2)).toNat

end

end A088979.P15946183785985341990

/-! ## A088979.P83306039445719888

`A230698(A134869(n+1))*A230698(A253145(n))`
-/

namespace A088979.P83306039445719888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (A134869 (n + 1)).toNat * A230698 (A253145 n).toNat

end

end A088979.P83306039445719888

/-!
# A088980: G.f.: 1 + x + Sum_{n >= 1} ( x^(2^n)/ ((1+x^(2^(n-1)))*Product_{j=0..n-1} (1-x^(2^j)) ) ).

The programs for A088980, there is no canonical definition to state claims against.
-/

/-! ## A088980.P15979802919949283824

`a(n-2)+a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A088980.P15979802919949283824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  a (n - 2) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A088980.P15979802919949283824

/-! ## A088980.P805973470536726003

`abs(a(n-2)+a(and(n, -2)/2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A088980.P805973470536726003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A088980.P805973470536726003

/-! ## A088980.P886921789043191847

`ceil(a(n-2)+a(and(n, -2)/2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A088980.P886921789043191847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A088980.P886921789043191847

/-! ## A088980.P7725986947182402211

`round(a(n-2)+a(and(n, -2)/2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`

`round` is left out, it is the identity on integers.
-/

namespace A088980.P7725986947182402211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

end

end A088980.P7725986947182402211

/-! ## A088980.P1144001492791096546

`A088931(round(acot(n)+n))`
-/

namespace A088980.P1144001492791096546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A088980.P1144001492791096546

/-! ## A088980.P1198974882096054489

`A088931(n)^floor(atan(n))`
-/

namespace A088980.P1198974882096054489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088931 n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A088980.P1198974882096054489

/-! ## A088980.P17370984803173611905

`A088931(floor(sqrt(n²+4)))`
-/

namespace A088980.P17370984803173611905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 (Nat.sqrt (n ^ 2 + 4))

end

end A088980.P17370984803173611905

/-! ## A088980.P1105119818819440953

`gcd(A088931(n), A094497(n))`
-/

namespace A088980.P1105119818819440953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088931 n) (A094497 n)

end

end A088980.P1105119818819440953

/-! ## A088980.P13748915242603988527

`A088931(n)+A019590(n+1)`
-/

namespace A088980.P13748915242603988527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 n + A019590 (n + 1)

end

end A088980.P13748915242603988527

/-! ## A088980.P15650640210023168707

`A094497(n+1)+A088931(n)`
-/

namespace A088980.P15650640210023168707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (n + 1) + A088931 n

end

end A088980.P15650640210023168707

/-!
# A088981: a(n+2) = a(n+1) + a(n) - (2*n + 1) where a(0)=7, a(1)=11.

The programs for A088981, the canonical program `A088981.P15143407969733008252` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088981 has offset 0).

The definition of A088981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088981.P15143407969733008252

`A089061(n)+A000071(n+4)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088981

/-- `A089061(n)+A000071(n+4)` -/
def P15143407969733008252.Spec : Prop :=
  ∀ n, P15143407969733008252.a n = A088981 n

theorem P15143407969733008252.correct : P15143407969733008252.Spec := by
  intro n
  simp only [A088981]

end A088981

/-! ## A088981.P3584001424418194625

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=7, a(1)=11, a(2)=17, a(3)=25`
-/

namespace A088981.P3584001424418194625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 11, 17, 25] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + a (n - 4)

end

end A088981.P3584001424418194625

namespace A088981

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P3584001424418194625.Spec : Prop :=
  ∀ n, P3584001424418194625.a n = A088981 n

end A088981

/-! ## A088981.P17252578585106802900

`∑[a(n-1)+a(n-2)-2]` with `a(0)=7, a(1)=4, a(2)=6`
-/

namespace A088981.P17252578585106802900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 4, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088981.P17252578585106802900

namespace A088981

/-- `∑[a(n-1)+a(n-2)-2]` -/
def P17252578585106802900.Spec : Prop :=
  ∀ n, P17252578585106802900.a n = A088981 n

end A088981

/-! ## A088981.P10685792540291246700

`∑[a(n-1)-(2-a(n-2))]` with `a(0)=7, a(1)=4, a(2)=6`
-/

namespace A088981.P10685792540291246700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 4, 6] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088981.P10685792540291246700

namespace A088981

/-- `∑[a(n-1)-(2-a(n-2))]` -/
def P10685792540291246700.Spec : Prop :=
  ∀ n, P10685792540291246700.a n = A088981 n

end A088981

/-! ## A088981.P782091056099909320

`∑[A288603(n)]+5`
-/

namespace A088981.P782091056099909320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A088981.P782091056099909320

namespace A088981

/-- `∑[A288603(n)]+5` -/
def P782091056099909320.Spec : Prop :=
  ∀ n, P782091056099909320.a n = A088981 n

end A088981

/-! ## A088981.P9259895434144480091

`∑[A001595(n)+3]+3`
-/

namespace A088981.P9259895434144480091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A088981.P9259895434144480091

namespace A088981

/-- `∑[A001595(n)+3]+3` -/
def P9259895434144480091.Spec : Prop :=
  ∀ n, P9259895434144480091.a n = A088981 n

end A088981

/-! ## A088981.P16887290949106287601

`2*A232896(n+2)+1`
-/

namespace A088981.P16887290949106287601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232896 (n + 2) + 1

end

end A088981.P16887290949106287601

namespace A088981

/-- `2*A232896(n+2)+1` -/
def P16887290949106287601.Spec : Prop :=
  ∀ n, P16887290949106287601.a n = A088981 n

end A088981

/-! ## A088981.P11379484352315927045

`2*A081659(n+2)-1`
-/

namespace A088981.P11379484352315927045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081659 (n + 2) - 1

end

end A088981.P11379484352315927045

namespace A088981

/-- `2*A081659(n+2)-1` -/
def P11379484352315927045.Spec : Prop :=
  ∀ n, P11379484352315927045.a n = A088981 n

end A088981

/-! ## A088981.P5974043480763707958

`2*A255875(n+1)+5`
-/

namespace A088981.P5974043480763707958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255875 (n + 1) + 5

end

end A088981.P5974043480763707958

namespace A088981

/-- `2*A255875(n+1)+5` -/
def P5974043480763707958.Spec : Prop :=
  ∀ n, P5974043480763707958.a n = A088981 n

end A088981

/-! ## A088981.P15984923321371616902

`2*A002062(n+3)-3`
-/

namespace A088981.P15984923321371616902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002062 (n + 3) - 3

end

end A088981.P15984923321371616902

namespace A088981

/-- `2*A002062(n+3)-3` -/
def P15984923321371616902.Spec : Prop :=
  ∀ n, P15984923321371616902.a n = A088981 n

end A088981

/-! ## A088981.P12030993291806807305

`A097280(n+1)+2*n`
-/

namespace A088981.P12030993291806807305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097280 (n + 1) + (2 * n : ℤ)

end

end A088981.P12030993291806807305

namespace A088981

/-- `A097280(n+1)+2*n` -/
def P12030993291806807305.Spec : Prop :=
  ∀ n, P12030993291806807305.a n = A088981 n

end A088981

/-! ## A088981.P2346783715729513814

`2*(A020695(n)+n)+3`
-/

namespace A088981.P2346783715729513814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020695 n + (n : ℤ)) + 3

end

end A088981.P2346783715729513814

namespace A088981

/-- `2*(A020695(n)+n)+3` -/
def P2346783715729513814.Spec : Prop :=
  ∀ n, P2346783715729513814.a n = A088981 n

end A088981

/-! ## A088981.P6715316671656307140

`A154691(n)+2*(n+3)`
-/

namespace A088981.P6715316671656307140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n + (2 * (n + 3) : ℤ)

end

end A088981.P6715316671656307140

namespace A088981

/-- `A154691(n)+2*(n+3)` -/
def P6715316671656307140.Spec : Prop :=
  ∀ n, P6715316671656307140.a n = A088981 n

end A088981

/-! ## A088981.P12700561665998586252

`A168193(n)+2*n+7`
-/

namespace A088981.P12700561665998586252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n + (2 * n + 7 : ℤ)

end

end A088981.P12700561665998586252

namespace A088981

/-- `A168193(n)+2*n+7` -/
def P12700561665998586252.Spec : Prop :=
  ∀ n, P12700561665998586252.a n = A088981 n

end A088981

/-! ## A088981.P483803424122480114

`A288603(n+2)+Δ[n²]`
-/

namespace A088981.P483803424122480114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288603 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A088981.P483803424122480114

namespace A088981

/-- `A288603(n+2)+Δ[n²]` -/
def P483803424122480114.Spec : Prop :=
  ∀ n, P483803424122480114.a n = A088981 n

end A088981

/-! ## A088981.P17476279303315063570

`A001588(n+3)+2*(n+1)`
-/

namespace A088981.P17476279303315063570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (n + 3) + (2 * (n + 1) : ℤ)

end

end A088981.P17476279303315063570

namespace A088981

/-- `A001588(n+3)+2*(n+1)` -/
def P17476279303315063570.Spec : Prop :=
  ∀ n, P17476279303315063570.a n = A088981 n

end A088981

/-! ## A088981.P6832047507085524357

`A001595(n+2)+2*(n+2)`
-/

namespace A088981.P6832047507085524357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 2) + (2 * (n + 2) : ℤ)

end

end A088981.P6832047507085524357

namespace A088981

/-- `A001595(n+2)+2*(n+2)` -/
def P6832047507085524357.Spec : Prop :=
  ∀ n, P6832047507085524357.a n = A088981 n

end A088981

/-! ## A088981.P714489614175381352

`A078642(n+1)+2*n+3`
-/

namespace A088981.P714489614175381352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) + (2 * n + 3 : ℤ)

end

end A088981.P714489614175381352

namespace A088981

/-- `A078642(n+1)+2*n+3` -/
def P714489614175381352.Spec : Prop :=
  ∀ n, P714489614175381352.a n = A088981 n

end A088981

/-! ## A088981.P12295695179241614209

`2*(A000045(n+3)+n)+3`
-/

namespace A088981.P12295695179241614209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 (n + 3) + (n : ℤ)) + 3

end

end A088981.P12295695179241614209

namespace A088981

/-- `2*(A000045(n+3)+n)+3` -/
def P12295695179241614209.Spec : Prop :=
  ∀ n, P12295695179241614209.a n = A088981 n

end A088981

/-! ## A088981.P10631232871222058960

`A192760(n)+A112414(n)`
-/

namespace A088981.P10631232871222058960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 n + A112414 n

end

end A088981.P10631232871222058960

namespace A088981

/-- `A192760(n)+A112414(n)` -/
def P10631232871222058960.Spec : Prop :=
  ∀ n, P10631232871222058960.a n = A088981 n

end A088981

/-!
# A088982: Primes that are between consecutive prime-indexed primes.

The programs for A088982, the canonical program `A088982.P4156197862445489170` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088982 has offset 1).

The definition of A088982 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088982.P4156197862445489170

`A000040(A002808(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088982

/-- `A000040(A002808(n+1))` -/
def P4156197862445489170.Spec : Prop :=
  ∀ n, P4156197862445489170.a n = A088982 (n + 1)

theorem P4156197862445489170.correct : P4156197862445489170.Spec := by
  intro n
  simp only [A088982, Nat.add_sub_cancel]

end A088982

/-! ## A088982.P5586135488994245811

`p?[A141437(n+2)]`
-/

namespace A088982.P5586135488994245811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088982.P5586135488994245811

namespace A088982

/-- `p?[A141437(n+2)]` -/
def P5586135488994245811.Spec : Prop :=
  ∀ n, P5586135488994245811.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P11716164423492107357

`A073168(n+1)+A065858(n+1)`
-/

namespace A088982.P11716164423492107357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 1) + A065858 (n + 1)

end

end A088982.P11716164423492107357

namespace A088982

/-- `A073168(n+1)+A065858(n+1)` -/
def P11716164423492107357.Spec : Prop :=
  ∀ n, P11716164423492107357.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P1563282986706166479

`A275991(n+1)+A000040(n+1)`
-/

namespace A088982.P1563282986706166479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275991 (n + 1) + A000040 (n + 1)

end

end A088982.P1563282986706166479

namespace A088982

/-- `A275991(n+1)+A000040(n+1)` -/
def P1563282986706166479.Spec : Prop :=
  ∀ n, P1563282986706166479.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P16692708329095828691

`A007821(n+2)`
-/

namespace A088982.P16692708329095828691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 2)

end

end A088982.P16692708329095828691

namespace A088982

/-- `A007821(n+2)` -/
def P16692708329095828691.Spec : Prop :=
  ∀ n, P16692708329095828691.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P17687019061443733677

`A309649(n+2)`
-/

namespace A088982.P17687019061443733677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309649 (n + 2)

end

end A088982.P17687019061443733677

namespace A088982

/-- `A309649(n+2)` -/
def P17687019061443733677.Spec : Prop :=
  ∀ n, P17687019061443733677.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P15391166802200706884

`A215848(Δ[A053767(n)]-2)`
-/

namespace A088982.P15391166802200706884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (f1 (n + 1) - f1 n - 2).toNat

end

end A088982.P15391166802200706884

namespace A088982

/-- `A215848(Δ[A053767(n)]-2)` -/
def P15391166802200706884.Spec : Prop :=
  ∀ n, P15391166802200706884.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P15614599985239405099

`A045319(A072668(n+1))`
-/

namespace A088982.P15614599985239405099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A072668 (n + 1)).toNat

end

end A088982.P15614599985239405099

namespace A088982

/-- `A045319(A072668(n+1))` -/
def P15614599985239405099.Spec : Prop :=
  ∀ n, P15614599985239405099.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P1257541307824169693

`A045319(A060462(n+2))`
-/

namespace A088982.P1257541307824169693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A060462 (n + 2)).toNat

end

end A088982.P1257541307824169693

namespace A088982

/-- `A045319(A060462(n+2))` -/
def P1257541307824169693.Spec : Prop :=
  ∀ n, P1257541307824169693.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P13545986655177699720

`A045319(A002808(n+1)-1)`
-/

namespace A088982.P13545986655177699720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A002808 (n + 1) - 1).toNat

end

end A088982.P13545986655177699720

namespace A088982

/-- `A045319(A002808(n+1)-1)` -/
def P13545986655177699720.Spec : Prop :=
  ∀ n, P13545986655177699720.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P3883207707790681656

`A045344(A002808(n+1)-1)`
-/

namespace A088982.P3883207707790681656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A002808 (n + 1) - 1).toNat

end

end A088982.P3883207707790681656

namespace A088982

/-- `A045344(A002808(n+1)-1)` -/
def P3883207707790681656.Spec : Prop :=
  ∀ n, P3883207707790681656.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P14957445174678318146

`A065091(A002808(n+1)-1)`
-/

namespace A088982.P14957445174678318146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A002808 (n + 1) - 1).toNat

end

end A088982.P14957445174678318146

namespace A088982

/-- `A065091(A002808(n+1)-1)` -/
def P14957445174678318146.Spec : Prop :=
  ∀ n, P14957445174678318146.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P8793040117756195274

`A140475(A002808(n+1)-1)`
-/

namespace A088982.P8793040117756195274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (A002808 (n + 1) - 1).toNat

end

end A088982.P8793040117756195274

namespace A088982

/-- `A140475(A002808(n+1)-1)` -/
def P8793040117756195274.Spec : Prop :=
  ∀ n, P8793040117756195274.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P2356358306545916441

`A065091(A018252(n+2)-1)`
-/

namespace A088982.P2356358306545916441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A018252 (n + 2) - 1).toNat

end

end A088982.P2356358306545916441

namespace A088982

/-- `A065091(A018252(n+2)-1)` -/
def P2356358306545916441.Spec : Prop :=
  ∀ n, P2356358306545916441.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P8206552356934262061

`p?[A346180(n+3)]`
-/

namespace A088982.P8206552356934262061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346180 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088982.P8206552356934262061

namespace A088982

/-- `p?[A346180(n+3)]` -/
def P8206552356934262061.Spec : Prop :=
  ∀ n, P8206552356934262061.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P13272549962356460738

`A000040(Δ[A053767(n)])`
-/

namespace A088982.P13272549962356460738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A088982.P13272549962356460738

namespace A088982

/-- `A000040(Δ[A053767(n)])` -/
def P13272549962356460738.Spec : Prop :=
  ∀ n, P13272549962356460738.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P14403071421186701375

`A000040(A018252(n+2))`
-/

namespace A088982.P14403071421186701375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 2)).toNat

end

end A088982.P14403071421186701375

namespace A088982

/-- `A000040(A018252(n+2))` -/
def P14403071421186701375.Spec : Prop :=
  ∀ n, P14403071421186701375.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P15476210792039470152

`A000040(A065090(n+3))`
-/

namespace A088982.P15476210792039470152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065090 (n + 3)).toNat

end

end A088982.P15476210792039470152

namespace A088982

/-- `A000040(A065090(n+3))` -/
def P15476210792039470152.Spec : Prop :=
  ∀ n, P15476210792039470152.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P13044112068132671289

`A000040(A141468(n+3))`
-/

namespace A088982.P13044112068132671289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A141468 (n + 3)).toNat

end

end A088982.P13044112068132671289

namespace A088982

/-- `A000040(A141468(n+3))` -/
def P13044112068132671289.Spec : Prop :=
  ∀ n, P13044112068132671289.a n = A088982 (n + 1)

end A088982

/-! ## A088982.P13080055272165832815

`A000040(A173905(n+5))`
-/

namespace A088982.P13080055272165832815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173905 (n + 5)).toNat

end

end A088982.P13080055272165832815

namespace A088982

/-- `A000040(A173905(n+5))` -/
def P13080055272165832815.Spec : Prop :=
  ∀ n, P13080055272165832815.a n = A088982 (n + 1)

end A088982

/-!
# A088983: Numbers k such that each of the 6 consecutive numbers k through k+5 has exactly two distinct prime factors.

The programs for A088983, there is no canonical definition to state claims against.
-/

/-! ## A088983.P1250242594657145215

`A045934(char[12]+n+1)`
-/

namespace A088983.P1250242594657145215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 ((if ∃ j, f1 j = n then 1 else 0) + n + 1)

end

end A088983.P1250242594657145215

/-! ## A088983.P10875037220341382320

`record[A045934(∏{digits}[n, #]+1)]`
-/

namespace A088983.P10875037220341382320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088983.P10875037220341382320

/-! ## A088983.P12551058399470203961

`A004151(A045934(n+1))`
-/

namespace A088983.P12551058399470203961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A045934 (n + 1)).toNat

end

end A088983.P12551058399470203961

/-! ## A088983.P8904108594521551741

`record[A045934(A089247(n+1))]`
-/

namespace A088983.P8904108594521551741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (A089247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088983.P8904108594521551741

/-! ## A088983.P12833835244513885481

`record[A045934(A285769(n+1))]`
-/

namespace A088983.P12833835244513885481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045934 (A285769 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088983.P12833835244513885481

/-!
# A088984: a(n) = (n!!)^2 - n!.

The programs for A088984, there is no canonical definition to state claims against.
-/

/-! ## A088984.P1676118329584231404

`A184877(n+2)-(n+2)!`
-/

namespace A088984.P1676118329584231404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184877 (n + 2) - (Nat.factorial (n + 2) : ℤ)

end

end A088984.P1676118329584231404

/-! ## A088984.P2560868759134911940

`A184877(n+2)-A000142(n+2)`
-/

namespace A088984.P2560868759134911940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184877 (n + 2) - A000142 (n + 2)

end

end A088984.P2560868759134911940

/-! ## A088984.P18295629294607459938

`A006882(n+2)*A007911(n+3)`
-/

namespace A088984.P18295629294607459938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 2) * A007911 (n + 3)

end

end A088984.P18295629294607459938

/-! ## A088984.P6756486771229326524

`A006882(n+2)²-A000142(n+2)`
-/

namespace A088984.P6756486771229326524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 2) ^ 2 - A000142 (n + 2)

end

end A088984.P6756486771229326524

/-! ## A088984.P555521054101645148

`Δ[A006882(n+1)]*A006882(n+2)`
-/

namespace A088984.P555521054101645148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006882 (n + 2)

end

end A088984.P555521054101645148

/-! ## A088984.P11957243617742561146

`A007911(n+3)*A248809(∑[n+1])`
-/

namespace A088984.P11957243617742561146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007911 (n + 3) * A248809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088984.P11957243617742561146

/-! ## A088984.P11628004027249621691

`Δ[A128882(n+1)]*Δ[A129981(n+1)]`
-/

namespace A088984.P11628004027249621691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A088984.P11628004027249621691

/-! ## A088984.P16275900435298213858

`(A007911(n+3)+Δ[A129981(n)])*A007911(n+3)`
-/

namespace A088984.P16275900435298213858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007911 (n + 3) + (f1 (n + 1) - f1 n)) * A007911 (n + 3)

end

end A088984.P16275900435298213858

/-! ## A088984.P4700484271707946361

`(A230698(A253145(n))+A007911(n+3))*A007911(n+3)`
-/

namespace A088984.P4700484271707946361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230698 (A253145 n).toNat + A007911 (n + 3)) * A007911 (n + 3)

end

end A088984.P4700484271707946361

/-! ## A088984.P1542547924735892051

`(A172089(A134869(n+1))+A007911(n+3))*A007911(n+3)`
-/

namespace A088984.P1542547924735892051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A172089 (A134869 (n + 1)).toNat + A007911 (n + 3)) * A007911 (n + 3)

end

end A088984.P1542547924735892051

/-!
# A088985: Numbers of the form prime(prime(n)+1), with n satisfying prime(n)+2 = prime(n+1).

The programs for A088985, the canonical program `A088985.P11937650626503658584` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088985 has offset 1).

The definition of A088985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088985.P11937650626503658584

`A072677(A029707(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A088985

/-- `A072677(A029707(n+1))` -/
def P11937650626503658584.Spec : Prop :=
  ∀ n, P11937650626503658584.a n = A088985 (n + 1)

theorem P11937650626503658584.correct : P11937650626503658584.Spec := by
  intro n
  simp only [A088985, Nat.add_sub_cancel]

end A088985

/-! ## A088985.P10349118177033168350

`A055003(A107770(n+1))`
-/

namespace A088985.P10349118177033168350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (A107770 (n + 1)).toNat

end

end A088985.P10349118177033168350

namespace A088985

/-- `A055003(A107770(n+1))` -/
def P10349118177033168350.Spec : Prop :=
  ∀ n, P10349118177033168350.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P4137795311925013951

`A055003(A029707(n+1)+1)`
-/

namespace A088985.P4137795311925013951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (A029707 (n + 1) + 1).toNat

end

end A088985.P4137795311925013951

namespace A088985

/-- `A055003(A029707(n+1)+1)` -/
def P4137795311925013951.Spec : Prop :=
  ∀ n, P4137795311925013951.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P6785586950790237518

`A072677(A155752(n+1)+1)`
-/

namespace A088985.P6785586950790237518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (A155752 (n + 1) + 1).toNat

end

end A088985.P6785586950790237518

namespace A088985

/-- `A072677(A155752(n+1)+1)` -/
def P6785586950790237518.Spec : Prop :=
  ∀ n, P6785586950790237518.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P15395807222524828751

`∩[A055003(n+1), A072677(n+1)]`
-/

namespace A088985.P15395807222524828751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088985.P15395807222524828751

namespace A088985

/-- `∩[A055003(n+1), A072677(n+1)]` -/
def P15395807222524828751.Spec : Prop :=
  ∀ n, (P15395807222524828751.a n : ℤ) = A088985 (n + 1)

end A088985

/-! ## A088985.P12535088610607181130

`∩[A072677(n+1), A175248(n+1)]`
-/

namespace A088985.P12535088610607181130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088985.P12535088610607181130

namespace A088985

/-- `∩[A072677(n+1), A175248(n+1)]` -/
def P12535088610607181130.Spec : Prop :=
  ∀ n, (P12535088610607181130.a n : ℤ) = A088985 (n + 1)

end A088985

/-! ## A088985.P2809892186902908002

`A007504(2*A040040(n+1))-A007504(A054735(n+1)/2-1)`
-/

namespace A088985.P2809892186902908002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * A040040 (n + 1)).toNat - A007504 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A088985.P2809892186902908002

namespace A088985

/-- `A007504(2*A040040(n+1))-A007504(A054735(n+1)/2-1)` -/
def P2809892186902908002.Spec : Prop :=
  ∀ n, P2809892186902908002.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P6074402775663817393

`A031215(A040040(n+1))`
-/

namespace A088985.P6074402775663817393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (A040040 (n + 1)).toNat

end

end A088985.P6074402775663817393

namespace A088985

/-- `A031215(A040040(n+1))` -/
def P6074402775663817393.Spec : Prop :=
  ∀ n, P6074402775663817393.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P13616523538893368018

`A001748(A014574(n+1))/3`
-/

namespace A088985.P13616523538893368018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A014574 (n + 1)).toNat : ℚ) / 3

end

end A088985.P13616523538893368018

namespace A088985

/-- `A001748(A014574(n+1))/3` -/
def P13616523538893368018.Spec : Prop :=
  ∀ n, P13616523538893368018.a n = (A088985 (n + 1) : ℚ)

end A088985

/-! ## A088985.P9988075541187544256

`A001748(A144834(n+1)+2)/3`
-/

namespace A088985.P9988075541187544256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A144834 (n + 1) + 2).toNat : ℚ) / 3

end

end A088985.P9988075541187544256

namespace A088985

/-- `A001748(A144834(n+1)+2)/3` -/
def P9988075541187544256.Spec : Prop :=
  ∀ n, P9988075541187544256.a n = (A088985 (n + 1) : ℚ)

end A088985

/-! ## A088985.P538938351264563611

`A088982(A169643(n+1))`
-/

namespace A088985.P538938351264563611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (A169643 (n + 1)).toNat

end

end A088985.P538938351264563611

namespace A088985

/-- `A088982(A169643(n+1))` -/
def P538938351264563611.Spec : Prop :=
  ∀ n, P538938351264563611.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P11149459331307955035

`A000040(A014574(n+1))`
-/

namespace A088985.P11149459331307955035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014574 (n + 1)).toNat

end

end A088985.P11149459331307955035

namespace A088985

/-- `A000040(A014574(n+1))` -/
def P11149459331307955035.Spec : Prop :=
  ∀ n, P11149459331307955035.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P7940122972877739803

`A008578(A006512(n+1))`
-/

namespace A088985.P7940122972877739803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A006512 (n + 1)).toNat

end

end A088985.P7940122972877739803

namespace A088985

/-- `A008578(A006512(n+1))` -/
def P7940122972877739803.Spec : Prop :=
  ∀ n, P7940122972877739803.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P1682506070896678123

`A045319(A001359(n+1))`
-/

namespace A088985.P1682506070896678123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A001359 (n + 1)).toNat

end

end A088985.P1682506070896678123

namespace A088985

/-- `A045319(A001359(n+1))` -/
def P1682506070896678123.Spec : Prop :=
  ∀ n, P1682506070896678123.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P14225971332792920761

`A004139(A144834(n+1))`
-/

namespace A088985.P14225971332792920761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A144834 (n + 1)).toNat

end

end A088985.P14225971332792920761

namespace A088985

/-- `A004139(A144834(n+1))` -/
def P14225971332792920761.Spec : Prop :=
  ∀ n, P14225971332792920761.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P2501195804183159171

`A008578(A067829(n+2))`
-/

namespace A088985.P2501195804183159171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A067829 (n + 2)).toNat

end

end A088985.P2501195804183159171

namespace A088985

/-- `A008578(A067829(n+2))` -/
def P2501195804183159171.Spec : Prop :=
  ∀ n, P2501195804183159171.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P12709411926571131939

`A008578(A094743(n+2))`
-/

namespace A088985.P12709411926571131939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A094743 (n + 2)).toNat

end

end A088985.P12709411926571131939

namespace A088985

/-- `A008578(A094743(n+2))` -/
def P12709411926571131939.Spec : Prop :=
  ∀ n, P12709411926571131939.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P15522017692861033071

`A045319(A124588(n+2))`
-/

namespace A088985.P15522017692861033071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A124588 (n + 2)).toNat

end

end A088985.P15522017692861033071

namespace A088985

/-- `A045319(A124588(n+2))` -/
def P15522017692861033071.Spec : Prop :=
  ∀ n, P15522017692861033071.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P13953451161780299772

`A000040(A129297(n+5))`
-/

namespace A088985.P13953451161780299772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A129297 (n + 5)).toNat

end

end A088985.P13953451161780299772

namespace A088985

/-- `A000040(A129297(n+5))` -/
def P13953451161780299772.Spec : Prop :=
  ∀ n, P13953451161780299772.a n = A088985 (n + 1)

end A088985

/-! ## A088985.P10224029068600837874

`A000040(sqrt(A075369(n+1)))`
-/

namespace A088985.P10224029068600837874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A088985.P10224029068600837874

namespace A088985

/-- `A000040(sqrt(A075369(n+1)))` -/
def P10224029068600837874.Spec : Prop :=
  ∀ n, P10224029068600837874.a n = A088985 (n + 1)

end A088985

/-!
# A088986: Numbers k such that each of k through k+4 are divisible by exactly two primes.

The programs for A088986, there is no canonical definition to state claims against.
-/

/-! ## A088986.P4133080433788786817

`filter[A045933(n+1), A215480(#)]`
-/

namespace A088986.P4133080433788786817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A088986.P4133080433788786817

/-!
# A088987: Triples of primes between two consecutive prime-indexed primes.

The programs for A088987, there is no canonical definition to state claims against.
-/

/-! ## A088987.P9305955826421071814

`A000040(A271211(n+1))`
-/

namespace A088987.P9305955826421071814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A271211 (n + 1)).toNat

end

end A088987.P9305955826421071814

/-! ## A088987.P10235060997840920927

`A008578(A271211(n+1)+1)`
-/

namespace A088987.P10235060997840920927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A271211 (n + 1) + 1).toNat

end

end A088987.P10235060997840920927

/-! ## A088987.P9195787699341301519

`A182986(A271211(n+1)+1)`
-/

namespace A088987.P9195787699341301519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A271211 (n + 1) + 1).toNat

end

end A088987.P9195787699341301519

/-! ## A088987.P9678160076316911057

`A045319(A271211(n+1)-1)`
-/

namespace A088987.P9678160076316911057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A271211 (n + 1) - 1).toNat

end

end A088987.P9678160076316911057

/-! ## A088987.P497667642633926863

`A046022(A271211(n+1)+2)`
-/

namespace A088987.P497667642633926863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A271211 (n + 1) + 2).toNat

end

end A088987.P497667642633926863

/-! ## A088987.P4860642925776608036

`A065091(A271211(n+1)-1)`
-/

namespace A088987.P4860642925776608036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A271211 (n + 1) - 1).toNat

end

end A088987.P4860642925776608036

/-! ## A088987.P7017793384764861950

`A073846(2*A271211(n+1))`
-/

namespace A088987.P7017793384764861950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A271211 (n + 1)).toNat

end

end A088987.P7017793384764861950

/-! ## A088987.P8507265296413592357

`A000040(eq[4, A072680(n+2)]+2)`
-/

namespace A088987.P8507265296413592357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A088987.P8507265296413592357

/-! ## A088987.P864625624394377315

`A008578(eq[4, A072680(n+2)]+3)`
-/

namespace A088987.P864625624394377315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A088987.P864625624394377315

/-! ## A088987.P9703101524642596161

`A008864(A271211(n+1))-A007318(∑[n])`
-/

namespace A088987.P9703101524642596161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A271211 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088987.P9703101524642596161

/-!
# A088988: Least prime that begins a run of exactly 2n-1 primes between two consecutive prime-indexed primes.

The programs for A088988, there is no canonical definition to state claims against.
-/

/-! ## A088988.P15364580067125686388

`A072677(A038664(n+1))`
-/

namespace A088988.P15364580067125686388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (A038664 (n + 1)).toNat

end

end A088988.P15364580067125686388

/-! ## A088988.P13934678811037293247

`A045319(A000230(n+1))`
-/

namespace A088988.P13934678811037293247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A000230 (n + 1)).toNat

end

end A088988.P13934678811037293247

/-! ## A088988.P628927072420817776

`A000040(A045881(n+1))`
-/

namespace A088988.P628927072420817776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A045881 (n + 1)).toNat

end

end A088988.P628927072420817776

/-! ## A088988.P12760988363997919827

`A045319(A174350(∑[n+1]))`
-/

namespace A088988.P12760988363997919827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A174350 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A088988.P12760988363997919827

/-! ## A088988.P10554879870661938612

`A065091(A337767(∑[n+1]))`
-/

namespace A088988.P10554879870661938612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A337767 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A088988.P10554879870661938612

/-!
# A088989: Denominators of coefficients of odd powers of 1/q in the solution series for Tan[x]/x=1.

The programs for A088989, there is no canonical definition to state claims against.
-/

/-! ## A088989.P11554668532129680415

`A025547(n+1)*A326454(A000975(n))`
-/

namespace A088989.P11554668532129680415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025547 (n + 1) * A326454 (A000975 n).toNat

end

end A088989.P11554668532129680415

/-! ## A088989.P17212708503048597606

`gcd(A231634(n+1), A279930(A008000(n)))`
-/

namespace A088989.P17212708503048597606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231634 (n + 1)) (A279930 (A008000 n).toNat)

end

end A088989.P17212708503048597606

/-! ## A088989.P2559639260653696201

`A025547(n+1)*A319765(A075215(n+1))`
-/

namespace A088989.P2559639260653696201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025547 (n + 1) * A319765 (A075215 (n + 1)).toNat

end

end A088989.P2559639260653696201

/-!
# A088990: Triangle related to generalized Euler numbers of type 2^n (A005799).

The programs for A088990, there is no canonical definition to state claims against.
-/

/-! ## A088990.P864315020435119408

`A369829(A090181(n)²)`
-/

namespace A088990.P864315020435119408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369829 (A090181 n ^ 2).toNat

end

end A088990.P864315020435119408

/-! ## A088990.P5487196741320747941

`A183168(4^A097805(n))`
-/

namespace A088990.P5487196741320747941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183168 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A088990.P5487196741320747941

/-! ## A088990.P1927951970958352487

`A123497(A097805(n)*A123125(n))`
-/

namespace A088990.P1927951970958352487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123497 (A097805 n * A123125 n).toNat

end

end A088990.P1927951970958352487

/-!
# A088991: Derangement numbers d(n,4) where d(n,k) = k(n-1)(d(n-1,k) + d(n-2,k)), with d(0,k) = 1 and d(1,k) = 0.

The programs for A088991, there is no canonical definition to state claims against.
-/

/-! ## A088991.P4295213187663720194

`4*(a(n-1)+a(n-2))*(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A088991.P4295213187663720194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * ((a (n - 1) + a (n - 2)) * ((n : ℤ) - 1))

end

end A088991.P4295213187663720194

/-! ## A088991.P11413194033584356553

`4*(a(n-1)-floor(-a(n-2)))*(n-1)` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A088991.P11413194033584356553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * ((a (n - 1) - (-a (n - 2))) * ((n : ℤ) - 1))

end

end A088991.P11413194033584356553

/-! ## A088991.P17499419091073080071

`4*(a(n-1)-round(-a(n-2)))*(n-1)` with `a(0)=1, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A088991.P17499419091073080071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * ((a (n - 1) - (-a (n - 2))) * ((n : ℤ) - 1))

end

end A088991.P17499419091073080071

/-! ## A088991.P5413443375167353366

`(4-4*(1-a(n-1)-a(n-2)))*(n-1)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A088991.P5413443375167353366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  (4 - 4 * (1 - a (n - 1) - a (n - 2))) * ((n : ℤ) - 1)

end

end A088991.P5413443375167353366

/-! ## A088991.P7391700531801425810

`A000079(n)/A001147(n)*A202065(n)`
-/

namespace A088991.P7391700531801425810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A001147 n : ℚ) * (A202065 n : ℚ)

end

end A088991.P7391700531801425810

/-!
# A088992: Derangement numbers d(n,5) where d(n,k) = k(n-1)(d(n-1,k) + d(n-2,k)), with d(0,k) = 1 and d(1,k) = 0.

The programs for A088992, there is no canonical definition to state claims against.
-/

/-! ## A088992.P5333568414058107596

`(n-1)*5*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A088992.P5333568414058107596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) - 1) * (5 * (a (n - 1) + a (n - 2)))

end

end A088992.P5333568414058107596

/-! ## A088992.P13232800302691637201

`5*(n-1)*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A088992.P13232800302691637201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  5 * (((n : ℤ) - 1) * (a (n - 1) - (-a (n - 2))))

end

end A088992.P13232800302691637201

/-! ## A088992.P10337515710245699415

`5*(a(n-1)-(char[1]-a(n-2)))*(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A088992.P10337515710245699415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  5 * ((a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))) * ((n : ℤ) - 1))

end

end A088992.P10337515710245699415

/-!
# A088993: Primes such that exactly five of them occur between consecutive prime-indexed primes.

The programs for A088993, there is no canonical definition to state claims against.
-/

/-! ## A088993.P10279300155055262352

`A000040(A271232(n+1))`
-/

namespace A088993.P10279300155055262352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A271232 (n + 1)).toNat

end

end A088993.P10279300155055262352

/-! ## A088993.P7419405043701492181

`A008578(A271232(n+1)+1)`
-/

namespace A088993.P7419405043701492181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A271232 (n + 1) + 1).toNat

end

end A088993.P7419405043701492181

/-! ## A088993.P8120963791293041698

`A045319(A271232(n+1)-1)`
-/

namespace A088993.P8120963791293041698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A271232 (n + 1) - 1).toNat

end

end A088993.P8120963791293041698

/-! ## A088993.P10297367389099684154

`A045344(A271232(n+1)-1)`
-/

namespace A088993.P10297367389099684154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A271232 (n + 1) - 1).toNat

end

end A088993.P10297367389099684154

/-! ## A088993.P17767676373380700890

`A065091(A271232(n+1)-1)`
-/

namespace A088993.P17767676373380700890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A271232 (n + 1) - 1).toNat

end

end A088993.P17767676373380700890

/-! ## A088993.P9060554078621901508

`A004139(A271232(n+1)-2)`
-/

namespace A088993.P9060554078621901508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A271232 (n + 1) - 2).toNat

end

end A088993.P9060554078621901508

/-! ## A088993.P16163270172261914078

`A215848(A271232(n+1)-2)`
-/

namespace A088993.P16163270172261914078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A271232 (n + 1) - 2).toNat

end

end A088993.P16163270172261914078

/-! ## A088993.P16553553058860031777

`A073846(2*A271232(n+1))`
-/

namespace A088993.P16553553058860031777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A271232 (n + 1)).toNat

end

end A088993.P16553553058860031777

/-! ## A088993.P3179686588390131101

`A000040(eq[7, A030664(n)%12])`
-/

namespace A088993.P3179686588390131101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030664 n) 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088993.P3179686588390131101

/-! ## A088993.P15984513680876792337

`A000040(eq[6, A072680(n+2)]+2)`
-/

namespace A088993.P15984513680876792337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A088993.P15984513680876792337

/-!
# A088994: Number of permutations in the symmetric group S_n such that the size of their centralizer is odd.

The programs for A088994, there is no canonical definition to state claims against.
-/

/-! ## A088994.P16387892590179072522

`n!-A088335(n)`
-/

namespace A088994.P16387892590179072522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A088335 n

end

end A088994.P16387892590179072522

/-! ## A088994.P10196312410721437835

`A000142(n)-A088335(n)`
-/

namespace A088994.P10196312410721437835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A088335 n

end

end A088994.P10196312410721437835

/-! ## A088994.P17240542172361765938

`Δ[A003422(n)]-A088335(n)`
-/

namespace A088994.P17240542172361765938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088335 n

end

end A088994.P17240542172361765938

/-! ## A088994.P12875737568221861656

`∏[A028310(n)]-A088335(n)`
-/

namespace A088994.P12875737568221861656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A088335 n

end

end A088994.P12875737568221861656

/-! ## A088994.P15186344558845204479

`∏[A008619(A004275(n))]-A088335(n)`
-/

namespace A088994.P15186344558845204479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A088335 n

end

end A088994.P15186344558845204479

/-!
# A088996: Triangle T(n, k) read by rows: T(n, k) = Sum_{j=0..n} binomial(j, n-k) * |Stirling1(n, n-j)|.

The programs for A088996, there is no canonical definition to state claims against.
-/

/-! ## A088996.P15741961018657617423

`A275926(A148038(n))+A156815(n)`
-/

namespace A088996.P15741961018657617423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (A148038 n).toNat + A156815 n

end

end A088996.P15741961018657617423

/-! ## A088996.P9752445667227641879

`A225479(n)+A151795(A350256(n))`
-/

namespace A088996.P9752445667227641879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 n + A151795 (A350256 n).toNat

end

end A088996.P9752445667227641879

/-! ## A088996.P7594172371592925588

`A343858(A245111(n))+A225479(n)`
-/

namespace A088996.P7594172371592925588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343858 (A245111 n).toNat + A225479 n

end

end A088996.P7594172371592925588

/-! ## A088996.P17366230051613063213

`A317369(A087736(n))`
-/

namespace A088996.P17366230051613063213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317369 (A087736 n).toNat

end

end A088996.P17366230051613063213

/-! ## A088996.P14379093611220104587

`A068063(lcm(2, A087736(n)))`
-/

namespace A088996.P14379093611220104587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (Int.lcm 2 (A087736 n))

end

end A088996.P14379093611220104587

/-!
# A088997: Base-10 numbers such that a(n) plus any nonnegative palindrome less than a(n) does not yield a palindrome.

The programs for A088997, there is no canonical definition to state claims against.
-/

/-! ## A088997.P9686366949178941656

`A001704(∑[A004108(n)!])`
-/

namespace A088997.P9686366949178941656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088997.P9686366949178941656

/-!
# A088998: Flip 6,9 primes.

The programs for A088998, there is no canonical definition to state claims against.
-/

/-! ## A088998.P14475972211401258660

`p?[gcd(n, A222251(n))*A222251(n)]`
-/

namespace A088998.P14475972211401258660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A222251 n) : ℤ) * A222251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088998.P14475972211401258660

/-! ## A088998.P61188249549307971

`p?[A088999(n+1)]`
-/

namespace A088998.P61188249549307971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088998.P61188249549307971

/-! ## A088998.P12733762558946323401

`filter[A088999(n+1), A010051(#)]`
-/

namespace A088998.P12733762558946323401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A088998.P12733762558946323401

/-! ## A088998.P1730126288020019009

`filter[A088999(n+1), A080339(#)]`
-/

namespace A088998.P1730126288020019009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A088998.P1730126288020019009

/-! ## A088998.P17726606929836032438

`filter[A088999(n+1), A080545(#)]`
-/

namespace A088998.P17726606929836032438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A088998.P17726606929836032438

/-!
# A088999: Flip 6,9 numbers: if number k contains decimal digit '6' or '9', then flip all occurrences of '6' to '9' and vice versa.

The programs for A088999, there is no canonical definition to state claims against.
-/

/-! ## A088999.P5160136305135236448

`A222251(comp[lcm(n, A222251(n))])`
-/

namespace A088999.P5160136305135236448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A222251 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A088999.P5160136305135236448

/-! ## A088999.P7185669206255479963

`A222251(lt[A063720(n), A006942(n)])`
-/

namespace A088999.P7185669206255479963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A088999.P7185669206255479963

/-! ## A088999.P1888891535494166340

`A222251(lt[A004184(n), A222251(n)])`
-/

namespace A088999.P1888891535494166340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A088999.P1888891535494166340

/-! ## A088999.P16833849834430938171

`A084192(∑[n])-4*(n-2*or(1, n))`
-/

namespace A088999.P16833849834430938171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (∑ j ∈ Finset.range (n + 1), f1 j) - 4 * ((n : ℤ) - (2 * Nat.lor 1 n : ℤ))

end

end A088999.P16833849834430938171

/-! ## A088999.P11757990992272529647

`A115302(A088520(A092259(n+1)))-(n+1)`
-/

namespace A088999.P11757990992272529647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115302 (A088520 (A092259 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A088999.P11757990992272529647

