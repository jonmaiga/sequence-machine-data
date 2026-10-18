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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
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

/-!
# A220304: Majority value maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..1 n X 2 array.

The programs for A220304, there is no canonical definition to state claims against.
-/

/-! ## A220304.P2079938279455839392

`A220308(∑[n+1]+2)`
-/

namespace A220304.P2079938279455839392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220304.P2079938279455839392

/-! ## A220304.P531382186513994634

`record[C(A220308(n+2), A322231(n))]`
-/

namespace A220304.P531382186513994634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A220308 (n + 2)).toNat (A322231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220304.P531382186513994634

/-! ## A220304.P6672945929497426192

`A000027(A220308(∑[n+2]))`
-/

namespace A220304.P6672945929497426192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A220308 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A220304.P6672945929497426192

/-! ## A220304.P18234003286495419979

`record[A220308(A000096(∏{e}[n+1, #]))]`
-/

namespace A220304.P18234003286495419979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (A000096 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220304.P18234003286495419979

/-!
# A220305: Majority value maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX3 array.

The programs for A220305, there is no canonical definition to state claims against.
-/

/-! ## A220305.P14220563882227795978

`A220308(∑[n+2]+4)`
-/

namespace A220305.P14220563882227795978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220305.P14220563882227795978

/-! ## A220305.P15328310237602608696

`record[A220308(n+4)/A221035(n+1)]`
-/

namespace A220305.P15328310237602608696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220308 (n + 4) : ℚ) / (A221035 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220305.P15328310237602608696

/-! ## A220305.P10899275900735320139

`record[A220308(n+4)/A221499(n+1)]`
-/

namespace A220305.P10899275900735320139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220308 (n + 4) : ℚ) / (A221499 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220305.P10899275900735320139

/-! ## A220305.P10502690259730559643

`A220308(A167614(n+1))+A011731(n)`
-/

namespace A220305.P10502690259730559643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (A167614 (n + 1)).toNat + A011731 n

end

end A220305.P10502690259730559643

/-! ## A220305.P9100050573121246127

`A220308(A167614(n+1))+A025437(n)`
-/

namespace A220305.P9100050573121246127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (A167614 (n + 1)).toNat + A025437 n

end

end A220305.P9100050573121246127

/-!
# A220306: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX4 array.

The programs for A220306, there is no canonical definition to state claims against.
-/

/-! ## A220306.P3481182886423168107

`A220308(A141214(n)+7)`
-/

namespace A220306.P3481182886423168107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (A141214 n + 7).toNat

end

end A220306.P3481182886423168107

/-! ## A220306.P12972239192807955601

`A220308(A052905(n)+9)`
-/

namespace A220306.P12972239192807955601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (A052905 n + 9).toNat

end

end A220306.P12972239192807955601

/-! ## A220306.P4376554521136616947

`A220308(A055999(n)+10)`
-/

namespace A220306.P4376554521136616947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (A055999 n + 10).toNat

end

end A220306.P4376554521136616947

/-! ## A220306.P3162640736956698726

`A220308(eq[5, A066657(n)])`
-/

namespace A220306.P3162640736956698726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220306.P3162640736956698726

/-! ## A220306.P17941930879903662529

`A220308(A167614(n+2)+1)`
-/

namespace A220306.P17941930879903662529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (A167614 (n + 2) + 1).toNat

end

end A220306.P17941930879903662529

/-!
# A220307: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX5 array.

The programs for A220307, there is no canonical definition to state claims against.
-/

/-! ## A220307.P8525986390362843538

`A220308(Δ[A264443(n)])`
-/

namespace A220307.P8525986390362843538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (f1 (n + 1) - f1 n).toNat

end

end A220307.P8525986390362843538

/-! ## A220307.P5516493619280829666

`A220308(A374005(n+1))`
-/

namespace A220307.P5516493619280829666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (A374005 (n + 1)).toNat

end

end A220307.P5516493619280829666

/-! ## A220307.P6760651295095108620

`A220308(A046691(n+3))`
-/

namespace A220307.P6760651295095108620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (A046691 (n + 3)).toNat

end

end A220307.P6760651295095108620

/-!
# A220309: Majority value maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..3 n X 2 array.

The programs for A220309, there is no canonical definition to state claims against.
-/

/-! ## A220309.P1067663228129590770

`A220313(∑[n+1]+2)`
-/

namespace A220309.P1067663228129590770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220313 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220309.P1067663228129590770

/-! ## A220309.P4811571296011243334

`A220369(∑[n+1]+2)`
-/

namespace A220309.P4811571296011243334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220309.P4811571296011243334

/-! ## A220309.P18143471014662195909

`record[A220313(A133263(val(n+1, 2)+1))]`
-/

namespace A220309.P18143471014662195909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220313 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220309.P18143471014662195909

/-! ## A220309.P2302328294630877938

`record[A220313(n+2)/A302367(n+1)]`
-/

namespace A220309.P2302328294630877938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220313 (n + 2) : ℚ) / (A302367 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220309.P2302328294630877938

/-! ## A220309.P7088001564462375111

`record[A220369(n+2)/A344479(n+1)]`
-/

namespace A220309.P7088001564462375111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220369 (n + 2) : ℚ) / (A344479 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220309.P7088001564462375111

/-!
# A220310: Majority value maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX3 array.

The programs for A220310, there is no canonical definition to state claims against.
-/

/-! ## A220310.P430512026397756871

`A220313(∑[n+2]+4)`
-/

namespace A220310.P430512026397756871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220313 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220310.P430512026397756871

/-! ## A220310.P240281887880305591

`record[A220313(n+4)/A049029(n+1)]`
-/

namespace A220310.P240281887880305591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220313 (n + 4) : ℚ) / (A049029 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220310.P240281887880305591

/-! ## A220310.P4958475778854663898

`A220313(A167614(n+1))+A025442(n)`
-/

namespace A220310.P4958475778854663898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220313 (A167614 (n + 1)).toNat + A025442 n

end

end A220310.P4958475778854663898

/-! ## A220310.P5353885420734911874

`A220313(A167614(n+1))+A025443(n)`
-/

namespace A220310.P5353885420734911874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220313 (A167614 (n + 1)).toNat + A025443 n

end

end A220310.P5353885420734911874

/-! ## A220310.P15153575786944694070

`A220313(A167614(n+1))+A025465(n)`
-/

namespace A220310.P15153575786944694070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220313 (A167614 (n + 1)).toNat + A025465 n

end

end A220310.P15153575786944694070

/-!
# A220311: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A220311, there is no canonical definition to state claims against.
-/

/-! ## A220311.P13492683594516492929

`A220313(∑[n+3]+7)`
-/

namespace A220311.P13492683594516492929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220313 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220311.P13492683594516492929

/-!
# A220312: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A220312, there is no canonical definition to state claims against.
-/

/-! ## A220312.P3808904467545274700

`A220313(∑[n+5]+6)`
-/

namespace A220312.P3808904467545274700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220313 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A220312.P3808904467545274700

/-!
# A220313: T(n,k)=Majority value maps: number of nXk binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nXk array.

The programs for A220313, there is no canonical definition to state claims against.
-/

/-! ## A220313.P16874224348288141676

`A220369(A000005(2^n))`
-/

namespace A220313.P16874224348288141676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A000005 (2 ^ n)).toNat

end

end A220313.P16874224348288141676

/-! ## A220313.P10363224654565492643

`A002265(4*A220369(n+1))`
-/

namespace A220313.P10363224654565492643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * A220369 (n + 1)).toNat

end

end A220313.P10363224654565492643

/-! ## A220313.P1267125941928722808

`A026922(4*A220369(n+1))`
-/

namespace A220313.P1267125941928722808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (4 * A220369 (n + 1)).toNat

end

end A220313.P1267125941928722808

/-! ## A220313.P1871699261472975349

`A060819(4*A220369(n+1))`
-/

namespace A220313.P1871699261472975349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (4 * A220369 (n + 1)).toNat

end

end A220313.P1871699261472975349

/-! ## A220313.P14856668594315064523

`filter[A220369(n+1), A380510(#)]`
-/

namespace A220313.P14856668594315064523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380510 (f1 j).toNat = 1) n)

end

end A220313.P14856668594315064523

/-!
# A220314: binomial(2n,n) - (2n)^pi(n), where pi(n) is the number of primes <= n.

The programs for A220314, the canonical program `A220314.P12330248929035524189` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220314 has offset 1).

The definition of A220314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A220314.P12330248929035524189

`A000984(n+1)-(2*(n+1))^A000720(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A220314

/-- `A000984(n+1)-(2*(n+1))^A000720(n+1)` -/
def P12330248929035524189.Spec : Prop :=
  ∀ n, P12330248929035524189.a n = (A220314 (n + 1) : ℚ)

end A220314

/-!
# A220316: Equals two maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..2 nX2 array.

The programs for A220316, there is no canonical definition to state claims against.
-/

/-! ## A220316.P17296515059634686063

`A220319(∑[n+1]+2)`
-/

namespace A220316.P17296515059634686063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220319 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220316.P17296515059634686063

/-! ## A220316.P9690803445083398152

`record[A010054(n)*A220319(n+2)]`
-/

namespace A220316.P9690803445083398152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220316.P9690803445083398152

/-! ## A220316.P13857134370775452908

`record[A220319(n+1)/A271206(n)]`
-/

namespace A220316.P13857134370775452908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220319 (n + 1) : ℚ) / (A271206 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220316.P13857134370775452908

/-! ## A220316.P8612857013803713904

`record[A220319(n+1)/A334257(n)]`
-/

namespace A220316.P8612857013803713904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220319 (n + 1) : ℚ) / (A334257 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220316.P8612857013803713904

/-!
# A220317: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..2 nX3 array.

The programs for A220317, there is no canonical definition to state claims against.
-/

/-! ## A220317.P11846103065876576422

`A220319(∑[n+2]+4)`
-/

namespace A220317.P11846103065876576422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220319 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220317.P11846103065876576422

/-! ## A220317.P8111493289158249066

`record[A220319(n+4)/A008275(n+1)]`
-/

namespace A220317.P8111493289158249066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220319 (n + 4) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220317.P8111493289158249066

/-! ## A220317.P225181854038421808

`record[A220319(n+4)/A221736(n+1)]`
-/

namespace A220317.P225181854038421808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220319 (n + 4) : ℚ) / (A221736 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220317.P225181854038421808

/-!
# A220318: Equals two maps: number of n X 4 binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..2 n X 4 array.

The programs for A220318, there is no canonical definition to state claims against.
-/

/-! ## A220318.P8978218956245171633

`A220319(C(n+4, 2)+4)`
-/

namespace A220318.P8978218956245171633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220319 (Nat.choose (n + 4) 2 + 4)

end

end A220318.P8978218956245171633

/-! ## A220318.P4151985434321544133

`A220319(record[a(n-1)+n])` with `a(0)=10, a(1)=5`
-/

namespace A220318.P4151985434321544133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 5] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220319 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A220318.P4151985434321544133

/-!
# A220319: T(n,k)=Equals two maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..2 nXk array.

The programs for A220319, there is no canonical definition to state claims against.
-/

/-! ## A220319.P15848610837086388674

`A220342(n+1)-A124768(A281888(n+1))`
-/

namespace A220319.P15848610837086388674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220342 (n + 1) - A124768 (A281888 (n + 1)).toNat

end

end A220319.P15848610837086388674

/-! ## A220319.P11905636237730534936

`A220342(n+1)-A067898(A000072(n))`
-/

namespace A220319.P11905636237730534936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220342 (n + 1) - A067898 (A000072 n).toNat

end

end A220319.P11905636237730534936

/-! ## A220319.P16753116276260385852

`A220342(n+1)-A010894(A252836(n+1))`
-/

namespace A220319.P16753116276260385852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220342 (n + 1) - A010894 ((A252836 (n + 1)).toNat + 21)

end

end A220319.P16753116276260385852

/-! ## A220319.P8543380287338519255

`A220342(n+1)-A067898(A350249(n))`
-/

namespace A220319.P8543380287338519255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220342 (n + 1) - A067898 (A350249 n).toNat

end

end A220319.P8543380287338519255

/-! ## A220319.P18311079998291155456

`A220342(n+1)-A124768(A010894(3*n+4))`
-/

namespace A220319.P18311079998291155456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220342 (n + 1) - A124768 (A010894 (3 * n + 4 + 21)).toNat

end

end A220319.P18311079998291155456

/-!
# A220320: Majority value maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..3 nX3 array.

The programs for A220320, there is no canonical definition to state claims against.
-/

/-! ## A220320.P16609229652260267525

`A220323(∑[n+2]+4)`
-/

namespace A220320.P16609229652260267525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220320.P16609229652260267525

/-! ## A220320.P13368351671897370849

`A220323(A034856(n+1)+5)%((10*n+5)^5)`
-/

namespace A220320.P13368351671897370849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220323 (A034856 (n + 1) + 5).toNat) ((10 * n + 5) ^ 5 : ℤ)

end

end A220320.P13368351671897370849

/-! ## A220320.P1309547355727081219

`A220323(A167614(n+1))+A011736(n)`
-/

namespace A220320.P1309547355727081219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (A167614 (n + 1)).toNat + A011736 n

end

end A220320.P1309547355727081219

/-! ## A220320.P3351602601597033539

`A220323(A167614(n+1))+A025443(n)`
-/

namespace A220320.P3351602601597033539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (A167614 (n + 1)).toNat + A025443 n

end

end A220320.P3351602601597033539

/-! ## A220320.P12610032972508200394

`A220323(A167614(n+1))+A025465(n)`
-/

namespace A220320.P12610032972508200394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (A167614 (n + 1)).toNat + A025465 n

end

end A220320.P12610032972508200394

/-!
# A220321: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..3 nX4 array.

The programs for A220321, there is no canonical definition to state claims against.
-/

/-! ## A220321.P3491433239645205504

`A220323(∑[n+3]+7)`
-/

namespace A220321.P3491433239645205504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220321.P3491433239645205504

/-! ## A220321.P17766778697247073994

`A007318(C(2, n))*A220323(A052905(n)+9)`
-/

namespace A220321.P17766778697247073994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A220323 (A052905 n + 9).toNat

end

end A220321.P17766778697247073994

/-! ## A220321.P12926601109423486322

`ceil(1/A007318(n))*A220323(A052905(n)+9)`
-/

namespace A220321.P12926601109423486322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A220323 (A052905 n + 9).toNat

end

end A220321.P12926601109423486322

/-! ## A220321.P1538035961628085351

`A220323(A052905(n)+9)/A007318(C(2, n+2))`
-/

namespace A220321.P1538035961628085351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220323 (A052905 n + 9).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A220321.P1538035961628085351

/-!
# A220322: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..3 nX5 array.

The programs for A220322, there is no canonical definition to state claims against.
-/

/-! ## A220322.P16597408630291695677

`A220323(A374005(n+1))`
-/

namespace A220322.P16597408630291695677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (A374005 (n + 1)).toNat

end

end A220322.P16597408630291695677

/-! ## A220322.P3036612374111315043

`A220323(A167499(n+3))`
-/

namespace A220322.P3036612374111315043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (A167499 (n + 3)).toNat

end

end A220322.P3036612374111315043

/-! ## A220322.P9271555893387895196

`A220323(A155212(n)+13)`
-/

namespace A220322.P9271555893387895196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220323 (A155212 n + 13).toNat

end

end A220322.P9271555893387895196

/-!
# A220323: T(n,k)=Majority value maps: number of nXk binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and vertical neighbors in a random 0..3 nXk array.

The programs for A220323, there is no canonical definition to state claims against.
-/

/-! ## A220323.P236269646485780987

`or(A185284(2*(n+1)), A220259(n+1))`
-/

namespace A220323.P236269646485780987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (2 * (n + 1))) (A220259 (n + 1))

end

end A220323.P236269646485780987

/-!
# A220324: Equals two maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 n X 3 array.

The programs for A220324, the canonical program `A220324.P6191242927477380117` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220324 has offset 1).

The definition of A220324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220324.P6191242927477380117

`7*a(n-1)-9*a(n-2)+3*a(n-3)+6*a(n-4)` with `a(0)=2, a(1)=16, a(2)=92, a(3)=508`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A220324

/-- `7*a(n-1)-9*a(n-2)+3*a(n-3)+6*a(n-4)` -/
def P6191242927477380117.Spec : Prop :=
  ∀ n, P6191242927477380117.a n = A220324 (n + 1)

theorem P6191242927477380117.correct : P6191242927477380117.Spec := by
  intro n
  simp only [A220324, Nat.add_sub_cancel]

end A220324

/-! ## A220324.P8161745951455815617

`A220328(∑[n+3]+1)`
-/

namespace A220324.P8161745951455815617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220324.P8161745951455815617

namespace A220324

/-- `A220328(∑[n+3]+1)` -/
def P8161745951455815617.Spec : Prop :=
  ∀ n, P8161745951455815617.a n = A220324 (n + 1)

end A220324

/-! ## A220324.P7693145121164032725

`record[A220328(A198464(n+1))]`
-/

namespace A220324.P7693145121164032725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220324.P7693145121164032725

namespace A220324

/-- `record[A220328(A198464(n+1))]` -/
def P7693145121164032725.Spec : Prop :=
  ∀ n, P7693145121164032725.a n = A220324 (n + 1)

end A220324

/-! ## A220324.P14345278622806399064

`lcm(2, A220328(A101881(2*(n+1))))`
-/

namespace A220324.P14345278622806399064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A220328 (A101881 (2 * (n + 1))).toNat)

end

end A220324.P14345278622806399064

namespace A220324

/-- `lcm(2, A220328(A101881(2*(n+1))))` -/
def P14345278622806399064.Spec : Prop :=
  ∀ n, (P14345278622806399064.a n : ℤ) = A220324 (n + 1)

end A220324

/-! ## A220324.P14942031005594152843

`A220328(A101881(2*(n+1)))+A070202(n+1)`
-/

namespace A220324.P14942031005594152843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A101881 (2 * (n + 1))).toNat + A070202 (n + 1)

end

end A220324.P14942031005594152843

namespace A220324

/-- `A220328(A101881(2*(n+1)))+A070202(n+1)` -/
def P14942031005594152843.Spec : Prop :=
  ∀ n, P14942031005594152843.a n = A220324 (n + 1)

end A220324

/-!
# A220325: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 nX4 array.

The programs for A220325, there is no canonical definition to state claims against.
-/

/-! ## A220325.P707757112953131131

`A220328(∑[n+4]+3)`
-/

namespace A220325.P707757112953131131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220325.P707757112953131131

/-!
# A220326: Equals two maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 nX5 array.

The programs for A220326, there is no canonical definition to state claims against.
-/

/-! ## A220326.P14081003886704711212

`A220328(∑[n+5]+6)`
-/

namespace A220326.P14081003886704711212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A220326.P14081003886704711212

/-! ## A220326.P16976502337301732938

`A173021(n)*A220328(Δ[A264443(n)])`
-/

namespace A220326.P16976502337301732938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173021 n * A220328 (f1 (n + 1) - f1 n).toNat

end

end A220326.P16976502337301732938

/-! ## A220326.P6833694886197701503

`A173021(n)*A220328(Δ[A023545(n+1)])`
-/

namespace A220326.P6833694886197701503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173021 n * A220328 (f1 (n + 1) - f1 n).toNat

end

end A220326.P6833694886197701503

/-!
# A220327: Equals two maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 nX6 array.

The programs for A220327, there is no canonical definition to state claims against.
-/

/-! ## A220327.P8464796466757135301

`A220328(∑[n+6]+10)`
-/

namespace A220327.P8464796466757135301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A220327.P8464796466757135301

/-!
# A220328: T(n,k)=Equals two maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 nXk array.

The programs for A220328, there is no canonical definition to state claims against.
-/

/-! ## A220328.P4497250981639075720

`A220935(n+1)-A010893(A094816(n))²`
-/

namespace A220328.P4497250981639075720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220935 (n + 1) - A010893 ((A094816 n).toNat + 13) ^ 2

end

end A220328.P4497250981639075720

/-! ## A220328.P8243806023988880871

`A221290(n+1)-A010893(A094816(n))²`
-/

namespace A220328.P8243806023988880871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (n + 1) - A010893 ((A094816 n).toNat + 13) ^ 2

end

end A220328.P8243806023988880871

/-! ## A220328.P1122462040094057272

`A221290(n+1)-A278988(A092921(n)^A003987(n)!)`
-/

namespace A220328.P1122462040094057272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (n + 1) - A278988 (A092921 n ^ Nat.factorial (A003987 n).toNat).toNat

end

end A220328.P1122462040094057272

/-! ## A220328.P6454778756134834406

`A194966(A220935(n+1))`
-/

namespace A220328.P6454778756134834406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194966 (A220935 (n + 1)).toNat

end

end A220328.P6454778756134834406

/-! ## A220328.P16022827585433461440

`A194966(A221290(n+1))`
-/

namespace A220328.P16022827585433461440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194966 (A221290 (n + 1)).toNat

end

end A220328.P16022827585433461440

/-!
# A220329: Equals two maps: number of 2Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 2Xn array.

The programs for A220329, there is no canonical definition to state claims against.
-/

/-! ## A220329.P231458240037942148

`A220328(∑[n+1]+2)`
-/

namespace A220329.P231458240037942148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220329.P231458240037942148

/-! ## A220329.P842466623898651055

`record[A010054(n)*A220328(n+2)]`
-/

namespace A220329.P842466623898651055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220329.P842466623898651055

/-! ## A220329.P3622179571428511339

`record[A220328(n+1)/A047921(n)]`
-/

namespace A220329.P3622179571428511339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220328 (n + 1) : ℚ) / (A047921 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220329.P3622179571428511339

/-! ## A220329.P6171075022633980535

`record[A220328(n+1)/A102405(n)]`
-/

namespace A220329.P6171075022633980535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220328 (n + 1) : ℚ) / (A102405 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220329.P6171075022633980535

/-! ## A220329.P245331144039707866

`record[gcd(A097230(n), A220328(n+1))]`
-/

namespace A220329.P245331144039707866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A220328 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220329.P245331144039707866

/-!
# A220330: Equals two maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 3Xn array.

The programs for A220330, there is no canonical definition to state claims against.
-/

/-! ## A220330.P989923246243905645

`A220328(∑[n+2]+4)`
-/

namespace A220330.P989923246243905645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220330.P989923246243905645

/-! ## A220330.P6449777347692741487

`A220328(A167614(n+1))^ceil(acot(n))`
-/

namespace A220330.P6449777347692741487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220328 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A220330.P6449777347692741487

/-! ## A220330.P8468895765121068794

`A220328(A167614(n+1))+A011731(n)`
-/

namespace A220330.P8468895765121068794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A167614 (n + 1)).toNat + A011731 n

end

end A220330.P8468895765121068794

/-! ## A220330.P17745468278936659574

`A220328(A167614(n+1))+A025437(n)`
-/

namespace A220330.P17745468278936659574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A167614 (n + 1)).toNat + A025437 n

end

end A220330.P17745468278936659574

/-! ## A220330.P9069562427268742133

`A220328(A167614(n+1))+A025439(n)`
-/

namespace A220330.P9069562427268742133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A167614 (n + 1)).toNat + A025439 n

end

end A220330.P9069562427268742133

/-!
# A220331: Equals two maps: number of 4 X n binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 4 X n array.

The programs for A220331, there is no canonical definition to state claims against.
-/

/-! ## A220331.P15111320300303433802

`A220328(A141214(n)+7)`
-/

namespace A220331.P15111320300303433802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A141214 n + 7).toNat

end

end A220331.P15111320300303433802

/-! ## A220331.P836546111423305071

`A220328(A052905(n)+9)`
-/

namespace A220331.P836546111423305071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A052905 n + 9).toNat

end

end A220331.P836546111423305071

/-! ## A220331.P11451623428339366850

`A220328(A055999(n)+10)`
-/

namespace A220331.P11451623428339366850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A055999 n + 10).toNat

end

end A220331.P11451623428339366850

/-! ## A220331.P16881044121386738003

`A220328(eq[5, A066657(n)])`
-/

namespace A220331.P16881044121386738003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220331.P16881044121386738003

/-! ## A220331.P143684707237377709

`A220328(A167614(n+2)+1)`
-/

namespace A220331.P143684707237377709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A167614 (n + 2) + 1).toNat

end

end A220331.P143684707237377709

/-!
# A220332: Equals two maps: number of 5Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 5Xn array.

The programs for A220332, there is no canonical definition to state claims against.
-/

/-! ## A220332.P8356040261704032149

`A220328(A167499(n+3))`
-/

namespace A220332.P8356040261704032149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A167499 (n + 3)).toNat

end

end A220332.P8356040261704032149

/-! ## A220332.P8269691902619902184

`A220328(A155212(n)+13)`
-/

namespace A220332.P8269691902619902184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A155212 n + 13).toNat

end

end A220332.P8269691902619902184

/-! ## A220332.P10295272935694713541

`A220328(A056000(n)+15)`
-/

namespace A220332.P10295272935694713541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A056000 n + 15).toNat

end

end A220332.P10295272935694713541

/-!
# A220333: Equals two maps: number of 6Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 6Xn array.

The programs for A220333, there is no canonical definition to state claims against.
-/

/-! ## A220333.P12204630438663471032

`A220328(A166136(n+4))`
-/

namespace A220333.P12204630438663471032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A166136 (n + 4)).toNat

end

end A220333.P12204630438663471032

/-!
# A220334: Equals two maps: number of 7Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..1 7Xn array.

The programs for A220334, there is no canonical definition to state claims against.
-/

/-! ## A220334.P16032077175777780435

`A220328(A167487(n+5))`
-/

namespace A220334.P16032077175777780435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220328 (A167487 (n + 5)).toNat

end

end A220334.P16032077175777780435

/-!
# A220335: A modified Engel expansion for sqrt(3) - 1.

The programs for A220335, there is no canonical definition to state claims against.
-/

/-! ## A220335.P8994625143868706810

`a(A002812(n-1))²` with `a(0)=2, a(1)=3, a(2)=4, a(3)=2, a(4)=8, a(5)=14, a(6)=2, a(7)=98, a(8)=194`
-/

namespace A220335.P8994625143868706810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 2, 8, 14, 2, 98, 194] fun n a =>
  a (A002812 (n - 1)).toNat ^ 2

end

end A220335.P8994625143868706810

/-!
# A220339: Equals two maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..3 nX2 array.

The programs for A220339, there is no canonical definition to state claims against.
-/

/-! ## A220339.P13274792894835040960

`A220342(∑[n+1]+2)`
-/

namespace A220339.P13274792894835040960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220342 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220339.P13274792894835040960

/-! ## A220339.P12601736491302693361

`record[A220342(n+1)/A271206(n)]`
-/

namespace A220339.P12601736491302693361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220342 (n + 1) : ℚ) / (A271206 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220339.P12601736491302693361

/-! ## A220339.P14968590269898804911

`record[A220342(n+1)/A334257(n)]`
-/

namespace A220339.P14968590269898804911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220342 (n + 1) : ℚ) / (A334257 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220339.P14968590269898804911

/-! ## A220339.P14687257436880155067

`record[A220342(n+2)/A108556(n)]`
-/

namespace A220339.P14687257436880155067
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220342 (n + 2) : ℚ) / (A108556 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220339.P14687257436880155067

/-!
# A220340: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..3 nX3 array.

The programs for A220340, there is no canonical definition to state claims against.
-/

/-! ## A220340.P6816453420200858932

`A220342(∑[n+2]+4)`
-/

namespace A220340.P6816453420200858932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220342 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220340.P6816453420200858932

/-! ## A220340.P1628637997934891102

`A220342(A167614(n+1))+A006927(n)`
-/

namespace A220340.P1628637997934891102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220342 (A167614 (n + 1)).toNat + A006927 n

end

end A220340.P1628637997934891102

/-! ## A220340.P16628919978598005891

`A220342(A167614(n+1))+A025443(n)`
-/

namespace A220340.P16628919978598005891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220342 (A167614 (n + 1)).toNat + A025443 n

end

end A220340.P16628919978598005891

/-!
# A220341: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..3 nX4 array.

The programs for A220341, there is no canonical definition to state claims against.
-/

/-! ## A220341.P10037190469558284750

`A220342(A020752(n+1))`
-/

namespace A220341.P10037190469558284750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220342 (A020752 (n + 1)).toNat

end

end A220341.P10037190469558284750

/-!
# A220342: T(n,k)=Equals two maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly two of their king-move neighbors in a random 0..3 nXk array.

The programs for A220342, there is no canonical definition to state claims against.
-/

/-! ## A220342.P9925009685976709005

`A220319(n+1)+A124768(A281888(n+1))`
-/

namespace A220342.P9925009685976709005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220319 (n + 1) + A124768 (A281888 (n + 1)).toNat

end

end A220342.P9925009685976709005

/-! ## A220342.P13286156841087851233

`A220319(n+1)+A067898(A000072(n))`
-/

namespace A220342.P13286156841087851233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220319 (n + 1) + A067898 (A000072 n).toNat

end

end A220342.P13286156841087851233

/-! ## A220342.P16343218856431914519

`or(A067898(A166444(n)), A220319(n+1))`
-/

namespace A220342.P16343218856431914519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067898 (A166444 n).toNat) (A220319 (n + 1))

end

end A220342.P16343218856431914519

/-! ## A220342.P8378594602210854776

`A220319(n+1)+A010894(A252836(n+1))`
-/

namespace A220342.P8378594602210854776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220319 (n + 1) + A010894 ((A252836 (n + 1)).toNat + 21)

end

end A220342.P8378594602210854776

/-! ## A220342.P12246743362588372537

`or(A220319(n+1), A322308(A322982(n+1)))`
-/

namespace A220342.P12246743362588372537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220319 (n + 1)) (A322308 (A322982 (n + 1)).toNat)

end

end A220342.P12246743362588372537

/-!
# A220343: The number of decades below 10^n whose semiprime pattern is the same as semiprime pattern in the previous decade.

The programs for A220343, there is no canonical definition to state claims against.
-/

/-! ## A220343.P985515628858262749

`A366908(A337564(n))-1`
-/

namespace A220343.P985515628858262749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366908 (A337564 n).toNat - 1

end

end A220343.P985515628858262749

/-!
# A220345: Ratio of Jordan's totient to Carmichael's lambda function: a(n) = A007434(n) / A002322(n).

The programs for A220345, there is no canonical definition to state claims against.
-/

/-! ## A220345.P2517553554602497387

`A034380(n+1)*A001615(n+1)`
-/

namespace A220345.P2517553554602497387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1) * A001615 (n + 1)

end

end A220345.P2517553554602497387

/-! ## A220345.P13777448642672118824

`A007434(n+1)/A002322(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220345.P13777448642672118824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ)

end

end A220345.P13777448642672118824

/-! ## A220345.P17707905246427936926

`A007434(n+1)/(A263027(n+1)-1)`
-/

namespace A220345.P17707905246427936926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A263027 (n + 1) - 1 : ℚ)

end

end A220345.P17707905246427936926

/-! ## A220345.P671309387287667320

`∑{d}[n+1, A063659(#)]*A034380(n+1)`
-/

namespace A220345.P671309387287667320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A063659 d) * A034380 (n + 1)

end

end A220345.P671309387287667320

/-! ## A220345.P5744788191291005327

`(n+1)/∏{p}[n+1, #]*A000203(∏{p}[n+1, #])*A034380(n+1)`
-/

namespace A220345.P5744788191291005327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A000203 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ) * (A034380 (n + 1) : ℚ)

end

end A220345.P5744788191291005327

/-! ## A220345.P16529996829059213835

`(n+1)/∏{p}[n+1, #]*A034448(∏{p}[n+1, #])*A034380(n+1)`
-/

namespace A220345.P16529996829059213835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A034448 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ) * (A034380 (n + 1) : ℚ)

end

end A220345.P16529996829059213835

/-! ## A220345.P6058508928150059279

`A000010(n+1)*A001615(n+1)/A002322(n+1)`
-/

namespace A220345.P6058508928150059279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A001615 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ)

end

end A220345.P6058508928150059279

/-! ## A220345.P16504975089987489716

`A000252(n+1)/(A002322(n+1)*A002618(n+1))`
-/

namespace A220345.P16504975089987489716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A002322 (n + 1) * A002618 (n + 1) : ℚ)

end

end A220345.P16504975089987489716

/-! ## A220345.P13866160888266040089

`A007434(n+1)/A000010(n+1)*A034380(n+1)`
-/

namespace A220345.P13866160888266040089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A034380 (n + 1) : ℚ)

end

end A220345.P13866160888266040089

/-! ## A220345.P16039328576308602642

`(n+1)/∏{p}[n+1, #]*A000203(A007947(n+1))*A034380(n+1)`
-/

namespace A220345.P16039328576308602642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A000203 (A007947 (n + 1)).toNat : ℚ) * (A034380 (n + 1) : ℚ)

end

end A220345.P16039328576308602642

/-!
# A220346: Beginning with a(1)=2, a(n+1) is the a(n)-th palindromic prime.

The programs for A220346, there is no canonical definition to state claims against.
-/

/-! ## A220346.P11697607227641398673

`A002385(a(n-1))` with `a(0)=2`
-/

namespace A220346.P11697607227641398673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A002385 (a (n - 1)).toNat

end

end A220346.P11697607227641398673

/-!
# A220347: Permutation of natural numbers: a(1) = 1, a(triangular(n)) = (2*a(n))-1, a(nontriangular(n)) = 2*n, where triangular = A000217, nontriangular = A014132.

The programs for A220347, there is no canonical definition to state claims against.
-/

/-! ## A220347.P17480257973355875206

`A254104(A191450(n+1))%A234739(n+1)`
-/

namespace A220347.P17480257973355875206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254104 (A191450 (n + 1)).toNat) (A234739 (n + 1))

end

end A220347.P17480257973355875206

/-! ## A220347.P5394162270225693446

`A093178(A152036(n))*A254104(A191450(n+1))`
-/

namespace A220347.P5394162270225693446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A152036 n).toNat * A254104 (A191450 (n + 1)).toNat

end

end A220347.P5394162270225693446

/-! ## A220347.P8646763589778879835

`A254104(A191450(n+1))%A002148(A232697(n))`
-/

namespace A220347.P8646763589778879835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254104 (A191450 (n + 1)).toNat) (A002148 (A232697 n).toNat)

end

end A220347.P8646763589778879835

/-! ## A220347.P15896028484060064107

`A175948(A054582(n))`
-/

namespace A220347.P15896028484060064107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (A054582 n).toNat

end

end A220347.P15896028484060064107

/-! ## A220347.P2111999720325306759

`A233277(A232751(A232752(A254105(n+1))))`
-/

namespace A220347.P2111999720325306759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A232751 (A232752 (A254105 (n + 1)).toNat).toNat).toNat

end

end A220347.P2111999720325306759

/-!
# A220348: Index of row where n occurs in A183079.

The programs for A220348, the canonical program `A220348.P6667135359390539441` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220348 has offset 1).

The definition of A220348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220348.P3535223984450157462

`1+A029837(A220347(n+1))`
-/

namespace A220348.P3535223984450157462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A029837 (A220347 (n + 1)).toNat

end

end A220348.P3535223984450157462

namespace A220348

/-- `1+A029837(A220347(n+1))` -/
def P3535223984450157462.Spec : Prop :=
  ∀ n, P3535223984450157462.a n = A220348 (n + 1)

end A220348

/-! ## A220348.P6025725177542070602

`A070941(A220347(n+1)-1)`
-/

namespace A220348.P6025725177542070602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A220347 (n + 1) - 1).toNat

end

end A220348.P6025725177542070602

namespace A220348

/-- `A070941(A220347(n+1)-1)` -/
def P6025725177542070602.Spec : Prop :=
  ∀ n, P6025725177542070602.a n = A220348 (n + 1)

end A220348

/-! ## A220348.P6667135359390539441

`A193739(n)+a(A002262(n))` with `a(0)=1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A220348

/-- `A193739(n)+a(A002262(n))` -/
def P6667135359390539441.Spec : Prop :=
  ∀ n, P6667135359390539441.a n = A220348 (n + 1)

theorem P6667135359390539441.correct : P6667135359390539441.Spec := by
  intro n
  simp only [A220348, Nat.add_sub_cancel]

end A220348

/-! ## A220348.P3202648434923128624

`A193739(n)+a(n-A057944(n))` with `a(0)=1`
-/

namespace A220348.P3202648434923128624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193739 n + a ((n : ℤ) - A057944 n).toNat

end

end A220348.P3202648434923128624

namespace A220348

/-- `A193739(n)+a(n-A057944(n))` -/
def P3202648434923128624.Spec : Prop :=
  ∀ n, P3202648434923128624.a n = A220348 (n + 1)

end A220348

/-! ## A220348.P39380636373101325

`A193739(n)+a(A002260(n+1)-1)` with `a(0)=1`
-/

namespace A220348.P39380636373101325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193739 n + a (A002260 (n + 1) - 1).toNat

end

end A220348.P39380636373101325

namespace A220348

/-- `A193739(n)+a(A002260(n+1)-1)` -/
def P39380636373101325.Spec : Prop :=
  ∀ n, P39380636373101325.a n = A220348 (n + 1)

end A220348

/-! ## A220348.P10659790250886596438

`a(A002262(n))+A123578(n)-A002262(n)` with `a(0)=1`
-/

namespace A220348.P10659790250886596438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A002262 n).toNat + (A123578 n - A002262 n)

end

end A220348.P10659790250886596438

namespace A220348

/-- `a(A002262(n))+A123578(n)-A002262(n)` -/
def P10659790250886596438.Spec : Prop :=
  ∀ n, P10659790250886596438.a n = A220348 (n + 1)

end A220348

/-! ## A220348.P9000448834856068319

`A193739(n)+a(A001222(A059268(n)))` with `a(0)=1`
-/

namespace A220348.P9000448834856068319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193739 n + a (A001222 (A059268 n).toNat).toNat

end

end A220348.P9000448834856068319

namespace A220348

/-- `A193739(n)+a(A001222(A059268(n)))` -/
def P9000448834856068319.Spec : Prop :=
  ∀ n, P9000448834856068319.a n = A220348 (n + 1)

end A220348

/-! ## A220348.P8168963745820560486

`A007456(2*A220347(n+1))`
-/

namespace A220348.P8168963745820560486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (2 * A220347 (n + 1)).toNat

end

end A220348.P8168963745820560486

namespace A220348

/-- `A007456(2*A220347(n+1))` -/
def P8168963745820560486.Spec : Prop :=
  ∀ n, P8168963745820560486.a n = A220348 (n + 1)

end A220348

/-! ## A220348.P15289713340822768556

`A070941(A364885(n))`
-/

namespace A220348.P15289713340822768556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A364885 n).toNat

end

end A220348.P15289713340822768556

namespace A220348

/-- `A070941(A364885(n))` -/
def P15289713340822768556.Spec : Prop :=
  ∀ n, P15289713340822768556.a n = A220348 (n + 1)

end A220348

/-!
# A220352: G.f.: Sum_{n>=0} ((1+x)^n - 1)^n / (1+x)^(n^2).

The programs for A220352, there is no canonical definition to state claims against.
-/

/-! ## A220352.P8254451912506549842

`A222254(A125222(n))`
-/

namespace A220352.P8254451912506549842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A125222 n).toNat

end

end A220352.P8254451912506549842

/-! ## A220352.P3461801270033290057

`A337618(A000475(n+4))`
-/

namespace A220352.P3461801270033290057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337618 (A000475 (n + 4)).toNat

end

end A220352.P3461801270033290057

/-!
# A220353: G.f.: Sum_{n>=0} (1 - (1-x)^n)^n.

The programs for A220353, there is no canonical definition to state claims against.
-/

/-! ## A220353.P14189658585385484105

`A008621(A355378(n)+A000225(n))`
-/

namespace A220353.P14189658585385484105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A355378 n + A000225 n).toNat

end

end A220353.P14189658585385484105

/-! ## A220353.P7497392559157659057

`A004525(A302608(n)+A293192(n))`
-/

namespace A220353.P7497392559157659057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A302608 n + A293192 n).toNat

end

end A220353.P7497392559157659057

/-!
# A220354: Irregular triangle T(n,k), read by rows; row n gives coefficients in expansion of P_n(x), which is defined by: P_0(x) = 1, P_n(x) = P_(n-1)(x)+x if n odd, P_n(x) = P_(n-1)(x)*x if n even.

The programs for A220354, there is no canonical definition to state claims against.
-/

/-! ## A220354.P4575393342164070338

`C(A334540(n+1), Δ[A285524(4*(n+1))])`
-/

namespace A220354.P4575393342164070338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334540 (n + 1)).toNat (f1 (n + 1) - f1 n).toNat

end

end A220354.P4575393342164070338

/-! ## A220354.P3510576926039341792

`A035172(A000118(n)*A310085(n))`
-/

namespace A220354.P3510576926039341792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (A000118 n * A310085 n).toNat

end

end A220354.P3510576926039341792

/-! ## A220354.P1410436143991057371

`A035172(lcm(A000118(n), A310085(n)))`
-/

namespace A220354.P1410436143991057371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (Int.lcm (A000118 n) (A310085 n))

end

end A220354.P1410436143991057371

/-! ## A220354.P2483932178443197468

`A035172(A097706((n+1)²)*A310085(n))`
-/

namespace A220354.P2483932178443197468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (A097706 ((n + 1) ^ 2) * A310085 n).toNat

end

end A220354.P2483932178443197468

/-! ## A220354.P11181474455586931371

`A035172(A001105(A007306(n))*A310085(n))`
-/

namespace A220354.P11181474455586931371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (A001105 (A007306 n).toNat * A310085 n).toNat

end

end A220354.P11181474455586931371

/-!
# A220355: Numbers n such that n + n# / n is prime, where n# = product of all primes <= n.

The programs for A220355, there is no canonical definition to state claims against.
-/

/-! ## A220355.P5994651959983259029

`eq[A001222(A275870(n+4)), A152198(n+1)]`
-/

namespace A220355.P5994651959983259029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275870 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220355.P5994651959983259029

/-!
# A220356: Majority value maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..3 nX3 array.

The programs for A220356, there is no canonical definition to state claims against.
-/

/-! ## A220356.P18147823757037584751

`A220358(∑[n+2]+4)`
-/

namespace A220356.P18147823757037584751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220358 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220356.P18147823757037584751

/-! ## A220356.P15181032324337332126

`record[A220358(A139372(2*(n+2)))]`
-/

namespace A220356.P15181032324337332126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220358 (A139372 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220356.P15181032324337332126

/-! ## A220356.P1995019223433088898

`record[gcd(A220358(n+4), A278482(n))]`
-/

namespace A220356.P1995019223433088898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220358 (n + 4)) (A278482 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220356.P1995019223433088898

/-!
# A220357: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..3 nX4 array.

The programs for A220357, there is no canonical definition to state claims against.
-/

/-! ## A220357.P3610137840759297680

`A220358(A020752(n+1))`
-/

namespace A220357.P3610137840759297680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220358 (A020752 (n + 1)).toNat

end

end A220357.P3610137840759297680

/-! ## A220357.P5001602797338243243

`A220358(A374004(n+1))`
-/

namespace A220357.P5001602797338243243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220358 (A374004 (n + 1)).toNat

end

end A220357.P5001602797338243243

/-!
# A220360: a(n) = Fibonacci(n-1) * Fibonacci(n+1) * Fibonacci(n+2).

The programs for A220360, the canonical program `A220360.P11748173510584823602` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220360 has offset 1).

The definition of A220360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220360.P11748173510584823602

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=15, a(3)=80`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A220360

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P11748173510584823602.Spec : Prop :=
  ∀ n, P11748173510584823602.a n = A220360 (n + 1)

theorem P11748173510584823602.correct : P11748173510584823602.Spec := by
  intro n
  simp only [A220360, Nat.add_sub_cancel]

end A220360

/-! ## A220360.P5090383180145296176

`A020695(n)*A059929(n)`
-/

namespace A220360.P5090383180145296176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A059929 n

end

end A220360.P5090383180145296176

namespace A220360

/-- `A020695(n)*A059929(n)` -/
def P5090383180145296176.Spec : Prop :=
  ∀ n, P5090383180145296176.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P11401738668835389741

`A059929(n)*A071679(n+1)`
-/

namespace A220360.P11401738668835389741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n * A071679 (n + 1)

end

end A220360.P11401738668835389741

namespace A220360

/-- `A059929(n)*A071679(n+1)` -/
def P11401738668835389741.Spec : Prop :=
  ∀ n, P11401738668835389741.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P2547293838940089728

`A000045(n)*A001654(n+2)`
-/

namespace A220360.P2547293838940089728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001654 (n + 2)

end

end A220360.P2547293838940089728

namespace A220360

/-- `A000045(n)*A001654(n+2)` -/
def P2547293838940089728.Spec : Prop :=
  ∀ n, P2547293838940089728.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P3310302620303394972

`(A208176(n)-1)*A020695(n)`
-/

namespace A220360.P3310302620303394972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A208176 n - 1) * A020695 n

end

end A220360.P3310302620303394972

namespace A220360

/-- `(A208176(n)-1)*A020695(n)` -/
def P3310302620303394972.Spec : Prop :=
  ∀ n, P3310302620303394972.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P3714916781733545552

`A000045(n+3)*A059929(n)`
-/

namespace A220360.P3714916781733545552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) * A059929 n

end

end A220360.P3714916781733545552

namespace A220360

/-- `A000045(n+3)*A059929(n)` -/
def P3714916781733545552.Spec : Prop :=
  ∀ n, P3714916781733545552.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P8014934791750267050

`Δ[A059840(n+1)]*A020695(n)`
-/

namespace A220360.P8014934791750267050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020695 n

end

end A220360.P8014934791750267050

namespace A220360

/-- `Δ[A059840(n+1)]*A020695(n)` -/
def P8014934791750267050.Spec : Prop :=
  ∀ n, P8014934791750267050.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P1245566448646166841

`round(ϕ*A001654(n))*A020695(n)`
-/

namespace A220360.P1245566448646166841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A001654 n : ℝ)) * A020695 n

end

end A220360.P1245566448646166841

namespace A220360

/-- `round(ϕ*A001654(n))*A020695(n)` -/
def P1245566448646166841.Spec : Prop :=
  ∀ n, P1245566448646166841.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P14684576367449088204

`A220363(n+1)+A066258(n+1)`
-/

namespace A220360.P14684576367449088204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220363 (n + 1) + A066258 (n + 1)

end

end A220360.P14684576367449088204

namespace A220360

/-- `A220363(n+1)+A066258(n+1)` -/
def P14684576367449088204.Spec : Prop :=
  ∀ n, P14684576367449088204.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P14804222450881353321

`A056570(n+2)-A066258(n+1)`
-/

namespace A220360.P14804222450881353321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (n + 2) - A066258 (n + 1)

end

end A220360.P14804222450881353321

namespace A220360

/-- `A056570(n+2)-A066258(n+1)` -/
def P14804222450881353321.Spec : Prop :=
  ∀ n, P14804222450881353321.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P13917142648653273436

`A001654(n+2)*A212804(n+1)`
-/

namespace A220360.P13917142648653273436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) * A212804 (n + 1)

end

end A220360.P13917142648653273436

namespace A220360

/-- `A001654(n+2)*A212804(n+1)` -/
def P13917142648653273436.Spec : Prop :=
  ∀ n, P13917142648653273436.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P6912530041784931541

`(A001611(n)-1)*A001654(n+2)`
-/

namespace A220360.P6912530041784931541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A001654 (n + 2)

end

end A220360.P6912530041784931541

namespace A220360

/-- `(A001611(n)-1)*A001654(n+2)` -/
def P6912530041784931541.Spec : Prop :=
  ∀ n, P6912530041784931541.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P11566602164529080837

`A000045(n+2)*A226205(n+2)`
-/

namespace A220360.P11566602164529080837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A226205 (n + 2)

end

end A220360.P11566602164529080837

namespace A220360

/-- `A000045(n+2)*A226205(n+2)` -/
def P11566602164529080837.Spec : Prop :=
  ∀ n, P11566602164529080837.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P9813208113715055956

`A001654(n+2)*A053602(2*n)`
-/

namespace A220360.P9813208113715055956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) * A053602 (2 * n)

end

end A220360.P9813208113715055956

namespace A220360

/-- `A001654(n+2)*A053602(2*n)` -/
def P9813208113715055956.Spec : Prop :=
  ∀ n, P9813208113715055956.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P14086263615337722699

`A001654(n+2)*A103609(2*n)`
-/

namespace A220360.P14086263615337722699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) * A103609 (2 * n)

end

end A220360.P14086263615337722699

namespace A220360

/-- `A001654(n+2)*A103609(2*n)` -/
def P14086263615337722699.Spec : Prop :=
  ∀ n, P14086263615337722699.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P851749408091599796

`A000045(n+2)*A195971(2*n)`
-/

namespace A220360.P851749408091599796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A195971 (2 * n)

end

end A220360.P851749408091599796

namespace A220360

/-- `A000045(n+2)*A195971(2*n)` -/
def P851749408091599796.Spec : Prop :=
  ∀ n, P851749408091599796.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P7656600254484278956

`(A002062(n)-n)*A001654(n+2)`
-/

namespace A220360.P7656600254484278956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002062 n - (n : ℤ)) * A001654 (n + 2)

end

end A220360.P7656600254484278956

namespace A220360

/-- `(A002062(n)-n)*A001654(n+2)` -/
def P7656600254484278956.Spec : Prop :=
  ∀ n, P7656600254484278956.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P5633282065664846195

`(∑[A260259(n)]+1)*A000045(n+3)`
-/

namespace A220360.P5633282065664846195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A000045 (n + 3)

end

end A220360.P5633282065664846195

namespace A220360

/-- `(∑[A260259(n)]+1)*A000045(n+3)` -/
def P5633282065664846195.Spec : Prop :=
  ∀ n, P5633282065664846195.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P7320641346390136181

`(∑[A000045(n+2)²]+1)*A000045(n)`
-/

namespace A220360.P7320641346390136181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A000045 n

end

end A220360.P7320641346390136181

namespace A220360

/-- `(∑[A000045(n+2)²]+1)*A000045(n)` -/
def P7320641346390136181.Spec : Prop :=
  ∀ n, P7320641346390136181.a n = A220360 (n + 1)

end A220360

/-! ## A220360.P115422577070823206

`A000045(n+2)*Δ[A000045(n+1)²]`
-/

namespace A220360.P115422577070823206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * (f1 (n + 1) - f1 n)

end

end A220360.P115422577070823206

namespace A220360

/-- `A000045(n+2)*Δ[A000045(n+1)²]` -/
def P115422577070823206.Spec : Prop :=
  ∀ n, P115422577070823206.a n = A220360 (n + 1)

end A220360

/-!
# A220361: a(n) = Fibonacci(n)^3 + (-1)^n*Fibonacci(n-2).

The programs for A220361, the canonical program `A220361.P1904387931748688629` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220361 has offset 2).

The definition of A220361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220361.P1904387931748688629

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=28, a(3)=123`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A220361

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P1904387931748688629.Spec : Prop :=
  ∀ n, P1904387931748688629.a n = A220361 (n + 2)

theorem P1904387931748688629.correct : P1904387931748688629.Spec := by
  intro n
  simp only [A220361, Nat.add_sub_cancel]

end A220361

/-! ## A220361.P18029981856722234387

`A005968(n)+∑[A099014(n+1)]`
-/

namespace A220361.P18029981856722234387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005968 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220361.P18029981856722234387

namespace A220361

/-- `A005968(n)+∑[A099014(n+1)]` -/
def P18029981856722234387.Spec : Prop :=
  ∀ n, P18029981856722234387.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P16976006039928469678

`∑[A099014(n+1)+A056570(n)]`
-/

namespace A220361.P16976006039928469678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 (n + 1) + A056570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220361.P16976006039928469678

namespace A220361

/-- `∑[A099014(n+1)+A056570(n)]` -/
def P16976006039928469678.Spec : Prop :=
  ∀ n, P16976006039928469678.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P13487516271212858495

`A220362(n+1)+A066259(n+1)`
-/

namespace A220361.P13487516271212858495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220362 (n + 1) + A066259 (n + 1)

end

end A220361.P13487516271212858495

namespace A220361

/-- `A220362(n+1)+A066259(n+1)` -/
def P13487516271212858495.Spec : Prop :=
  ∀ n, P13487516271212858495.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P18001699439229985279

`A000045(n+1)*A260259(n+2)`
-/

namespace A220361.P18001699439229985279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A260259 (n + 2)

end

end A220361.P18001699439229985279

namespace A220361

/-- `A000045(n+1)*A260259(n+2)` -/
def P18001699439229985279.Spec : Prop :=
  ∀ n, P18001699439229985279.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P14633104077020931572

`A000045(n+1)*Δ[A059929(n+1)]`
-/

namespace A220361.P14633104077020931572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A220361.P14633104077020931572

namespace A220361

/-- `A000045(n+1)*Δ[A059929(n+1)]` -/
def P14633104077020931572.Spec : Prop :=
  ∀ n, P14633104077020931572.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P6132714544455965058

`Δ[A059929(n+1)]*A212804(n+2)`
-/

namespace A220361.P6132714544455965058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 (n + 2)

end

end A220361.P6132714544455965058

namespace A220361

/-- `Δ[A059929(n+1)]*A212804(n+2)` -/
def P6132714544455965058.Spec : Prop :=
  ∀ n, P6132714544455965058.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P13506555322636923304

`A000045(n+1)*Δ[Δ[A059840(n+2)]]`
-/

namespace A220361.P13506555322636923304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A220361.P13506555322636923304

namespace A220361

/-- `A000045(n+1)*Δ[Δ[A059840(n+2)]]` -/
def P13506555322636923304.Spec : Prop :=
  ∀ n, P13506555322636923304.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P17944389572068911592

`Δ[A070550(2*n+1)]*A000045(n+1)`
-/

namespace A220361.P17944389572068911592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 (n + 1)

end

end A220361.P17944389572068911592

namespace A220361

/-- `Δ[A070550(2*n+1)]*A000045(n+1)` -/
def P17944389572068911592.Spec : Prop :=
  ∀ n, P17944389572068911592.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P11002159006181781444

`A099014(n+1)+A220362(n+1)-A066258(n)`
-/

namespace A220361.P11002159006181781444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 (n + 1) + (A220362 (n + 1) - A066258 n)

end

end A220361.P11002159006181781444

namespace A220361

/-- `A099014(n+1)+A220362(n+1)-A066258(n)` -/
def P11002159006181781444.Spec : Prop :=
  ∀ n, P11002159006181781444.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P8896272555028428875

`(A236428(n+1)+A059929(n))*A000045(n+1)`
-/

namespace A220361.P8896272555028428875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236428 (n + 1) + A059929 n) * A000045 (n + 1)

end

end A220361.P8896272555028428875

namespace A220361

/-- `(A236428(n+1)+A059929(n))*A000045(n+1)` -/
def P8896272555028428875.Spec : Prop :=
  ∀ n, P8896272555028428875.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P7157352308247194373

`A056570(n+1)+A220362(n+1)+A220362(n+1)`
-/

namespace A220361.P7157352308247194373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (n + 1) + (A220362 (n + 1) + A220362 (n + 1))

end

end A220361.P7157352308247194373

namespace A220361

/-- `A056570(n+1)+A220362(n+1)+A220362(n+1)` -/
def P7157352308247194373.Spec : Prop :=
  ∀ n, P7157352308247194373.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P16599654987442844521

`A066259(n+1)+A066259(n+1)-A056570(n+1)`
-/

namespace A220361.P16599654987442844521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066259 (n + 1) + (A066259 (n + 1) - A056570 (n + 1))

end

end A220361.P16599654987442844521

namespace A220361

/-- `A066259(n+1)+A066259(n+1)-A056570(n+1)` -/
def P16599654987442844521.Spec : Prop :=
  ∀ n, P16599654987442844521.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P301789468235423164

`A056570(n+1)+A065563(n+1)-A226958(n+1)`
-/

namespace A220361.P301789468235423164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (n + 1) + (A065563 (n + 1) - A226958 (n + 1))

end

end A220361.P301789468235423164

namespace A220361

/-- `A056570(n+1)+A065563(n+1)-A226958(n+1)` -/
def P301789468235423164.Spec : Prop :=
  ∀ n, P301789468235423164.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P2045815701700527181

`A065563(n+1)+A220362(n+1)-A066258(n+1)`
-/

namespace A220361.P2045815701700527181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065563 (n + 1) + (A220362 (n + 1) - A066258 (n + 1))

end

end A220361.P2045815701700527181

namespace A220361

/-- `A065563(n+1)+A220362(n+1)-A066258(n+1)` -/
def P2045815701700527181.Spec : Prop :=
  ∀ n, P2045815701700527181.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P14382396990459784687

`(A192883(n+1)+A001654(n+1))*A000045(n+1)`
-/

namespace A220361.P14382396990459784687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192883 (n + 1) + A001654 (n + 1)) * A000045 (n + 1)

end

end A220361.P14382396990459784687

namespace A220361

/-- `(A192883(n+1)+A001654(n+1))*A000045(n+1)` -/
def P14382396990459784687.Spec : Prop :=
  ∀ n, P14382396990459784687.a n = A220361 (n + 2)

end A220361

/-! ## A220361.P3650291358435741430

`(A014742(n+1)-A226205(n+1))*A000045(n+1)`
-/

namespace A220361.P3650291358435741430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014742 (n + 1) - A226205 (n + 1)) * A000045 (n + 1)

end

end A220361.P3650291358435741430

namespace A220361

/-- `(A014742(n+1)-A226205(n+1))*A000045(n+1)` -/
def P3650291358435741430.Spec : Prop :=
  ∀ n, P3650291358435741430.a n = A220361 (n + 2)

end A220361

/-!
# A220362: a(n) = Fibonacci(n-1) * Fibonacci(n) * Fibonacci(n+2).

The programs for A220362, the canonical program `A220362.P16071027222450279655` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220362 has offset 1).

The definition of A220362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220362.P16071027222450279655

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=10, a(3)=48`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A220362

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P16071027222450279655.Spec : Prop :=
  ∀ n, P16071027222450279655.a n = A220362 (n + 1)

theorem P16071027222450279655.correct : P16071027222450279655.Spec := by
  intro n
  simp only [A220362, Nat.add_sub_cancel]

end A220362

/-! ## A220362.P16036964566582665642

`A001654(n)*A020695(n)`
-/

namespace A220362.P16036964566582665642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A020695 n

end

end A220362.P16036964566582665642

namespace A220362

/-- `A001654(n)*A020695(n)` -/
def P16036964566582665642.Spec : Prop :=
  ∀ n, P16036964566582665642.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P15507261421775331748

`Δ[A020701(n)]*A001654(n)`
-/

namespace A220362.P15507261421775331748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001654 n

end

end A220362.P15507261421775331748

namespace A220362

/-- `Δ[A020701(n)]*A001654(n)` -/
def P15507261421775331748.Spec : Prop :=
  ∀ n, P15507261421775331748.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P663376772989925073

`A254399(n+1)+A164267(n)`
-/

namespace A220362.P663376772989925073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254399 (n + 1) + A164267 n

end

end A220362.P663376772989925073

namespace A220362

/-- `A254399(n+1)+A164267(n)` -/
def P663376772989925073.Spec : Prop :=
  ∀ n, P663376772989925073.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P8428112313255933516

`A000045(n)*A059929(n+1)`
-/

namespace A220362.P8428112313255933516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A059929 (n + 1)

end

end A220362.P8428112313255933516

namespace A220362

/-- `A000045(n)*A059929(n+1)` -/
def P8428112313255933516.Spec : Prop :=
  ∀ n, P8428112313255933516.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P3289460697670330913

`A001654(n)*A071679(n+1)`
-/

namespace A220362.P3289460697670330913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A071679 (n + 1)

end

end A220362.P3289460697670330913

namespace A220362

/-- `A001654(n)*A071679(n+1)` -/
def P3289460697670330913.Spec : Prop :=
  ∀ n, P3289460697670330913.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P638309586604358954

`(A001911(n)+2)*A001654(n)`
-/

namespace A220362.P638309586604358954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001911 n + 2) * A001654 n

end

end A220362.P638309586604358954

namespace A220362

/-- `(A001911(n)+2)*A001654(n)` -/
def P638309586604358954.Spec : Prop :=
  ∀ n, P638309586604358954.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P16386249581239363371

`A000045(n+3)*A001654(n)`
-/

namespace A220362.P16386249581239363371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) * A001654 n

end

end A220362.P16386249581239363371

namespace A220362

/-- `A000045(n+3)*A001654(n)` -/
def P16386249581239363371.Spec : Prop :=
  ∀ n, P16386249581239363371.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P18259842051931792337

`∑[A000045(n)²]*A020695(n)`
-/

namespace A220362.P18259842051931792337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A020695 n

end

end A220362.P18259842051931792337

namespace A220362

/-- `∑[A000045(n)²]*A020695(n)` -/
def P18259842051931792337.Spec : Prop :=
  ∀ n, P18259842051931792337.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P8019012798278019908

`A000045(n)*A070550(Δ[n²])`
-/

namespace A220362.P8019012798278019908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A070550 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A220362.P8019012798278019908

namespace A220362

/-- `A000045(n)*A070550(Δ[n²])` -/
def P8019012798278019908.Spec : Prop :=
  ∀ n, P8019012798278019908.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P7678863911470762712

`A000045(n)*∑[A260259(n+1)]`
-/

namespace A220362.P7678863911470762712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220362.P7678863911470762712

namespace A220362

/-- `A000045(n)*∑[A260259(n+1)]` -/
def P7678863911470762712.Spec : Prop :=
  ∀ n, P7678863911470762712.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P16544922965526779361

`Δ[A059840(n+2)]*A000045(n)`
-/

namespace A220362.P16544922965526779361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 n

end

end A220362.P16544922965526779361

namespace A220362

/-- `Δ[A059840(n+2)]*A000045(n)` -/
def P16544922965526779361.Spec : Prop :=
  ∀ n, P16544922965526779361.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P18205047618704741264

`A066259(n+1)-A056570(n+1)`
-/

namespace A220362.P18205047618704741264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066259 (n + 1) - A056570 (n + 1)

end

end A220362.P18205047618704741264

namespace A220362

/-- `A066259(n+1)-A056570(n+1)` -/
def P18205047618704741264.Spec : Prop :=
  ∀ n, P18205047618704741264.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P1710916731948923935

`A059929(n+1)*A212804(n+1)`
-/

namespace A220362.P1710916731948923935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (n + 1) * A212804 (n + 1)

end

end A220362.P1710916731948923935

namespace A220362

/-- `A059929(n+1)*A212804(n+1)` -/
def P1710916731948923935.Spec : Prop :=
  ∀ n, P1710916731948923935.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P2655876444294164025

`A220361(n+2)-A066259(n+1)`
-/

namespace A220362.P2655876444294164025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220361 (n + 2) - A066259 (n + 1)

end

end A220362.P2655876444294164025

namespace A220362

/-- `A220361(n+2)-A066259(n+1)` -/
def P2655876444294164025.Spec : Prop :=
  ∀ n, P2655876444294164025.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P16899580743477045317

`A000045(n+1)*A226205(n+2)`
-/

namespace A220362.P16899580743477045317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A226205 (n + 2)

end

end A220362.P16899580743477045317

namespace A220362

/-- `A000045(n+1)*A226205(n+2)` -/
def P16899580743477045317.Spec : Prop :=
  ∀ n, P16899580743477045317.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P233442873017416278

`A001654(n)*A123231(2*(n+1))`
-/

namespace A220362.P233442873017416278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A123231 (2 * (n + 1))

end

end A220362.P233442873017416278

namespace A220362

/-- `A001654(n)*A123231(2*(n+1))` -/
def P233442873017416278.Spec : Prop :=
  ∀ n, P233442873017416278.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P2660607572083526663

`A000045(n+1)*A195971(2*n)`
-/

namespace A220362.P2660607572083526663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A195971 (2 * n)

end

end A220362.P2660607572083526663

namespace A220362

/-- `A000045(n+1)*A195971(2*n)` -/
def P2660607572083526663.Spec : Prop :=
  ∀ n, P2660607572083526663.a n = A220362 (n + 1)

end A220362

/-! ## A220362.P11828634258382080626

`∑[A000045(n)²]*A071679(n+1)`
-/

namespace A220362.P11828634258382080626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A071679 (n + 1)

end

end A220362.P11828634258382080626

namespace A220362

/-- `∑[A000045(n)²]*A071679(n+1)` -/
def P11828634258382080626.Spec : Prop :=
  ∀ n, P11828634258382080626.a n = A220362 (n + 1)

end A220362

/-!
# A220363: a(n) = Fibonacci(n)^3 + (-1)^n*Fibonacci(n+2).

The programs for A220363, the canonical program `A220363.P13489943248134275354` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220363 has offset 0).

The definition of A220363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220363.P13489943248134275354

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=-1, a(2)=4, a(3)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A220363

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P13489943248134275354.Spec : Prop :=
  ∀ n, P13489943248134275354.a n = A220363 n

theorem P13489943248134275354.correct : P13489943248134275354.Spec := by
  intro n
  simp only [A220363]

end A220363

/-! ## A220363.P13884537265028553998

`A052964(n)+A056570(n)-A054877(n+1)`
-/

namespace A220363.P13884537265028553998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 n + (A056570 n - A054877 (n + 1))

end

end A220363.P13884537265028553998

namespace A220363

/-- `A052964(n)+A056570(n)-A054877(n+1)` -/
def P13884537265028553998.Spec : Prop :=
  ∀ n, P13884537265028553998.a n = A220363 n

end A220363

/-! ## A220363.P9289864569903101851

`(A236428(n)-A059929(n))*A000045(n+1)`
-/

namespace A220363.P9289864569903101851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236428 n - A059929 n) * A000045 (n + 1)

end

end A220363.P9289864569903101851

namespace A220363

/-- `(A236428(n)-A059929(n))*A000045(n+1)` -/
def P9289864569903101851.Spec : Prop :=
  ∀ n, P9289864569903101851.a n = A220363 n

end A220363

/-! ## A220363.P18205821701931213044

`(A007598(n+1)-A175395(n))*A000045(n+1)`
-/

namespace A220363.P18205821701931213044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007598 (n + 1) - A175395 n) * A000045 (n + 1)

end

end A220363.P18205821701931213044

namespace A220363

/-- `(A007598(n+1)-A175395(n))*A000045(n+1)` -/
def P18205821701931213044.Spec : Prop :=
  ∀ n, P18205821701931213044.a n = A220363 n

end A220363

/-! ## A220363.P16369686152882697222

`(A226205(n+1)-A007598(n))*A000045(n+1)`
-/

namespace A220363.P16369686152882697222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226205 (n + 1) - A007598 n) * A000045 (n + 1)

end

end A220363.P16369686152882697222

namespace A220363

/-- `(A226205(n+1)-A007598(n))*A000045(n+1)` -/
def P16369686152882697222.Spec : Prop :=
  ∀ n, P16369686152882697222.a n = A220363 n

end A220363

/-! ## A220363.P12957970383963664262

`(A014742(n)-A226205(n+2))*A000045(n+1)`
-/

namespace A220363.P12957970383963664262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014742 n - A226205 (n + 2)) * A000045 (n + 1)

end

end A220363.P12957970383963664262

namespace A220363

/-- `(A014742(n)-A226205(n+2))*A000045(n+1)` -/
def P12957970383963664262.Spec : Prop :=
  ∀ n, P12957970383963664262.a n = A220363 n

end A220363

/-! ## A220363.P4922760075086390345

`(A260259(n+1)-A000045(2*n+1))*A000045(n+1)`
-/

namespace A220363.P4922760075086390345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A260259 (n + 1) - A000045 (2 * n + 1)) * A000045 (n + 1)

end

end A220363.P4922760075086390345

namespace A220363

/-- `(A260259(n+1)-A000045(2*n+1))*A000045(n+1)` -/
def P4922760075086390345.Spec : Prop :=
  ∀ n, P4922760075086390345.a n = A220363 n

end A220363

/-! ## A220363.P2081389187138821287

`(A006498(2*n)-A295680(2*n+1))*A000045(n+1)`
-/

namespace A220363.P2081389187138821287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006498 (2 * n) - A295680 (2 * n + 1)) * A000045 (n + 1)

end

end A220363.P2081389187138821287

namespace A220363

/-- `(A006498(2*n)-A295680(2*n+1))*A000045(n+1)` -/
def P2081389187138821287.Spec : Prop :=
  ∀ n, P2081389187138821287.a n = A220363 n

end A220363

/-! ## A220363.P14514250010744903801

`A346513(n)-A037451(n)`
-/

namespace A220363.P14514250010744903801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346513 n - A037451 n

end

end A220363.P14514250010744903801

namespace A220363

/-- `A346513(n)-A037451(n)` -/
def P14514250010744903801.Spec : Prop :=
  ∀ n, P14514250010744903801.a n = A220363 n

end A220363

/-! ## A220363.P695248217788211879

`A056570(n+1)-2*A066258(n)`
-/

namespace A220363.P695248217788211879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (n + 1) - 2 * A066258 n

end

end A220363.P695248217788211879

namespace A220363

/-- `A056570(n+1)-2*A066258(n)` -/
def P695248217788211879.Spec : Prop :=
  ∀ n, P695248217788211879.a n = A220363 n

end A220363

/-! ## A220363.P2258694968074947229

`A226976(n)-A226958(n+2)`
-/

namespace A220363.P2258694968074947229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226976 n - A226958 (n + 2)

end

end A220363.P2258694968074947229

namespace A220363

/-- `A226976(n)-A226958(n+2)` -/
def P2258694968074947229.Spec : Prop :=
  ∀ n, P2258694968074947229.a n = A220363 n

end A220363

/-! ## A220363.P12597028470264504811

`A065563(n+1)-Δ[A110224(n)]`
-/

namespace A220363.P12597028470264504811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065563 (n + 1) - (f1 (n + 1) - f1 n)

end

end A220363.P12597028470264504811

namespace A220363

/-- `A065563(n+1)-Δ[A110224(n)]` -/
def P12597028470264504811.Spec : Prop :=
  ∀ n, P12597028470264504811.a n = A220363 n

end A220363

/-! ## A220363.P539899796137685588

`A065563(n+1)-A350473(n+1)`
-/

namespace A220363.P539899796137685588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065563 (n + 1) - A350473 (n + 1)

end

end A220363.P539899796137685588

namespace A220363

/-- `A065563(n+1)-A350473(n+1)` -/
def P539899796137685588.Spec : Prop :=
  ∀ n, P539899796137685588.a n = A220363 n

end A220363

/-! ## A220363.P10685788642538636161

`2*A066258(n+1)-A099014(n+1)`
-/

namespace A220363.P10685788642538636161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066258 (n + 1) - A099014 (n + 1)

end

end A220363.P10685788642538636161

namespace A220363

/-- `2*A066258(n+1)-A099014(n+1)` -/
def P10685788642538636161.Spec : Prop :=
  ∀ n, P10685788642538636161.a n = A220363 n

end A220363

/-! ## A220363.P8911740384947933298

`A065563(n+1)+A110224(n)-A110224(n+1)`
-/

namespace A220363.P8911740384947933298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065563 (n + 1) + (A110224 n - A110224 (n + 1))

end

end A220363.P8911740384947933298

namespace A220363

/-- `A065563(n+1)+A110224(n)-A110224(n+1)` -/
def P8911740384947933298.Spec : Prop :=
  ∀ n, P8911740384947933298.a n = A220363 n

end A220363

/-!
# A220364: Numbers n that divide the sum of digits of 36^n.

The programs for A220364, there is no canonical definition to state claims against.
-/

/-! ## A220364.P2806572672360251399

`A162309(A026790(n))+n`
-/

namespace A220364.P2806572672360251399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (A026790 n).toNat + (n : ℤ)

end

end A220364.P2806572672360251399

/-! ## A220364.P7207464619893433224

`A330104(A006054(n)+∑[char[n²]])`
-/

namespace A220364.P7207464619893433224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330104 (A006054 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A220364.P7207464619893433224

/-! ## A220364.P16271931501525546959

`A002024(A277432(n)+∏{p}[n+1, #])`
-/

namespace A220364.P16271931501525546959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A277432 n + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A220364.P16271931501525546959

/-! ## A220364.P11522687515284193441

`A002024(A038155(n)+A006899(n+1))`
-/

namespace A220364.P11522687515284193441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A038155 n + A006899 (n + 1)).toNat

end

end A220364.P11522687515284193441

/-!
# A220366: Majority value maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX3 array.

The programs for A220366, there is no canonical definition to state claims against.
-/

/-! ## A220366.P14885159986834277865

`A220369(∑[n+2]+4)`
-/

namespace A220366.P14885159986834277865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220366.P14885159986834277865

/-! ## A220366.P18218322331417146198

`A220369(A167614(n+1))+A025442(n)`
-/

namespace A220366.P18218322331417146198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A167614 (n + 1)).toNat + A025442 n

end

end A220366.P18218322331417146198

/-! ## A220366.P14309138494405713333

`A220369(A167614(n+1))+A025443(n)`
-/

namespace A220366.P14309138494405713333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A167614 (n + 1)).toNat + A025443 n

end

end A220366.P14309138494405713333

/-! ## A220366.P14913524087748255582

`A220369(A167614(n+1))+A025465(n)`
-/

namespace A220366.P14913524087748255582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A167614 (n + 1)).toNat + A025465 n

end

end A220366.P14913524087748255582

/-! ## A220366.P10176125683061412284

`A220369(A167614(n+1))+A031346(n)`
-/

namespace A220366.P10176125683061412284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A167614 (n + 1)).toNat + A031346 n

end

end A220366.P10176125683061412284

/-!
# A220367: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A220367, there is no canonical definition to state claims against.
-/

/-! ## A220367.P7316732260629948348

`A220369(A374004(n+1))`
-/

namespace A220367.P7316732260629948348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A374004 (n + 1)).toNat

end

end A220367.P7316732260629948348

/-! ## A220367.P1873271500906967778

`A220369(A141214(n)+7)`
-/

namespace A220367.P1873271500906967778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A141214 n + 7).toNat

end

end A220367.P1873271500906967778

/-! ## A220367.P16041463281692747438

`A220369(A052905(n)+9)`
-/

namespace A220367.P16041463281692747438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A052905 n + 9).toNat

end

end A220367.P16041463281692747438

/-! ## A220367.P17447329726278793557

`A220369(A055999(n)+10)`
-/

namespace A220367.P17447329726278793557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A055999 n + 10).toNat

end

end A220367.P17447329726278793557

/-!
# A220368: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX5 array.

The programs for A220368, there is no canonical definition to state claims against.
-/

/-! ## A220368.P639765978620684930

`A220369(A374005(n+1))`
-/

namespace A220368.P639765978620684930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A374005 (n + 1)).toNat

end

end A220368.P639765978620684930

/-! ## A220368.P12065762165998331523

`A220369(A167499(n+3))`
-/

namespace A220368.P12065762165998331523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A167499 (n + 3)).toNat

end

end A220368.P12065762165998331523

/-! ## A220368.P2167560363099579927

`A220369(A155212(n)+13)`
-/

namespace A220368.P2167560363099579927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (A155212 n + 13).toNat

end

end A220368.P2167560363099579927

/-!
# A220370: Number of nonzero squares that appear as a subsequences in the binary digits of n.

The programs for A220370, there is no canonical definition to state claims against.
-/

/-! ## A220370.P2062858293530826383

`A339399(or(n, ∑[n]+2))`
-/

namespace A220370.P2062858293530826383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (Nat.lor n (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A220370.P2062858293530826383

/-! ## A220370.P12164023337192370996

`A120481(A274283(n+1))`
-/

namespace A220370.P12164023337192370996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120481 (A274283 (n + 1)).toNat

end

end A220370.P12164023337192370996

/-! ## A220370.P2525181696046579784

`A175193(A374728(n+2))`
-/

namespace A220370.P2525181696046579784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175193 (A374728 (n + 2)).toNat

end

end A220370.P2525181696046579784

/-! ## A220370.P15052373021422321728

`ceil(A330036(A041893(n))/ϕ)`
-/

namespace A220370.P15052373021422321728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330036 (A041893 n).toNat : ℝ) / Real.goldenRatio⌉

end

end A220370.P15052373021422321728

/-! ## A220370.P3664529712259653336

`A270650(A353832(3*n+4)+A177929(2*n+1))`
-/

namespace A220370.P3664529712259653336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270650 (A353832 (3 * n + 4) + A177929 (2 * n + 1)).toNat

end

end A220370.P3664529712259653336

/-!
# A220371: a(n) = Product_{i=1..2*n} (4*i+2)*A060818(n).

The programs for A220371, there is no canonical definition to state claims against.
-/

/-! ## A220371.P1406424911370745746

`4*A193365(n)*a(n-1)` with `a(0)=1`
-/

namespace A220371.P1406424911370745746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A193365 n * a (n - 1)

end

end A220371.P1406424911370745746

/-! ## A220371.P1180833250221710534

`lcm(∏[A008574(n)], A103639(n))`
-/

namespace A220371.P1180833250221710534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ j ∈ Finset.range (n + 1), f1 j) (A103639 n)

end

end A220371.P1180833250221710534

/-! ## A220371.P9425759154692860592

`2^A004134(n)*A001147(2*n+1)`
-/

namespace A220371.P9425759154692860592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004134 n : ℤ) * (A001147 (2 * n + 1) : ℚ)

end

end A220371.P9425759154692860592

/-! ## A220371.P9436761928349697113

`lcm(n!/4^-n, A000407(A005843(n)))`
-/

namespace A220371.P9436761928349697113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ))) (A000407 (A005843 n).toNat)

end

end A220371.P9436761928349697113

/-! ## A220371.P8477742757447524070

`2^(A101925(n)-1+n)*A001147(2*n+1)`
-/

namespace A220371.P8477742757447524070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A101925 n - 1 + (n : ℤ) : ℤ) * (A001147 (2 * n + 1) : ℚ)

end

end A220371.P8477742757447524070

/-!
# A220372: Equals two maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..2 nX2 array.

The programs for A220372, there is no canonical definition to state claims against.
-/

/-! ## A220372.P6195746216733084343

`A220375(∑[n+1]+2)`
-/

namespace A220372.P6195746216733084343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220375 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220372.P6195746216733084343

/-! ## A220372.P6502121236104747199

`A220430(∑[n+1]+2)`
-/

namespace A220372.P6502121236104747199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220430 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220372.P6502121236104747199

/-! ## A220372.P8568544789901084159

`record[A220375(n+1)/A036073(n)]`
-/

namespace A220372.P8568544789901084159
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220375 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220372.P8568544789901084159

/-! ## A220372.P12000268511427327226

`record[A220430(n+1)/A036073(n)]`
-/

namespace A220372.P12000268511427327226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220430 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220372.P12000268511427327226

/-! ## A220372.P13623880101156051164

`record[A220375(n+1)/A097607(n)]`
-/

namespace A220372.P13623880101156051164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220375 (n + 1) : ℚ) / (A097607 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220372.P13623880101156051164

/-!
# A220373: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..2 nX3 array.

The programs for A220373, there is no canonical definition to state claims against.
-/

/-! ## A220373.P5060133581665838975

`A220375(∑[n+2]+4)`
-/

namespace A220373.P5060133581665838975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220375 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220373.P5060133581665838975

/-! ## A220373.P4053186176333130473

`A220375(A167614(n+1))+A026816(n)`
-/

namespace A220373.P4053186176333130473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220375 (A167614 (n + 1)).toNat + A026816 n

end

end A220373.P4053186176333130473

/-! ## A220373.P17439563559552744483

`A220375(A167614(n+1))+A184955(n)`
-/

namespace A220373.P17439563559552744483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220375 (A167614 (n + 1)).toNat + A184955 n

end

end A220373.P17439563559552744483

/-! ## A220373.P2411575853647746159

`A220375(A167614(n+1))+A185284(n)`
-/

namespace A220373.P2411575853647746159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220375 (A167614 (n + 1)).toNat + A185284 n

end

end A220373.P2411575853647746159

/-!
# A220374: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..2 nX4 array.

The programs for A220374, there is no canonical definition to state claims against.
-/

/-! ## A220374.P8567111579983719937

`A220375(C(n+5, 2)-n)`
-/

namespace A220374.P8567111579983719937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220375 (Nat.choose (n + 5) 2 - n)

end

end A220374.P8567111579983719937

/-! ## A220374.P12850009449671760573

`A220375(A141214(n)+7)`
-/

namespace A220374.P12850009449671760573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220375 (A141214 n + 7).toNat

end

end A220374.P12850009449671760573

/-! ## A220374.P13718151616830283307

`A220375(A052905(n)+9)`
-/

namespace A220374.P13718151616830283307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220375 (A052905 n + 9).toNat

end

end A220374.P13718151616830283307

/-!
# A220375: T(n,k)=Equals two maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and vertical neighbors in a random 0..2 nXk array.

The programs for A220375, there is no canonical definition to state claims against.
-/

/-! ## A220375.P15732342105715499112

`A220430(A000005(2^n))`
-/

namespace A220375.P15732342105715499112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220430 (A000005 (2 ^ n)).toNat

end

end A220375.P15732342105715499112

/-! ## A220375.P9179370189841162100

`A220430(∑[A278657(n)²])`
-/

namespace A220375.P9179370189841162100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220375.P9179370189841162100

/-! ## A220375.P15718387046598867815

`A220430(∑[A278657(n)!])`
-/

namespace A220375.P15718387046598867815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220430 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220375.P15718387046598867815

/-! ## A220375.P10503741777452998858

`A220430(A278657(n)²+n)`
-/

namespace A220375.P10503741777452998858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220430 (A278657 n ^ 2 + (n : ℤ)).toNat

end

end A220375.P10503741777452998858

/-! ## A220375.P15809961148682193755

`A060791(5*A220430(n+1))`
-/

namespace A220375.P15809961148682193755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (5 * A220430 (n + 1)).toNat

end

end A220375.P15809961148682193755

/-!
# A220376: a(n) = position of first occurrence of n-th "early bird" number (cf. A116700) in the string 1234567891011121314151617181920212223242526272... .

The programs for A220376, there is no canonical definition to state claims against.
-/

/-! ## A220376.P2009660917196899872

`A031297(A116700(n+1))`
-/

namespace A220376.P2009660917196899872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 (A116700 (n + 1)).toNat

end

end A220376.P2009660917196899872

/-! ## A220376.P1236747948686138061

`gcd(A000038(n), A229186(A116700(n+1)))`
-/

namespace A220376.P1236747948686138061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A229186 (A116700 (n + 1)).toNat)

end

end A220376.P1236747948686138061

/-! ## A220376.P646015849692330885

`or(A000007(n), A229186(A116700(n+1)))`
-/

namespace A220376.P646015849692330885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A229186 (A116700 (n + 1)).toNat)

end

end A220376.P646015849692330885

/-! ## A220376.P14418429525021558966

`A229186(A116700(n+1))%A154412(n+1)`
-/

namespace A220376.P14418429525021558966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229186 (A116700 (n + 1)).toNat) (A154412 (n + 1))

end

end A220376.P14418429525021558966

/-! ## A220376.P4099996509415439206

`A229186(A116700(n+1)%A165809(n+1))`
-/

namespace A220376.P4099996509415439206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 (Int.tmod (A116700 (n + 1)) (A165809 (n + 1))).toNat

end

end A220376.P4099996509415439206

/-!
# A220377: Number of partitions of n into three distinct and mutually relatively prime parts.

The programs for A220377, there is no canonical definition to state claims against.
-/

/-! ## A220377.P2053482114058153219

`A307719(n+6)-1`
-/

namespace A220377.P2053482114058153219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307719 (n + 6) - 1

end

end A220377.P2053482114058153219

/-! ## A220377.P11952254546735945574

`floor(A337461(n+6)/6)`
-/

namespace A220377.P11952254546735945574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337461 (n + 6) : ℚ) / 6⌋

end

end A220377.P11952254546735945574

/-! ## A220377.P1863746414160771339

`round(A337461(n+6)/6)-A000009(C(2, n+2))`
-/

namespace A220377.P1863746414160771339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A337461 (n + 6) : ℚ) / 6) - A000009 (Nat.choose 2 (n + 2))

end

end A220377.P1863746414160771339

/-! ## A220377.P12150669321000628696

`ceil(A317950(gcd(n, n+1))+A337461(n+6)/6)`
-/

namespace A220377.P12150669321000628696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317950 (Nat.gcd n (n + 1)) : ℚ) + (A337461 (n + 6) : ℚ) / 6⌉

end

end A220377.P12150669321000628696

/-! ## A220377.P4537815597274983378

`A337461(n+6)/6-A008578(n+2)/A001747(n+2)`
-/

namespace A220377.P4537815597274983378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337461 (n + 6) : ℚ) / 6 - (A008578 (n + 2) : ℚ) / (A001747 (n + 2) : ℚ)

end

end A220377.P4537815597274983378

/-! ## A220377.P9658004914111369670

`A008615(A337461(n+6))`
-/

namespace A220377.P9658004914111369670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A337461 (n + 6)).toNat

end

end A220377.P9658004914111369670

/-!
# A220379: G.f. satisfies: A(x) = x + (1-x)*A(A(x))^2.

The programs for A220379, there is no canonical definition to state claims against.
-/

/-! ## A220379.P4717435101351072477

`A261585(A281231(n+1))`
-/

namespace A220379.P4717435101351072477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A281231 (n + 1)).toNat

end

end A220379.P4717435101351072477

/-! ## A220379.P11588437848755219701

`A002266(A202474(n+1)+4)`
-/

namespace A220379.P11588437848755219701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A202474 (n + 1) + 4).toNat

end

end A220379.P11588437848755219701

/-!
# A220380: Majority value maps: number of n X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 n X n array.

The programs for A220380, there is no canonical definition to state claims against.
-/

/-! ## A220380.P15600739873351104079

`A220386(∑[4*n]+1)`
-/

namespace A220380.P15600739873351104079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220380.P15600739873351104079

/-! ## A220380.P2573762139942367798

`record[A220386(Δ[A235355(n)])]`
-/

namespace A220380.P2573762139942367798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220380.P2573762139942367798

/-! ## A220380.P15415351917059249379

`record[A220386(A330613(n+1))]`
-/

namespace A220380.P15415351917059249379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220380.P15415351917059249379

/-!
# A220381: Majority value maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 n X 3 array.

The programs for A220381, there is no canonical definition to state claims against.
-/

/-! ## A220381.P17999889411023548739

`A220386(∑[n+3]+1)`
-/

namespace A220381.P17999889411023548739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220381.P17999889411023548739

/-! ## A220381.P7704189134237278528

`A326540(n)+A220386(A034856(n+2))`
-/

namespace A220381.P7704189134237278528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n + A220386 (A034856 (n + 2)).toNat

end

end A220381.P7704189134237278528

/-! ## A220381.P4785303074300288305

`A220386(A034856(n+2))*A333159(n)`
-/

namespace A220381.P4785303074300288305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A034856 (n + 2)).toNat * A333159 n

end

end A220381.P4785303074300288305

/-! ## A220381.P13640088180735257709

`A220386(A141214(n)+1)%A220437(n)`
-/

namespace A220381.P13640088180735257709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220386 (A141214 n + 1).toNat) (A220437 n)

end

end A220381.P13640088180735257709

/-! ## A220381.P15877980362225315081

`A220386(A034856(n+2))+A102683(2*n)`
-/

namespace A220381.P15877980362225315081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A034856 (n + 2)).toNat + A102683 (2 * n)

end

end A220381.P15877980362225315081

/-!
# A220382: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 nX4 array.

The programs for A220382, there is no canonical definition to state claims against.
-/

/-! ## A220382.P7698119023000728365

`A220386(∑[n+4]+3)`
-/

namespace A220382.P7698119023000728365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220382.P7698119023000728365

/-!
# A220383: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 nX5 array.

The programs for A220383, there is no canonical definition to state claims against.
-/

/-! ## A220383.P6980929395582850841

`A220386(∑[n+5]+6)`
-/

namespace A220383.P6980929395582850841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A220383.P6980929395582850841

/-! ## A220383.P6725761874990177619

`A257850(n)+A220386(A056115(n)+11)`
-/

namespace A220383.P6725761874990177619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 n + A220386 (A056115 n + 11).toNat

end

end A220383.P6725761874990177619

/-! ## A220383.P13745408149044188431

`A220386(A056115(n)+11)^A250664(n)`
-/

namespace A220383.P13745408149044188431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220386 (A056115 n + 11).toNat : ℚ) ^ (A250664 n : ℤ)

end

end A220383.P13745408149044188431

/-!
# A220384: Majority value maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 nX6 array.

The programs for A220384, there is no canonical definition to state claims against.
-/

/-! ## A220384.P10748659969710963875

`A220386(∑[n+6]+10)`
-/

namespace A220384.P10748659969710963875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A220384.P10748659969710963875

/-!
# A220385: Majority value maps: number of nX7 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 nX7 array.

The programs for A220385, there is no canonical definition to state claims against.
-/

/-! ## A220385.P3525055061004449976

`A220386(A055999(n+4))`
-/

namespace A220385.P3525055061004449976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A055999 (n + 4)).toNat

end

end A220385.P3525055061004449976

/-! ## A220385.P14706690380441874726

`A220386(eq[4, A219347(n)])`
-/

namespace A220385.P14706690380441874726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220385.P14706690380441874726

/-! ## A220385.P12769770571936163538

`A220386(eq[6, A193592(n)])`
-/

namespace A220385.P12769770571936163538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220385.P12769770571936163538

/-! ## A220385.P1864037046841328527

`A220386(Δ[A023551(n+2)])`
-/

namespace A220385.P1864037046841328527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (f1 (n + 1) - f1 n).toNat

end

end A220385.P1864037046841328527

/-!
# A220387: Majority value maps: number of 2Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 2Xn array.

The programs for A220387, there is no canonical definition to state claims against.
-/

/-! ## A220387.P18036514471468140903

`A220386(∑[n+1]+2)`
-/

namespace A220387.P18036514471468140903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220387.P18036514471468140903

/-! ## A220387.P4319914004020567257

`record[ratio[A220386(A080036(n))]]`
-/

namespace A220387.P4319914004020567257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220387.P4319914004020567257

/-! ## A220387.P3275239573616676336

`record[A220386(A257506(n+1)+2)]`
-/

namespace A220387.P3275239573616676336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A257506 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220387.P3275239573616676336

/-! ## A220387.P3024333956431829801

`record[A220386(A249725(2*(n+1)))]`
-/

namespace A220387.P3024333956431829801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A249725 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220387.P3024333956431829801

/-! ## A220387.P899517420091196263

`record[gcd(A097230(n), A220386(n+1))]`
-/

namespace A220387.P899517420091196263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A220386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220387.P899517420091196263

/-!
# A220388: Majority value maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 3Xn array.

The programs for A220388, there is no canonical definition to state claims against.
-/

/-! ## A220388.P2621819762894400632

`A220386(∑[n+2]+4)`
-/

namespace A220388.P2621819762894400632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220388.P2621819762894400632

/-! ## A220388.P790287227313254613

`record[gcd(A106356(n+1), A220386(n+5))]`
-/

namespace A220388.P790287227313254613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106356 (n + 1)) (A220386 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220388.P790287227313254613

/-! ## A220388.P15948802073674577976

`A220386(A167614(n+1))+A011731(n)`
-/

namespace A220388.P15948802073674577976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A167614 (n + 1)).toNat + A011731 n

end

end A220388.P15948802073674577976

/-! ## A220388.P2432006832911645073

`A220386(A167614(n+1))+A025443(n)`
-/

namespace A220388.P2432006832911645073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A167614 (n + 1)).toNat + A025443 n

end

end A220388.P2432006832911645073

/-! ## A220388.P14791431501287962259

`A220386(A167614(n+1))+A061858(n)`
-/

namespace A220388.P14791431501287962259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A167614 (n + 1)).toNat + A061858 n

end

end A220388.P14791431501287962259

/-!
# A220389: Majority value maps: number of 4 X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 4 X n array.

The programs for A220389, there is no canonical definition to state claims against.
-/

/-! ## A220389.P9419147187605500116

`A220386(∑[n+3]+7)`
-/

namespace A220389.P9419147187605500116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220389.P9419147187605500116

/-!
# A220390: Majority value maps: number of 5Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 5Xn array.

The programs for A220390, there is no canonical definition to state claims against.
-/

/-! ## A220390.P16842204424882905924

`A220386(A167499(n+3))`
-/

namespace A220390.P16842204424882905924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A167499 (n + 3)).toNat

end

end A220390.P16842204424882905924

/-! ## A220390.P17322568104494843099

`A220386(A155212(n)+13)`
-/

namespace A220390.P17322568104494843099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A155212 n + 13).toNat

end

end A220390.P17322568104494843099

/-! ## A220390.P2024349572749880554

`A220386(A056000(n)+15)`
-/

namespace A220390.P2024349572749880554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A056000 n + 15).toNat

end

end A220390.P2024349572749880554

/-! ## A220390.P10360454467474660873

`A220386(eq[7, A066657(n)])`
-/

namespace A220390.P10360454467474660873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220390.P10360454467474660873

/-! ## A220390.P14168476523272166286

`A220386(A166136(n+3)-1)`
-/

namespace A220390.P14168476523272166286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A166136 (n + 3) - 1).toNat

end

end A220390.P14168476523272166286

/-!
# A220391: Majority value maps: number of 6Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 6Xn array.

The programs for A220391, there is no canonical definition to state claims against.
-/

/-! ## A220391.P11324589458074369542

`A220386(∑[n+5]+16)`
-/

namespace A220391.P11324589458074369542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A220391.P11324589458074369542

/-! ## A220391.P11343358870208234423

`A345166(n)+A220386(A000124(n+5)+5)`
-/

namespace A220391.P11343358870208234423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345166 n + A220386 (A000124 (n + 5) + 5).toNat

end

end A220391.P11343358870208234423

/-! ## A220391.P11140070029868321665

`A220386(A166136(n+4))%A212698(3*n+2)`
-/

namespace A220391.P11140070029868321665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220386 (A166136 (n + 4)).toNat) (A212698 (3 * n + 2))

end

end A220391.P11140070029868321665

/-! ## A220391.P2510781936312042371

`A220386(A000124(n+5)+5)*A334460(2*(n+1))`
-/

namespace A220391.P2510781936312042371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A000124 (n + 5) + 5).toNat * A334460 (2 * (n + 1))

end

end A220391.P2510781936312042371

/-!
# A220392: Majority value maps: number of 7Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..1 7Xn array.

The programs for A220392, there is no canonical definition to state claims against.
-/

/-! ## A220392.P14381760777238004537

`A220386(A056119(n)+28)`
-/

namespace A220392.P14381760777238004537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A056119 n + 28).toNat

end

end A220392.P14381760777238004537

/-! ## A220392.P2098051448261857007

`A220386(eq[11, A066657(n)])`
-/

namespace A220392.P2098051448261857007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220392.P2098051448261857007

/-! ## A220392.P2125170772382679190

`A220386(A166136(n+5)+1)`
-/

namespace A220392.P2125170772382679190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A166136 (n + 5) + 1).toNat

end

end A220392.P2125170772382679190

/-! ## A220392.P9753309779118240205

`A220386(A167499(n+5)+2)`
-/

namespace A220392.P9753309779118240205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220386 (A167499 (n + 5) + 2).toNat

end

end A220392.P9753309779118240205

/-!
# A220399: A convolution triangle of numbers obtained from A057682.

The programs for A220399, there is no canonical definition to state claims against.
-/

/-! ## A220399.P15903864553383538865

`xor(A068932(A246106(n)), A122542(n))`
-/

namespace A220399.P15903864553383538865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A068932 (A246106 n).toNat) (A122542 n)

end

end A220399.P15903864553383538865

/-! ## A220399.P17000200885013304253

`xor(A001222(A347811(n)), A122542(n))`
-/

namespace A220399.P17000200885013304253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A347811 n).toNat) (A122542 n)

end

end A220399.P17000200885013304253

/-! ## A220399.P5951553865407451668

`A325678(A001263(n+1)*A034369(n+1))`
-/

namespace A220399.P5951553865407451668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A001263 (n + 1) * A034369 (n + 1)).toNat

end

end A220399.P5951553865407451668

/-! ## A220399.P10627217545332503968

`A128908(n)-A022003(A078536(n))`
-/

namespace A220399.P10627217545332503968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 n - A022003 (A078536 n).toNat

end

end A220399.P10627217545332503968

/-! ## A220399.P7904498702442085720

`A128908(n)-A025465(A092808(n))`
-/

namespace A220399.P7904498702442085720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 n - A025465 (A092808 n).toNat

end

end A220399.P7904498702442085720

