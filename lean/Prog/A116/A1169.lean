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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A116900: Number of partitions of n into at least two parts such that the product of largest and smallest part is equal to n.

The programs for A116900, there is no canonical definition to state claims against.
-/

/-! ## A116900.P12829074716368241412

`A240201(n)-A240200(char[1]+n)`
-/

namespace A116900.P12829074716368241412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240201 n - A240200 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A116900.P12829074716368241412

/-! ## A116900.P18395473635034687712

`A240201(n)-A240200(n)-char[1]`
-/

namespace A116900.P18395473635034687712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240201 n - A240200 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A116900.P18395473635034687712

/-! ## A116900.P5562088565738501489

`(A240201(n)+A116901(n))%A000041(n)`
-/

namespace A116900.P5562088565738501489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240201 n + A116901 n) (A000041 n)

end

end A116900.P5562088565738501489

/-! ## A116900.P4411068781529480140

`A240201(n)%A000041(n)-A240200(n)`
-/

namespace A116900.P4411068781529480140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240201 n) (A000041 n) - A240200 n

end

end A116900.P4411068781529480140

/-! ## A116900.P16607267396953362512

`(A240201(n)-A240200(n))%A000032(n)`
-/

namespace A116900.P16607267396953362512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240201 n - A240200 n) (A000032 n)

end

end A116900.P16607267396953362512

/-!
# A116901: Number of partitions of n into at least two parts such that the product of largest and smallest part does not exceed n.

The programs for A116901, there is no canonical definition to state claims against.
-/

/-! ## A116901.P17729625298420937376

`A000065(n)-A116902(A028310(n))`
-/

namespace A116901.P17729625298420937376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A116902 (A028310 n).toNat

end

end A116901.P17729625298420937376

/-! ## A116901.P1453537721157060274

`A000041(n)-(A116902(A028310(n))+1)`
-/

namespace A116901.P1453537721157060274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A116902 (A028310 n).toNat + 1)

end

end A116901.P1453537721157060274

/-! ## A116901.P12308970293992931069

`A000065(n)-A116902(A233583(n+1))`
-/

namespace A116901.P12308970293992931069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A116902 (A233583 (n + 1)).toNat

end

end A116901.P12308970293992931069

/-! ## A116901.P4228461009819355612

`A035444(A008586(n))-(A116902(A028310(n))+1)`
-/

namespace A116901.P4228461009819355612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - (A116902 (A028310 n).toNat + 1)

end

end A116901.P4228461009819355612

/-! ## A116901.P18416152860365180384

`A035363(A005843(n))-(A116902(A233583(n+1))+1)`
-/

namespace A116901.P18416152860365180384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A005843 n).toNat - (A116902 (A233583 (n + 1)).toNat + 1)

end

end A116901.P18416152860365180384

/-! ## A116901.P9017055727221465834

`A000041(n)-A028310(A240200(n))`
-/

namespace A116901.P9017055727221465834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A028310 (A240200 n).toNat

end

end A116901.P9017055727221465834

/-! ## A116901.P1544213788838796250

`(A000065(n)*A240200(n))%A000041(n)`
-/

namespace A116901.P1544213788838796250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n * A240200 n) (A000041 n)

end

end A116901.P1544213788838796250

/-! ## A116901.P2960791587671190261

`A000041(n)-(A240200(n)+char[A002017(n)])`
-/

namespace A116901.P2960791587671190261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002017 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A240200 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A116901.P2960791587671190261

/-! ## A116901.P14955761377352845594

`A008683(2*A000010(n+1))+A000041(n)-A240200(n)`
-/

namespace A116901.P14955761377352845594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000010 (n + 1)).toNat + (A000041 n - A240200 n)

end

end A116901.P14955761377352845594

/-!
# A116902: Number of partitions of n into at least two parts such that the product of largest and smallest part exceeds n.

The programs for A116902, there is no canonical definition to state claims against.
-/

/-! ## A116902.P14929937484191898728

`A000065(n+1)-A116901(n+1)`
-/

namespace A116902.P14929937484191898728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) - A116901 (n + 1)

end

end A116902.P14929937484191898728

/-! ## A116902.P4188989111633927858

`∑[A002865(n+1)]-A116901(n+1)`
-/

namespace A116902.P4188989111633927858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A116901 (n + 1)

end

end A116902.P4188989111633927858

/-! ## A116902.P2734599742881259525

`Δ[A000070(n)]-(A116901(n+1)+1)`
-/

namespace A116902.P2734599742881259525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A116901 (n + 1) + 1)

end

end A116902.P2734599742881259525

/-! ## A116902.P10253699953069608556

`record[A035363(n)]-(A116901(n+1)+1)`
-/

namespace A116902.P10253699953069608556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A116901 (n + 1) + 1)

end

end A116902.P10253699953069608556

/-! ## A116902.P15458685897725504798

`record[A035444(n)]-(A116901(n+1)+1)`
-/

namespace A116902.P15458685897725504798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A116901 (n + 1) + 1)

end

end A116902.P15458685897725504798

/-! ## A116902.P207289195066567914

`A000041(n+1)-(A116901(n+1)+1)`
-/

namespace A116902.P207289195066567914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A116901 (n + 1) + 1)

end

end A116902.P207289195066567914

/-! ## A116902.P2895488613098441851

`A052810(n+1)-(A116901(n+1)+2)`
-/

namespace A116902.P2895488613098441851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (n + 1) - (A116901 (n + 1) + 2)

end

end A116902.P2895488613098441851

/-! ## A116902.P1976186183739364750

`A000041(A000027(n+1))%(A116901(n+1)+1)`
-/

namespace A116902.P1976186183739364750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A000027 (n + 1)).toNat) (A116901 (n + 1) + 1)

end

end A116902.P1976186183739364750

/-! ## A116902.P8266302550316602868

`A028310(A240200(n+1))-1`
-/

namespace A116902.P8266302550316602868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A240200 (n + 1)).toNat - 1

end

end A116902.P8266302550316602868

/-! ## A116902.P6422025030292491589

`A240200(A254667(n+1))-1`
-/

namespace A116902.P6422025030292491589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240200 (A254667 (n + 1)).toNat - 1

end

end A116902.P6422025030292491589

/-!
# A116903: Seaweeds(n): number of n-step self-avoiding walks on upper two quadrants grid starting at origin.

The programs for A116903, there is no canonical definition to state claims against.
-/

/-! ## A116903.P6221355817583830835

`A323188(2*n+1)/4`
-/

namespace A116903.P6221355817583830835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323188 (2 * n + 1) : ℚ) / 4

end

end A116903.P6221355817583830835

/-! ## A116903.P14268948270273921549

`A000265(A323188(Δ[n²]))`
-/

namespace A116903.P14268948270273921549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A323188 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A116903.P14268948270273921549

/-! ## A116903.P8610492573617456620

`A000265(2*A323188(2*n+1))`
-/

namespace A116903.P8610492573617456620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A323188 (2 * n + 1)).toNat

end

end A116903.P8610492573617456620

/-!
# A116904: Number of n-step self-avoiding walks on the upper 4 octants of the cubic grid starting at origin.

The programs for A116904, there is no canonical definition to state claims against.
-/

/-! ## A116904.P5151248542274666626

`A063198(A150842(n+1))`
-/

namespace A116904.P5151248542274666626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (A150842 (n + 1)).toNat

end

end A116904.P5151248542274666626

/-! ## A116904.P11835418374352454922

`A130823(3*A151148(n))`
-/

namespace A116904.P11835418374352454922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (3 * A151148 n).toNat

end

end A116904.P11835418374352454922

/-!
# A116905: Number of partitions of n-th 3-almost prime into 2 squares.

The programs for A116905, the canonical program `A116905.P14577079941118427993` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116905 has offset 1).

The definition of A116905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A014612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116905.P14577079941118427993

`A000161(A014612(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A116905

/-- `A000161(A014612(n+1))` -/
def P14577079941118427993.Spec : Prop :=
  ∀ n, P14577079941118427993.a n = A116905 (n + 1)

theorem P14577079941118427993.correct : P14577079941118427993.Spec := by
  intro n
  simp only [A116905, Nat.add_sub_cancel]

end A116905

/-! ## A116905.P11491602497975181763

`A025426(A014612(2*n+1-n))`
-/

namespace A116905.P11491602497975181763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A014612 (2 * n + 1 - n)).toNat

end

end A116905.P11491602497975181763

namespace A116905

/-- `A025426(A014612(2*n+1-n))` -/
def P11491602497975181763.Spec : Prop :=
  ∀ n, P11491602497975181763.a n = A116905 (n + 1)

end A116905

/-! ## A116905.P10273122815699427900

`A025426(∩[A026422(n+1), A326111(n+1)])`
-/

namespace A116905.P10273122815699427900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A116905.P10273122815699427900

namespace A116905

/-- `A025426(∩[A026422(n+1), A326111(n+1)])` -/
def P10273122815699427900.Spec : Prop :=
  ∀ n, P10273122815699427900.a n = A116905 (n + 1)

end A116905

/-! ## A116905.P840868928031488150

`A025426(∩[A033942(n+1), A298207(n+1)])`
-/

namespace A116905.P840868928031488150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A116905.P840868928031488150

namespace A116905

/-- `A025426(∩[A033942(n+1), A298207(n+1)])` -/
def P840868928031488150.Spec : Prop :=
  ∀ n, P840868928031488150.a n = A116905 (n + 1)

end A116905

/-! ## A116905.P3007518574383504596

`A025435(2*A014612(n+1))`
-/

namespace A116905.P3007518574383504596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (2 * A014612 (n + 1)).toNat

end

end A116905.P3007518574383504596

namespace A116905

/-- `A025435(2*A014612(n+1))` -/
def P3007518574383504596.Spec : Prop :=
  ∀ n, P3007518574383504596.a n = A116905 (n + 1)

end A116905

/-! ## A116905.P2441696039936662307

`A000161(∩[2*n, A014613(n+1)])`
-/

namespace A116905.P2441696039936662307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A116905.P2441696039936662307

namespace A116905

/-- `A000161(∩[2*n, A014613(n+1)])` -/
def P2441696039936662307.Spec : Prop :=
  ∀ n, P2441696039936662307.a n = A116905 (n + 1)

end A116905

/-! ## A116905.P16823502658389342242

`A025435(A014612(n+1)+A014612(n+1))`
-/

namespace A116905.P16823502658389342242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A014612 (n + 1) + A014612 (n + 1)).toNat

end

end A116905.P16823502658389342242

namespace A116905

/-- `A025435(A014612(n+1)+A014612(n+1))` -/
def P16823502658389342242.Spec : Prop :=
  ∀ n, P16823502658389342242.a n = A116905 (n + 1)

end A116905

/-!
# A116906: Sum of squares of divisors of n!.

The programs for A116906, the canonical program `A116906.P328593994969675773` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116906 has offset 0).

The definition of A116906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116906.P4370030731606298490

`A001157(n!)`
-/

namespace A116906.P4370030731606298490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (Nat.factorial n)

end

end A116906.P4370030731606298490

namespace A116906

/-- `A001157(n!)` -/
def P4370030731606298490.Spec : Prop :=
  ∀ n, P4370030731606298490.a n = A116906 n

end A116906

/-! ## A116906.P328593994969675773

`A001157(A000142(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116906

/-- `A001157(A000142(n))` -/
def P328593994969675773.Spec : Prop :=
  ∀ n, P328593994969675773.a n = A116906 n

theorem P328593994969675773.correct : P328593994969675773.Spec := by
  intro n
  simp only [A116906]

end A116906

/-! ## A116906.P17168383991294875300

`∑{d}[n!, #²]`
-/

namespace A116906.P17168383991294875300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A116906.P17168383991294875300

namespace A116906

/-- `∑{d}[n!, #²]` -/
def P17168383991294875300.Spec : Prop :=
  ∀ n, (P17168383991294875300.a n : ℤ) = A116906 n

end A116906

/-! ## A116906.P2968961141328433674

`∑{d}[∏[round(1/acot(n))], #²]`
-/

namespace A116906.P2968961141328433674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A116906.P2968961141328433674

namespace A116906

/-- `∑{d}[∏[round(1/acot(n))], #²]` -/
def P2968961141328433674.Spec : Prop :=
  ∀ n, (P2968961141328433674.a n : ℤ) = A116906 n

end A116906

/-! ## A116906.P10271012152452579958

`∑{d}[∏[ceil(abs(γ-n))], #²]`
-/

namespace A116906.P10271012152452579958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A116906.P10271012152452579958

namespace A116906

/-- `∑{d}[∏[ceil(abs(γ-n))], #²]` -/
def P10271012152452579958.Spec : Prop :=
  ∀ n, (P10271012152452579958.a n : ℤ) = A116906 n

end A116906

/-!
# A116908: Triangle, read by rows, where row n+1 is formed by sorting, in ascending order, the result of the convolution of row n with {1,2}.

The programs for A116908, there is no canonical definition to state claims against.
-/

/-! ## A116908.P191758289234106330

`A007895(A280618(n)+A157397(n+1))`
-/

namespace A116908.P191758289234106330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A280618 n + A157397 (n + 1)).toNat

end

end A116908.P191758289234106330

/-! ## A116908.P5163348672316692230

`A055640(A144241(n+1))+A002262(n)`
-/

namespace A116908.P5163348672316692230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A144241 (n + 1)).toNat + A002262 n

end

end A116908.P5163348672316692230

/-! ## A116908.P12782901168367774591

`A084556(A103284(comp[∑[n-2]]+1)!)`
-/

namespace A116908.P12782901168367774591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (Nat.factorial (A103284 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)).toNat)

end

end A116908.P12782901168367774591

/-! ## A116908.P12711057479949563922

`A216448(A343806(n))`
-/

namespace A116908.P12711057479949563922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216448 (A343806 n).toNat

end

end A116908.P12711057479949563922

/-! ## A116908.P2378060849800061924

`A079553(A096130(n+1))`
-/

namespace A116908.P2378060849800061924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079553 (A096130 (n + 1)).toNat

end

end A116908.P2378060849800061924

/-!
# A116909: Start with the sequence 2322322323222323223223 and extend by always appending the curling number (cf. A094004).

The programs for A116909, there is no canonical definition to state claims against.
-/

/-! ## A116909.P11273104044267033350

`A174998(n+1)+2`
-/

namespace A116909.P11273104044267033350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174998 (n + 1) + 2

end

end A116909.P11273104044267033350

/-! ## A116909.P658275892773794422

`p?[A233766(n+1)%A240924(A338256(n+1))]`
-/

namespace A116909.P658275892773794422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233766 (n + 1)) (A240924 (A338256 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116909.P658275892773794422

/-! ## A116909.P8792245276315432949

`p?[A112636(A014673(n+7))]`
-/

namespace A116909.P8792245276315432949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112636 (A014673 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116909.P8792245276315432949

/-! ## A116909.P1446406136922547936

`p?[A001405(A020639(2*C(n+4, 4)+4+n))]`
-/

namespace A116909.P1446406136922547936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A020639 (2 * Nat.choose (n + 4) 4 + 4 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116909.P1446406136922547936

/-! ## A116909.P6028604070306229763

`A276862(A335669(n+1)+A319411(2*n+3))`
-/

namespace A116909.P6028604070306229763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (A335669 (n + 1) + A319411 (2 * n + 3)).toNat

end

end A116909.P6028604070306229763

/-!
# A116910: Numbers k such that the number of letters in the Roman numeral for k divides k.

The programs for A116910, there is no canonical definition to state claims against.
-/

/-! ## A116910.P7515939908498289949

`record[gcd(A005349(n+1), A231846(3*n+4))]`
-/

namespace A116910.P7515939908498289949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005349 (n + 1)) (A231846 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116910.P7515939908498289949

/-!
# A116912: In prime factorization of n replace all primes of form k*6+1 with k*6+5 and primes of form k*6+5 with k*6+1.

The programs for A116912, there is no canonical definition to state claims against.
-/

/-! ## A116912.P12031768764795559430

`∏{e}[A085629(n+1), A030104(#)]`
-/

namespace A116912.P12031768764795559430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030104 (Nat.factorization (f1 n).natAbs p)

end

end A116912.P12031768764795559430

/-! ## A116912.P5754176949767307169

`A000005(2^n)-A055951(A007913(n+1))`
-/

namespace A116912.P5754176949767307169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) - A055951 (A007913 (n + 1)).toNat

end

end A116912.P5754176949767307169

/-!
# A116913: Inverse Moebius transform of pentagonal numbers.

The programs for A116913, the canonical program `A116913.P16129246459662584744` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116913 has offset 1).

The definition of A116913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116913.P16129246459662584744

`(3*A001157(n+1)-A000203(n+1))/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116913

/-- `(3*A001157(n+1)-A000203(n+1))/2` -/
def P16129246459662584744.Spec : Prop :=
  ∀ n, P16129246459662584744.a n = (A116913 (n + 1) : ℚ)

end A116913

/-! ## A116913.P8011043193493461509

`∑{d}[n+1, C(#, 2)+#²]`
-/

namespace A116913.P8011043193493461509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.choose d 2 + d ^ 2)

end

end A116913.P8011043193493461509

namespace A116913

/-- `∑{d}[n+1, C(#, 2)+#²]` -/
def P8011043193493461509.Spec : Prop :=
  ∀ n, (P8011043193493461509.a n : ℤ) = A116913 (n + 1)

end A116913

/-! ## A116913.P7655727388712937384

`∑{d}[n+1, A000326(#)]`
-/

namespace A116913.P7655727388712937384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000326 d

end

end A116913.P7655727388712937384

namespace A116913

/-- `∑{d}[n+1, A000326(#)]` -/
def P7655727388712937384.Spec : Prop :=
  ∀ n, P7655727388712937384.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P9790472179940062607

`∑{d}[n+1, sqrt(A100255(#))]`
-/

namespace A116913.P9790472179940062607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A100255 d : ℝ)

end

end A116913.P9790472179940062607

namespace A116913

/-- `∑{d}[n+1, sqrt(A100255(#))]` -/
def P9790472179940062607.Spec : Prop :=
  ∀ n, P9790472179940062607.a n = (A116913 (n + 1) : ℝ)

end A116913

/-! ## A116913.P672794147196490623

`A069153(n+1)+A001157(n+1)`
-/

namespace A116913.P672794147196490623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) + A001157 (n + 1)

end

end A116913.P672794147196490623

namespace A116913

/-- `A069153(n+1)+A001157(n+1)` -/
def P672794147196490623.Spec : Prop :=
  ∀ n, P672794147196490623.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P6291381899726626804

`A086666(n+1)+A007437(n+1)`
-/

namespace A116913.P6291381899726626804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086666 (n + 1) + A007437 (n + 1)

end

end A116913.P6291381899726626804

namespace A116913

/-- `A086666(n+1)+A007437(n+1)` -/
def P6291381899726626804.Spec : Prop :=
  ∀ n, P6291381899726626804.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P3832402737218942973

`A309730(n+1)+A065608(n+1)`
-/

namespace A116913.P3832402737218942973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309730 (n + 1) + A065608 (n + 1)

end

end A116913.P3832402737218942973

namespace A116913

/-- `A309730(n+1)+A065608(n+1)` -/
def P3832402737218942973.Spec : Prop :=
  ∀ n, P3832402737218942973.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P7961729810181106099

`A278945(n+1)-A069153(n+1)`
-/

namespace A116913.P7961729810181106099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278945 (n + 1) - A069153 (n + 1)

end

end A116913.P7961729810181106099

namespace A116913

/-- `A278945(n+1)-A069153(n+1)` -/
def P7961729810181106099.Spec : Prop :=
  ∀ n, P7961729810181106099.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P4320410779638263623

`A007437(n+1)+2*A069153(n+1)`
-/

namespace A116913.P4320410779638263623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) + 2 * A069153 (n + 1)

end

end A116913.P4320410779638263623

namespace A116913

/-- `A007437(n+1)+2*A069153(n+1)` -/
def P4320410779638263623.Spec : Prop :=
  ∀ n, P4320410779638263623.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P6818767761733862547

`2*A001157(n+1)-A007437(n+1)`
-/

namespace A116913.P6818767761733862547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001157 (n + 1) - A007437 (n + 1)

end

end A116913.P6818767761733862547

namespace A116913

/-- `2*A001157(n+1)-A007437(n+1)` -/
def P6818767761733862547.Spec : Prop :=
  ∀ n, P6818767761733862547.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P9829003112821916114

`A001157(n+1)+A086666(n+1)/2`
-/

namespace A116913.P9829003112821916114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) + (A086666 (n + 1) : ℚ) / 2

end

end A116913.P9829003112821916114

namespace A116913

/-- `A001157(n+1)+A086666(n+1)/2` -/
def P9829003112821916114.Spec : Prop :=
  ∀ n, P9829003112821916114.a n = (A116913 (n + 1) : ℚ)

end A116913

/-! ## A116913.P15032763382486001357

`2*A278945(n+1)-A278947(n+1)`
-/

namespace A116913.P15032763382486001357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278945 (n + 1) - A278947 (n + 1)

end

end A116913.P15032763382486001357

namespace A116913

/-- `2*A278945(n+1)-A278947(n+1)` -/
def P15032763382486001357.Spec : Prop :=
  ∀ n, P15032763382486001357.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P14820042336303310668

`∑{d}[n+1, A000005(#)*A133725((n+1)/#)]`
-/

namespace A116913.P14820042336303310668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A133725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116913.P14820042336303310668

namespace A116913

/-- `∑{d}[n+1, A000005(#)*A133725((n+1)/#)]` -/
def P14820042336303310668.Spec : Prop :=
  ∀ n, P14820042336303310668.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P4091308500385898901

`A000203(n+1)+A086666(n+1)+A069153(n+1)`
-/

namespace A116913.P4091308500385898901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A086666 (n + 1) + A069153 (n + 1))

end

end A116913.P4091308500385898901

namespace A116913

/-- `A000203(n+1)+A086666(n+1)+A069153(n+1)` -/
def P4091308500385898901.Spec : Prop :=
  ∀ n, P4091308500385898901.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P7526298868340019003

`A001157(n+1)+A363610(n+1)+A065608(n+1)`
-/

namespace A116913.P7526298868340019003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + (A363610 (n + 1) + A065608 (n + 1))

end

end A116913.P7526298868340019003

namespace A116913

/-- `A001157(n+1)+A363610(n+1)+A065608(n+1)` -/
def P7526298868340019003.Spec : Prop :=
  ∀ n, P7526298868340019003.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P336822607703853829

`A001157(n+1)+A007437(n+1)-A000203(n+1)`
-/

namespace A116913.P336822607703853829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + (A007437 (n + 1) - A000203 (n + 1))

end

end A116913.P336822607703853829

namespace A116913

/-- `A001157(n+1)+A007437(n+1)-A000203(n+1)` -/
def P336822607703853829.Spec : Prop :=
  ∀ n, P336822607703853829.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P9198892326029917325

`A000203(n+1)+A278947(n+1)-A001157(n+1)`
-/

namespace A116913.P9198892326029917325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A278947 (n + 1) - A001157 (n + 1))

end

end A116913.P9198892326029917325

namespace A116913

/-- `A000203(n+1)+A278947(n+1)-A001157(n+1)` -/
def P9198892326029917325.Spec : Prop :=
  ∀ n, P9198892326029917325.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P11027545572370464196

`A000203(n+1)+A278945(n+1)-A007437(n+1)`
-/

namespace A116913.P11027545572370464196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A278945 (n + 1) - A007437 (n + 1))

end

end A116913.P11027545572370464196

namespace A116913

/-- `A000203(n+1)+A278945(n+1)-A007437(n+1)` -/
def P11027545572370464196.Spec : Prop :=
  ∀ n, P11027545572370464196.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P12366568294587509196

`A007437(n+1)+A278945(n+1)-A001157(n+1)`
-/

namespace A116913.P12366568294587509196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) + (A278945 (n + 1) - A001157 (n + 1))

end

end A116913.P12366568294587509196

namespace A116913

/-- `A007437(n+1)+A278945(n+1)-A001157(n+1)` -/
def P12366568294587509196.Spec : Prop :=
  ∀ n, P12366568294587509196.a n = A116913 (n + 1)

end A116913

/-! ## A116913.P7142893304089023568

`A000203(n+1)+A309730(n+1)-A000005(n+1)`
-/

namespace A116913.P7142893304089023568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A309730 (n + 1) - A000005 (n + 1))

end

end A116913.P7142893304089023568

namespace A116913

/-- `A000203(n+1)+A309730(n+1)-A000005(n+1)` -/
def P7142893304089023568.Spec : Prop :=
  ∀ n, P7142893304089023568.a n = A116913 (n + 1)

end A116913

/-!
# A116914: Number of UUDD's, where U=(1,1) and D=(1,-1), in all hill-free Dyck paths of semilength n (a hill in a Dyck path is a peak at level 1).

The programs for A116914, the canonical program `A116914.P14835137165361344811` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116914 has offset 2).

The definition of A116914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116914.P14835137165361344811

`A114515(n)+A026641(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116914

/-- `A114515(n)+A026641(n)` -/
def P14835137165361344811.Spec : Prop :=
  ∀ n, P14835137165361344811.a n = A116914 (n + 2)

theorem P14835137165361344811.correct : P14835137165361344811.Spec := by
  intro n
  simp only [A116914, Nat.add_sub_cancel]

end A116914

/-! ## A116914.P16799020601284190962

`∑[A026641(n)-A065601(n)]`
-/

namespace A116914.P16799020601284190962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n - A065601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116914.P16799020601284190962

namespace A116914

/-- `∑[A026641(n)-A065601(n)]` -/
def P16799020601284190962.Spec : Prop :=
  ∀ n, P16799020601284190962.a n = A116914 (n + 2)

end A116914

/-! ## A116914.P1653515744841612021

`A389115(n)+A119012(n+1)`
-/

namespace A116914.P1653515744841612021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389115 n + A119012 (n + 1)

end

end A116914.P1653515744841612021

namespace A116914

/-- `A389115(n)+A119012(n+1)` -/
def P1653515744841612021.Spec : Prop :=
  ∀ n, P1653515744841612021.a n = A116914 (n + 2)

end A116914

/-! ## A116914.P13496843261203765786

`A114515(n)+A109078(2*n)`
-/

namespace A116914.P13496843261203765786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 n + A109078 (2 * n)

end

end A116914.P13496843261203765786

namespace A116914

/-- `A114515(n)+A109078(2*n)` -/
def P13496843261203765786.Spec : Prop :=
  ∀ n, P13496843261203765786.a n = A116914 (n + 2)

end A116914

/-! ## A116914.P3440762181528967099

`A014300(n+1)+A114515(n)-A014301(n+1)`
-/

namespace A116914.P3440762181528967099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) + (A114515 n - A014301 (n + 1))

end

end A116914.P3440762181528967099

namespace A116914

/-- `A014300(n+1)+A114515(n)-A014301(n+1)` -/
def P3440762181528967099.Spec : Prop :=
  ∀ n, P3440762181528967099.a n = A116914 (n + 2)

end A116914

/-! ## A116914.P2974159165944094423

`A114590(n)-A114515(n+1)`
-/

namespace A116914.P2974159165944094423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114590 n - A114515 (n + 1)

end

end A116914.P2974159165944094423

namespace A116914

/-- `A114590(n)-A114515(n+1)` -/
def P2974159165944094423.Spec : Prop :=
  ∀ n, P2974159165944094423.a n = A116914 (n + 2)

end A116914

/-! ## A116914.P13236106215745477112

`A014301(n+2)-2*A114515(n+1)`
-/

namespace A116914.P13236106215745477112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 2) - 2 * A114515 (n + 1)

end

end A116914.P13236106215745477112

namespace A116914

/-- `A014301(n+2)-2*A114515(n+1)` -/
def P13236106215745477112.Spec : Prop :=
  ∀ n, P13236106215745477112.a n = A116914 (n + 2)

end A116914

/-! ## A116914.P14412926965671284977

`A114515(n)+A109244(∑[n])`
-/

namespace A116914.P14412926965671284977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 n + A109244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116914.P14412926965671284977

namespace A116914

/-- `A114515(n)+A109244(∑[n])` -/
def P14412926965671284977.Spec : Prop :=
  ∀ n, P14412926965671284977.a n = A116914 (n + 2)

end A116914

/-! ## A116914.P10584929140242268914

`A158815(∑[n+1]+1)`
-/

namespace A116914.P10584929140242268914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158815 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A116914.P10584929140242268914

namespace A116914

/-- `A158815(∑[n+1]+1)` -/
def P10584929140242268914.Spec : Prop :=
  ∀ n, P10584929140242268914.a n = A116914 (n + 2)

end A116914

/-! ## A116914.P2398314781938541822

`A201635(A034856(n+1))+A114515(n)`
-/

namespace A116914.P2398314781938541822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A034856 (n + 1)).toNat + A114515 n

end

end A116914.P2398314781938541822

namespace A116914

/-- `A201635(A034856(n+1))+A114515(n)` -/
def P2398314781938541822.Spec : Prop :=
  ∀ n, P2398314781938541822.a n = A116914 (n + 2)

end A116914

/-!
# A116915: Expansion of f(-x, -x^4)^2 / f(-x, -x^2) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A116915, the canonical program `A116915.P15025365533881428146` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116915 has offset 0).

The definition of A116915 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116915.P15025365533881428146

`-A010815(5*n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A116915

/-- `-A010815(5*n+2)` -/
def P15025365533881428146.Spec : Prop :=
  ∀ n, P15025365533881428146.a n = A116915 n

theorem P15025365533881428146.correct : P15025365533881428146.Spec := by
  intro n
  simp only [A116915]

end A116915

/-! ## A116915.P6242011421299420928

`A257628(5*n+2)`
-/

namespace A116915.P6242011421299420928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (5 * n + 2)

end

end A116915.P6242011421299420928

namespace A116915

/-- `A257628(5*n+2)` -/
def P6242011421299420928.Spec : Prop :=
  ∀ n, P6242011421299420928.a n = A116915 n

end A116915

/-! ## A116915.P2051958609268901792

`A147843(4*n+2+n)/(4*n+2+n)`
-/

namespace A116915.P2051958609268901792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147843 (4 * n + 2 + n) : ℚ) / (4 * n + 2 + n : ℚ)

end

end A116915.P2051958609268901792

namespace A116915

/-- `A147843(4*n+2+n)/(4*n+2+n)` -/
def P2051958609268901792.Spec : Prop :=
  ∀ n, P2051958609268901792.a n = (A116915 n : ℚ)

theorem P2051958609268901792.correct : P2051958609268901792.Spec := by
  intro n
  simp only [A116915, Nat.add_sub_cancel, A116915.P2051958609268901792.a, A116915.P15025365533881428146.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A147843, A147843.P14429766809705781327.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A116915

/-! ## A116915.P1949480257654840810

`A257628(A016873(n))^3`
-/

namespace A116915.P1949480257654840810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (A016873 n).toNat ^ 3

end

end A116915.P1949480257654840810

namespace A116915

/-- `A257628(A016873(n))^3` -/
def P1949480257654840810.Spec : Prop :=
  ∀ n, P1949480257654840810.a n = A116915 n

end A116915

/-! ## A116915.P6217551590184479034

`A000038(n+1)-A010815(5*n+2)`
-/

namespace A116915.P6217551590184479034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A010815 (5 * n + 2)

end

end A116915.P6217551590184479034

namespace A116915

/-- `A000038(n+1)-A010815(5*n+2)` -/
def P6217551590184479034.Spec : Prop :=
  ∀ n, P6217551590184479034.a n = A116915 n

theorem P6217551590184479034.correct : P6217551590184479034.Spec := by
  intro n
  simp only [A116915, Nat.add_sub_cancel, A116915.P6217551590184479034.a, A116915.P15025365533881428146.a, A000038, A000038.P13734959004655594922.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A000007, A000007.P6599383543502402472.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A116915

/-! ## A116915.P9735616487912289586

`A005369(or(1, n))-A010815(5*n+2)`
-/

namespace A116915.P9735616487912289586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (Nat.lor 1 n) - A010815 (5 * n + 2)

end

end A116915.P9735616487912289586

namespace A116915

/-- `A005369(or(1, n))-A010815(5*n+2)` -/
def P9735616487912289586.Spec : Prop :=
  ∀ n, P9735616487912289586.a n = A116915 n

end A116915

/-! ## A116915.P727484567102439143

`A057077(n)*A206958(A016873(n))`
-/

namespace A116915.P727484567102439143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A206958 (A016873 n).toNat

end

end A116915.P727484567102439143

namespace A116915

/-- `A057077(n)*A206958(A016873(n))` -/
def P727484567102439143.Spec : Prop :=
  ∀ n, P727484567102439143.a n = A116915 n

end A116915

/-! ## A116915.P8490705662482270183

`or(A000007(n), A257628(A016873(n)))`
-/

namespace A116915.P8490705662482270183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257628 (A016873 n).toNat)

end

end A116915.P8490705662482270183

namespace A116915

/-- `or(A000007(n), A257628(A016873(n)))` -/
def P8490705662482270183.Spec : Prop :=
  ∀ n, P8490705662482270183.a n = A116915 n

end A116915

/-! ## A116915.P13154743633958786034

`A000007(n+1)-A010815(A016873(n))`
-/

namespace A116915.P13154743633958786034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A010815 (A016873 n).toNat

end

end A116915.P13154743633958786034

namespace A116915

/-- `A000007(n+1)-A010815(A016873(n))` -/
def P13154743633958786034.Spec : Prop :=
  ∀ n, P13154743633958786034.a n = A116915 n

end A116915

/-! ## A116915.P15069755585847628679

`A010815(A008587(n)+2)/or(-1, A040005(n))`
-/

namespace A116915.P15069755585847628679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (A008587 n + 2).toNat : ℚ) / (Int.lor (-1) (A040005 n) : ℚ)

end

end A116915.P15069755585847628679

namespace A116915

/-- `A010815(A008587(n)+2)/or(-1, A040005(n))` -/
def P15069755585847628679.Spec : Prop :=
  ∀ n, P15069755585847628679.a n = (A116915 n : ℚ)

end A116915

/-! ## A116915.P1240763289803422353

`A010815(A047221(2*(n+1)))-A010815(A047221(2*n+1))`
-/

namespace A116915.P1240763289803422353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A047221 (2 * (n + 1))).toNat - A010815 (A047221 (2 * n + 1)).toNat

end

end A116915.P1240763289803422353

namespace A116915

/-- `A010815(A047221(2*(n+1)))-A010815(A047221(2*n+1))` -/
def P1240763289803422353.Spec : Prop :=
  ∀ n, P1240763289803422353.a n = A116915 n

end A116915

/-! ## A116915.P5873634282510916627

`5*n+2-A286956(5*n+2)`
-/

namespace A116915.P5873634282510916627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 2 : ℤ) - A286956 (5 * n + 2)

end

end A116915.P5873634282510916627

namespace A116915

/-- `5*n+2-A286956(5*n+2)` -/
def P5873634282510916627.Spec : Prop :=
  ∀ n, P5873634282510916627.a n = A116915 n

theorem P5873634282510916627.correct : P5873634282510916627.Spec := by
  intro n
  simp only [A116915, Nat.add_sub_cancel, A116915.P5873634282510916627.a, A116915.P15025365533881428146.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A286956, A286956.P16005335099664677132.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A116915

/-! ## A116915.P15853385364073638444

`1-A007706(5*n+2)`
-/

namespace A116915.P15853385364073638444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007706 (5 * n + 2)

end

end A116915.P15853385364073638444

namespace A116915

/-- `1-A007706(5*n+2)` -/
def P15853385364073638444.Spec : Prop :=
  ∀ n, P15853385364073638444.a n = A116915 n

end A116915

/-! ## A116915.P11265942923248256331

`A007318(∑[n])-(A010815(A016873(n))+1)`
-/

namespace A116915.P11265942923248256331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - (A010815 (A016873 n).toNat + 1)

end

end A116915.P11265942923248256331

namespace A116915

/-- `A007318(∑[n])-(A010815(A016873(n))+1)` -/
def P11265942923248256331.Spec : Prop :=
  ∀ n, P11265942923248256331.a n = A116915 n

end A116915

/-!
# A116916: Expansion of q^(-1/8) * (eta(q)^3 + 3 * eta(q^9)^3) in powers of q^3.

The programs for A116916, the canonical program `A116916.P8000741087611387261` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116916 has offset 0).

The definition of A116916 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116916.P8000741087611387261

`A010816(3*n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116916

/-- `A010816(3*n)` -/
def P8000741087611387261.Spec : Prop :=
  ∀ n, P8000741087611387261.a n = A116916 n

theorem P8000741087611387261.correct : P8000741087611387261.Spec := by
  intro n
  simp only [A116916]

end A116916

/-! ## A116916.P7696603383921445889

`(-1)^n*A133079(n)`
-/

namespace A116916.P7696603383921445889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A133079 n

end

end A116916.P7696603383921445889

namespace A116916

/-- `(-1)^n*A133079(n)` -/
def P7696603383921445889.Spec : Prop :=
  ∀ n, P7696603383921445889.a n = A116916 n

end A116916

/-! ## A116916.P6598383373196411782

`A010815(n)*A080332(n)`
-/

namespace A116916.P6598383373196411782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A080332 n

end

end A116916.P6598383373196411782

namespace A116916

/-- `A010815(n)*A080332(n)` -/
def P6598383373196411782.Spec : Prop :=
  ∀ n, P6598383373196411782.a n = A116916 n

end A116916

/-! ## A116916.P1921688418030188740

`A133079(n)*A133985(n)`
-/

namespace A116916.P1921688418030188740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133079 n * A133985 n

end

end A116916.P1921688418030188740

namespace A116916

/-- `A133079(n)*A133985(n)` -/
def P1921688418030188740.Spec : Prop :=
  ∀ n, P1921688418030188740.a n = A116916 n

end A116916

/-! ## A116916.P2623581920545324274

`A121373(n)*A178902(n)`
-/

namespace A116916.P2623581920545324274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A178902 n

end

end A116916.P2623581920545324274

namespace A116916

/-- `A121373(n)*A178902(n)` -/
def P2623581920545324274.Spec : Prop :=
  ∀ n, P2623581920545324274.a n = A116916 n

end A116916

/-! ## A116916.P4844747267054787551

`A133079(n)/A033999(n)`
-/

namespace A116916.P4844747267054787551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133079 n : ℚ) / (A033999 n : ℚ)

end

end A116916.P4844747267054787551

namespace A116916

/-- `A133079(n)/A033999(n)` -/
def P4844747267054787551.Spec : Prop :=
  ∀ n, P4844747267054787551.a n = (A116916 n : ℚ)

end A116916

/-! ## A116916.P9559071218568093677

`A080332(n)/A010815(lcm(n, A010815(n)))`
-/

namespace A116916.P9559071218568093677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080332 n : ℚ) / (A010815 (Int.lcm (n : ℤ) (A010815 n)) : ℚ)

end

end A116916.P9559071218568093677

namespace A116916

/-- `A080332(n)/A010815(lcm(n, A010815(n)))` -/
def P9559071218568093677.Spec : Prop :=
  ∀ n, P9559071218568093677.a n = (A116916 n : ℚ)

end A116916

/-! ## A116916.P414389154926844353

`A076756(3*n)*A198954(3*n)`
-/

namespace A116916.P414389154926844353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (3 * n) * A198954 (3 * n)

end

end A116916.P414389154926844353

namespace A116916

/-- `A076756(3*n)*A198954(3*n)` -/
def P414389154926844353.Spec : Prop :=
  ∀ n, P414389154926844353.a n = A116916 n

end A116916

/-! ## A116916.P12828226221364664046

`A027170(3*n)*A197870(3*n)`
-/

namespace A116916.P12828226221364664046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (3 * n) * A197870 (3 * n)

end

end A116916.P12828226221364664046

namespace A116916

/-- `A027170(3*n)*A197870(3*n)` -/
def P12828226221364664046.Spec : Prop :=
  ∀ n, P12828226221364664046.a n = A116916 n

end A116916

/-! ## A116916.P13816740190900618212

`A106459(3*n)*A133089(3*n)`
-/

namespace A116916.P13816740190900618212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (3 * n) * A133089 (3 * n)

end

end A116916.P13816740190900618212

namespace A116916

/-- `A106459(3*n)*A133089(3*n)` -/
def P13816740190900618212.Spec : Prop :=
  ∀ n, P13816740190900618212.a n = A116916 n

end A116916

/-! ## A116916.P10011256311085589604

`A066170(3*n)*A198954(3*n)`
-/

namespace A116916.P10011256311085589604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (3 * n) * A198954 (3 * n)

end

end A116916.P10011256311085589604

namespace A116916

/-- `A066170(3*n)*A198954(3*n)` -/
def P10011256311085589604.Spec : Prop :=
  ∀ n, P10011256311085589604.a n = A116916 n

end A116916

/-! ## A116916.P9872016604199907721

`A133089(3*n)*A133988(3*n)`
-/

namespace A116916.P9872016604199907721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133089 (3 * n) * A133988 (3 * n)

end

end A116916.P9872016604199907721

namespace A116916

/-- `A133089(3*n)*A133988(3*n)` -/
def P9872016604199907721.Spec : Prop :=
  ∀ n, P9872016604199907721.a n = A116916 n

end A116916

/-! ## A116916.P4482031083269151066

`A057077(2*A235963(n))*A134756(n)`
-/

namespace A116916.P4482031083269151066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * A235963 n).toNat * A134756 n

end

end A116916.P4482031083269151066

namespace A116916

/-- `A057077(2*A235963(n))*A134756(n)` -/
def P4482031083269151066.Spec : Prop :=
  ∀ n, P4482031083269151066.a n = A116916 n

end A116916

/-! ## A116916.P4253080916266491469

`A134756(n)*A143062(n)`
-/

namespace A116916.P4253080916266491469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134756 n * A143062 n

end

end A116916.P4253080916266491469

namespace A116916

/-- `A134756(n)*A143062(n)` -/
def P4253080916266491469.Spec : Prop :=
  ∀ n, P4253080916266491469.a n = A116916 n

end A116916

/-! ## A116916.P7718520108866015420

`A021010(3*n)*A198954(3*n)`
-/

namespace A116916.P7718520108866015420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (3 * n) * A198954 (3 * n)

end

end A116916.P7718520108866015420

namespace A116916

/-- `A021010(3*n)*A198954(3*n)` -/
def P7718520108866015420.Spec : Prop :=
  ∀ n, P7718520108866015420.a n = A116916 n

end A116916

/-! ## A116916.P12717387438394900721

`A202394(3*n)`
-/

namespace A116916.P12717387438394900721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202394 (3 * n)

end

end A116916.P12717387438394900721

namespace A116916

/-- `A202394(3*n)` -/
def P12717387438394900721.Spec : Prop :=
  ∀ n, P12717387438394900721.a n = A116916 n

end A116916

/-! ## A116916.P10683688451612372657

`A106459(3*n)*A204850(3*n)`
-/

namespace A116916.P10683688451612372657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (3 * n) * A204850 (3 * n)

end

end A116916.P10683688451612372657

namespace A116916

/-- `A106459(3*n)*A204850(3*n)` -/
def P10683688451612372657.Spec : Prop :=
  ∀ n, P10683688451612372657.a n = A116916 n

end A116916

/-!
# A116917: a(1)=a(2)=1. a(n) = A006530(a(n-1)) + A006530(a(n-2)).

The programs for A116917, the canonical program `A116917.P8864945759529966408` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116917 has offset 1).

The definition of A116917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116917.P8864945759529966408

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8, a(6)=7, a(7)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116917

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P8864945759529966408.Spec : Prop :=
  ∀ n, P8864945759529966408.a n = A116917 (n + 1)

theorem P8864945759529966408.correct : P8864945759529966408.Spec := by
  intro n
  simp only [A116917, Nat.add_sub_cancel]

end A116917

/-! ## A116917.P3835802282866440924

`A006530(a(n-1))+A006530(a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A116917.P3835802282866440924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006530 (a (n - 1)).toNat + A006530 (a (n - 2)).toNat

end

end A116917.P3835802282866440924

namespace A116917

/-- `A006530(a(n-1))+A006530(a(n-2))` -/
def P3835802282866440924.Spec : Prop :=
  ∀ n, P3835802282866440924.a n = A116917 (n + 1)

end A116917

/-!
# A116918: a(1)=a(2)=1. a(n) = A020639(a(n-1)) + A006530(a(n-2)).

The programs for A116918, there is no canonical definition to state claims against.
-/

/-! ## A116918.P6876933034642781152

`A020639(a(n-1))+A006530(a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A116918.P6876933034642781152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A020639 (a (n - 1)).toNat + A006530 (a (n - 2)).toNat

end

end A116918.P6876933034642781152

/-!
# A116919: a(0)=1. a(n) = A006530(a(n-1)) + n.

The programs for A116919, the canonical program `A116919.P3435591609378152600` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116919 has offset 0).

The definition of A116919 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116919.P3435591609378152600

`A006530(a(n-1))+n` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A116919

/-- `A006530(a(n-1))+n` -/
def P3435591609378152600.Spec : Prop :=
  ∀ n, P3435591609378152600.a n = A116919 n

theorem P3435591609378152600.correct : P3435591609378152600.Spec := by
  intro n
  simp only [A116919]

end A116919

/-! ## A116919.P17180903716058405445

`2*n-(n-A006530(floor(a(n-1))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A116919.P17180903716058405445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - A006530 (a (n - 1)).toNat)

end

end A116919.P17180903716058405445

namespace A116919

/-- `2*n-(n-A006530(floor(a(n-1))))` -/
def P17180903716058405445.Spec : Prop :=
  ∀ n, P17180903716058405445.a n = A116919 n

end A116919

/-! ## A116919.P13206537322133366198

`A005843(n)-(n-A006530(a(n-1)))` with `a(0)=1`
-/

namespace A116919.P13206537322133366198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 n - ((n : ℤ) - A006530 (a (n - 1)).toNat)

end

end A116919.P13206537322133366198

namespace A116919

/-- `A005843(n)-(n-A006530(a(n-1)))` -/
def P13206537322133366198.Spec : Prop :=
  ∀ n, P13206537322133366198.a n = A116919 n

end A116919

/-! ## A116919.P17331179670543666776

`A111089(a(n-1))+n` with `a(0)=1, a(1)=2`
-/

namespace A116919.P17331179670543666776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A111089 (a (n - 1)).toNat + (n : ℤ)

end

end A116919.P17331179670543666776

namespace A116919

/-- `A111089(a(n-1))+n` -/
def P17331179670543666776.Spec : Prop :=
  ∀ n, P17331179670543666776.a n = A116919 n

end A116919

/-! ## A116919.P4328112758992122285

`A070777(a(n-1))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A116919.P4328112758992122285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A070777 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A116919.P4328112758992122285

namespace A116919

/-- `A070777(a(n-1))+n+1` -/
def P4328112758992122285.Spec : Prop :=
  ∀ n, P4328112758992122285.a n = A116919 n

end A116919

/-! ## A116919.P3233880222821164437

`A014963(A053585(a(n-1)))+n` with `a(0)=1`
-/

namespace A116919.P3233880222821164437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (A053585 (a (n - 1)).toNat).toNat + (n : ℤ)

end

end A116919.P3233880222821164437

namespace A116919

/-- `A014963(A053585(a(n-1)))+n` -/
def P3233880222821164437.Spec : Prop :=
  ∀ n, P3233880222821164437.a n = A116919 n

end A116919

/-! ## A116919.P3667998813155758315

`A085392(2*a(n-1))+n` with `a(0)=1`
-/

namespace A116919.P3667998813155758315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085392 (2 * a (n - 1)).toNat + (n : ℤ)

end

end A116919.P3667998813155758315

namespace A116919

/-- `A085392(2*a(n-1))+n` -/
def P3667998813155758315.Spec : Prop :=
  ∀ n, P3667998813155758315.a n = A116919 n

end A116919

/-! ## A116919.P17179647956175492471

`2*n-(n-A006530(A000010(a(n-1)²)))` with `a(0)=1`
-/

namespace A116919.P17179647956175492471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - A006530 (A000010 (a (n - 1) ^ 2).toNat).toNat)

end

end A116919.P17179647956175492471

namespace A116919

/-- `2*n-(n-A006530(A000010(a(n-1)²)))` -/
def P17179647956175492471.Spec : Prop :=
  ∀ n, P17179647956175492471.a n = A116919 n

end A116919

/-! ## A116919.P11445958758123311460

`A082061(a(n-1)²)+n` with `a(0)=1`
-/

namespace A116919.P11445958758123311460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082061 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A116919.P11445958758123311460

namespace A116919

/-- `A082061(a(n-1)²)+n` -/
def P11445958758123311460.Spec : Prop :=
  ∀ n, P11445958758123311460.a n = A116919 n

end A116919

/-!
# A116920: a(0)=1. a(n) = A020639(a(n-1)) + n.

The programs for A116920, there is no canonical definition to state claims against.
-/

/-! ## A116920.P581697916149980700

`A020639(a(n-1))+n` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A116920.P581697916149980700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (a (n - 1)).toNat + (n : ℤ)

end

end A116920.P581697916149980700

/-! ## A116920.P11005984561469458046

`A057237(a(n-1))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A116920.P11005984561469458046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A057237 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A116920.P11005984561469458046

/-! ## A116920.P6223375892052423151

`A020639(abs(a(n-1)))-(n-2*n)` with `a(0)=1`
-/

namespace A116920.P6223375892052423151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 |a (n - 1)|.toNat - ((n : ℤ) - (2 * n : ℤ))

end

end A116920.P6223375892052423151

/-! ## A116920.P11948859273421576482

`A005843(n)-(n-A020639(a(n-1)))` with `a(0)=1`
-/

namespace A116920.P11948859273421576482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 n - ((n : ℤ) - A020639 (a (n - 1)).toNat)

end

end A116920.P11948859273421576482

/-! ## A116920.P6443830040019877242

`A014963(A028233(a(n-1)))+n` with `a(0)=1`
-/

namespace A116920.P6443830040019877242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (A028233 (a (n - 1)).toNat).toNat + (n : ℤ)

end

end A116920.P6443830040019877242

/-! ## A116920.P12328348655655343616

`A284695(A074828(a(n-1)))+n` with `a(0)=1`
-/

namespace A116920.P12328348655655343616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284695 (A074828 (a (n - 1)).toNat).toNat + (n : ℤ)

end

end A116920.P12328348655655343616

/-! ## A116920.P10941504518167106256

`A014673(2*a(n-1))+n` with `a(0)=1`
-/

namespace A116920.P10941504518167106256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014673 (2 * a (n - 1)).toNat + (n : ℤ)

end

end A116920.P10941504518167106256

/-! ## A116920.P288717980357534296

`A074828(a(n-1)²)+n` with `a(0)=1`
-/

namespace A116920.P288717980357534296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074828 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A116920.P288717980357534296

/-! ## A116920.P14562464949184238665

`A107286(a(n-1)²)+n` with `a(0)=1`
-/

namespace A116920.P14562464949184238665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107286 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A116920.P14562464949184238665

/-! ## A116920.P3677117593477613692

`A082067(a(n-1)²)+n` with `a(0)=1`
-/

namespace A116920.P3677117593477613692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082067 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A116920.P3677117593477613692

/-!
# A116921: a(n) = largest integer <= n/2 which is coprime to n.

The programs for A116921, the canonical program `A116921.P13948366025560059566` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116921 has offset 1).

The definition of A116921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116921.P8712898590132319987

`or(1, n)%∑[char[and(n, -3)]]`
-/

namespace A116921.P8712898590132319987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116921.P8712898590132319987

namespace A116921

/-- `or(1, n)%∑[char[and(n, -3)]]` -/
def P8712898590132319987.Spec : Prop :=
  ∀ n, (P8712898590132319987.a n : ℤ) = A116921 (n + 1)

end A116921

/-! ## A116921.P13948366025560059566

`abs(or(n%2, floor((1-n)/2)))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116921

/-- `abs(or(n%2, floor((1-n)/2)))` -/
def P13948366025560059566.Spec : Prop :=
  ∀ n, P13948366025560059566.a n = A116921 (n + 1)

theorem P13948366025560059566.correct : P13948366025560059566.Spec := by
  intro n
  simp only [A116921, Nat.add_sub_cancel]

end A116921

/-! ## A116921.P16487936435388460157

`∑[char[or(2, n)]]-(n-2)%2`
-/

namespace A116921.P16487936435388460157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod ((n : ℤ) - 2) 2

end

end A116921.P16487936435388460157

namespace A116921

/-- `∑[char[or(2, n)]]-(n-2)%2` -/
def P16487936435388460157.Spec : Prop :=
  ∀ n, P16487936435388460157.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P13955735354508982310

`abs(floor(n/2)-Δ[round(n/4)])`
-/

namespace A116921.P13955735354508982310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n : ℚ) / 2⌋ - (f1 (n + 1) - f1 n)|

end

end A116921.P13955735354508982310

namespace A116921

/-- `abs(floor(n/2)-Δ[round(n/4)])` -/
def P13955735354508982310.Spec : Prop :=
  ∀ n, P13955735354508982310.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P4353281975083288236

`a(n-4)+2` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=1`
-/

namespace A116921.P4353281975083288236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 2, 1] fun n a =>
  a (n - 4) + 2

end

end A116921.P4353281975083288236

namespace A116921

/-- `a(n-4)+2` -/
def P4353281975083288236.Spec : Prop :=
  ∀ n, (P4353281975083288236.a n : ℤ) = A116921 (n + 1)

end A116921

/-! ## A116921.P2233298403820780367

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=-1, a(6)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A116921.P2233298403820780367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 0, 1, -1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116921.P2233298403820780367

namespace A116921

/-- `∑[floor(a(n-4))]` -/
def P2233298403820780367.Spec : Prop :=
  ∀ n, P2233298403820780367.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P16509713240421432041

`xor(1, n-2)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A116921.P16509713240421432041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  Int.xor 1 ((n : ℤ) - 2) - a (n - 2)

end

end A116921.P16509713240421432041

namespace A116921

/-- `xor(1, n-2)-a(n-2)` -/
def P16509713240421432041.Spec : Prop :=
  ∀ n, P16509713240421432041.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P11696535311854485660

`floor(n/2-(a(n-1)-1)%2)` with `a(0)=0`
-/

namespace A116921.P11696535311854485660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 2 - (Int.tmod (a (n - 1) - 1) 2 : ℚ)⌋

end

end A116921.P11696535311854485660

namespace A116921

/-- `floor(n/2-(a(n-1)-1)%2)` -/
def P11696535311854485660.Spec : Prop :=
  ∀ n, P11696535311854485660.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P4528401091203265503

`1-(gcd(2, a(n-1))-floor(n/2))` with `a(0)=0, a(1)=1`
-/

namespace A116921.P4528401091203265503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - ((Int.gcd 2 (a (n - 1)) : ℤ) - ⌊(n : ℚ) / 2⌋)

end

end A116921.P4528401091203265503

namespace A116921

/-- `1-(gcd(2, a(n-1))-floor(n/2))` -/
def P4528401091203265503.Spec : Prop :=
  ∀ n, P4528401091203265503.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P4760646273917780457

`1-A116922(n+1)+n`
-/

namespace A116921.P4760646273917780457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A116922 (n + 1) + (n : ℤ)

end

end A116921.P4760646273917780457

namespace A116921

/-- `1-A116922(n+1)+n` -/
def P4760646273917780457.Spec : Prop :=
  ∀ n, P4760646273917780457.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P3747173247293940443

`or(1, n)%∑[and(1, A014255(n))]`
-/

namespace A116921.P3747173247293940443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014255 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 1 n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116921.P3747173247293940443

namespace A116921

/-- `or(1, n)%∑[and(1, A014255(n))]` -/
def P3747173247293940443.Spec : Prop :=
  ∀ n, P3747173247293940443.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P13307425646632183618

`A173989(A348776(n+1))`
-/

namespace A116921.P13307425646632183618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (A348776 (n + 1)).toNat

end

end A116921.P13307425646632183618

namespace A116921

/-- `A173989(A348776(n+1))` -/
def P13307425646632183618.Spec : Prop :=
  ∀ n, P13307425646632183618.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P18214118903895527571

`A026741(n)%A110516(n)`
-/

namespace A116921.P18214118903895527571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 n) (A110516 n)

end

end A116921.P18214118903895527571

namespace A116921

/-- `A026741(n)%A110516(n)` -/
def P18214118903895527571.Spec : Prop :=
  ∀ n, P18214118903895527571.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P11832029849459927599

`A173989(n+1)+A063524(n)`
-/

namespace A116921.P11832029849459927599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (n + 1) + A063524 n

end

end A116921.P11832029849459927599

namespace A116921

/-- `A173989(n+1)+A063524(n)` -/
def P11832029849459927599.Spec : Prop :=
  ∀ n, P11832029849459927599.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P8653159089943806025

`A173989(1-A159075(n)+n)`
-/

namespace A116921.P8653159089943806025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (1 - A159075 n + (n : ℤ)).toNat

end

end A116921.P8653159089943806025

namespace A116921

/-- `A173989(1-A159075(n)+n)` -/
def P8653159089943806025.Spec : Prop :=
  ∀ n, P8653159089943806025.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P15828435932232541521

`A173989(1-(A159075(n)-n))`
-/

namespace A116921.P15828435932232541521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (1 - (A159075 n - (n : ℤ))).toNat

end

end A116921.P15828435932232541521

namespace A116921

/-- `A173989(1-(A159075(n)-n))` -/
def P15828435932232541521.Spec : Prop :=
  ∀ n, P15828435932232541521.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P5870104788799953663

`A047487(n+1)%A066530(n)`
-/

namespace A116921.P5870104788799953663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047487 (n + 1)) (A066530 n)

end

end A116921.P5870104788799953663

namespace A116921

/-- `A047487(n+1)%A066530(n)` -/
def P5870104788799953663.Spec : Prop :=
  ∀ n, P5870104788799953663.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P521304876525510371

`A260181(n+1)%A098180(n)`
-/

namespace A116921.P521304876525510371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260181 (n + 1)) (A098180 n)

end

end A116921.P521304876525510371

namespace A116921

/-- `A260181(n+1)%A098180(n)` -/
def P521304876525510371.Spec : Prop :=
  ∀ n, P521304876525510371.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P9520441854303645671

`A301729(n)%A131055(n+1)`
-/

namespace A116921.P9520441854303645671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301729 n) (A131055 (n + 1))

end

end A116921.P9520441854303645671

namespace A116921

/-- `A301729(n)%A131055(n+1)` -/
def P9520441854303645671.Spec : Prop :=
  ∀ n, P9520441854303645671.a n = A116921 (n + 1)

end A116921

/-! ## A116921.P13713874299729460984

`A392590(n+1)%A080513(n)`
-/

namespace A116921.P13713874299729460984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392590 (n + 1)) (A080513 n)

end

end A116921.P13713874299729460984

namespace A116921

/-- `A392590(n+1)%A080513(n)` -/
def P13713874299729460984.Spec : Prop :=
  ∀ n, P13713874299729460984.a n = A116921 (n + 1)

end A116921

/-!
# A116922: a(n) = smallest integer >= n/2 which is coprime to n.

The programs for A116922, the canonical program `A116922.P12360926255797834100` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116922 has offset 1).

The definition of A116922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116922.P12360926255797834100

`a(n-4)+2` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116922

/-- `a(n-4)+2` -/
def P12360926255797834100.Spec : Prop :=
  ∀ n, (P12360926255797834100.a n : ℤ) = A116922 (n + 1)

theorem P12360926255797834100.correct : P12360926255797834100.Spec := by
  intro n
  simp only [A116922, Nat.add_sub_cancel]

end A116922

/-! ## A116922.P9367311532396681127

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=0, a(5)=2, a(6)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A116922.P9367311532396681127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 0, 2, -1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116922.P9367311532396681127

namespace A116922

/-- `∑[floor(a(n-4))]` -/
def P9367311532396681127.Spec : Prop :=
  ∀ n, P9367311532396681127.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P10520405933779778936

`1-A116921(n+1)+n`
-/

namespace A116922.P10520405933779778936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A116921 (n + 1) + (n : ℤ)

end

end A116922.P10520405933779778936

namespace A116922

/-- `1-A116921(n+1)+n` -/
def P10520405933779778936.Spec : Prop :=
  ∀ n, P10520405933779778936.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P8027968212786922898

`or(∑[A266246(n)], A000035(n))`
-/

namespace A116922.P8027968212786922898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000035 n)

end

end A116922.P8027968212786922898

namespace A116922

/-- `or(∑[A266246(n)], A000035(n))` -/
def P8027968212786922898.Spec : Prop :=
  ∀ n, P8027968212786922898.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P4729956609642274372

`1-A173989(A348776(n+1))+n`
-/

namespace A116922.P4729956609642274372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A173989 (A348776 (n + 1)).toNat + (n : ℤ)

end

end A116922.P4729956609642274372

namespace A116922

/-- `1-A173989(A348776(n+1))+n` -/
def P4729956609642274372.Spec : Prop :=
  ∀ n, P4729956609642274372.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P11511668101867478406

`A033954(Δ[A011848(n)])%(n+1)+1`
-/

namespace A116922.P11511668101867478406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033954 (f1 (n + 1) - f1 n).toNat) (n + 1 : ℤ) + 1

end

end A116922.P11511668101867478406

namespace A116922

/-- `A033954(Δ[A011848(n)])%(n+1)+1` -/
def P11511668101867478406.Spec : Prop :=
  ∀ n, P11511668101867478406.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P8013676663201176065

`A004525(A019428(n)%4+n+1)`
-/

namespace A116922.P8013676663201176065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A019428 n) 4 + (n + 1 : ℤ)).toNat

end

end A116922.P8013676663201176065

namespace A116922

/-- `A004525(A019428(n)%4+n+1)` -/
def P8013676663201176065.Spec : Prop :=
  ∀ n, P8013676663201176065.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P17983168663780096398

`A004525(and(3, A006257(n))+n+1)`
-/

namespace A116922.P17983168663780096398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.land 3 (A006257 n) + (n + 1 : ℤ)).toNat

end

end A116922.P17983168663780096398

namespace A116922

/-- `A004525(and(3, A006257(n))+n+1)` -/
def P17983168663780096398.Spec : Prop :=
  ∀ n, P17983168663780096398.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P652113959731852602

`A004525(Δ[A042948(n)]%(n+1)+n+1)`
-/

namespace A116922.P652113959731852602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ) + (n + 1 : ℤ)).toNat

end

end A116922.P652113959731852602

namespace A116922

/-- `A004525(Δ[A042948(n)]%(n+1)+n+1)` -/
def P652113959731852602.Spec : Prop :=
  ∀ n, P652113959731852602.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P3257309823222733339

`A008619(2*n)-A116921(A008619(2*n))`
-/

namespace A116922.P3257309823222733339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A116921 (A008619 (2 * n)).toNat

end

end A116922.P3257309823222733339

namespace A116922

/-- `A008619(2*n)-A116921(A008619(2*n))` -/
def P3257309823222733339.Spec : Prop :=
  ∀ n, P3257309823222733339.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P10467350537924447066

`or(∑[A266246(n)], A266246(3*n))`
-/

namespace A116922.P10467350537924447066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A266246 (3 * n))

end

end A116922.P10467350537924447066

namespace A116922

/-- `or(∑[A266246(n)], A266246(3*n))` -/
def P10467350537924447066.Spec : Prop :=
  ∀ n, P10467350537924447066.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P7672128716850074844

`1-A157458(A166515(n))+n`
-/

namespace A116922.P7672128716850074844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A157458 (A166515 n).toNat + (n : ℤ)

end

end A116922.P7672128716850074844

namespace A116922

/-- `1-A157458(A166515(n))+n` -/
def P7672128716850074844.Spec : Prop :=
  ∀ n, P7672128716850074844.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P5288564497263669320

`A366191(A225531(n+1))`
-/

namespace A116922.P5288564497263669320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366191 (A225531 (n + 1)).toNat

end

end A116922.P5288564497263669320

namespace A116922

/-- `A366191(A225531(n+1))` -/
def P5288564497263669320.Spec : Prop :=
  ∀ n, P5288564497263669320.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P3377122601859139657

`or(char[2*n+1], A002260(A000982(n)+1))`
-/

namespace A116922.P3377122601859139657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002260 (A000982 n + 1).toNat)

end

end A116922.P3377122601859139657

namespace A116922

/-- `or(char[2*n+1], A002260(A000982(n)+1))` -/
def P3377122601859139657.Spec : Prop :=
  ∀ n, P3377122601859139657.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P3868817181107407739

`1-A317988(A049648(n))+n`
-/

namespace A116922.P3868817181107407739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A317988 (A049648 n).toNat + (n : ℤ)

end

end A116922.P3868817181107407739

namespace A116922

/-- `1-A317988(A049648(n))+n` -/
def P3868817181107407739.Spec : Prop :=
  ∀ n, P3868817181107407739.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P348396084307365733

`A352911(A109606(n+1)+A206297(n+1)-A057427(n))`
-/

namespace A116922.P348396084307365733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (A109606 (n + 1) + (A206297 (n + 1) - A057427 n)).toNat

end

end A116922.P348396084307365733

namespace A116922

/-- `A352911(A109606(n+1)+A206297(n+1)-A057427(n))` -/
def P348396084307365733.Spec : Prop :=
  ∀ n, P348396084307365733.a n = A116922 (n + 1)

end A116922

/-! ## A116922.P10410259151944728016

`A020652(A049706(n))`
-/

namespace A116922.P10410259151944728016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (A049706 n).toNat

end

end A116922.P10410259151944728016

namespace A116922

/-- `A020652(A049706(n))` -/
def P10410259151944728016.Spec : Prop :=
  ∀ n, P10410259151944728016.a n = A116922 (n + 1)

end A116922

/-!
# A116924: Triangle T(n,k) = B(k,n) - B(k-1,n) where B(n,m) = Sum_{i=0..n} binomial(m,i) (3*i+1).

The programs for A116924, there is no canonical definition to state claims against.
-/

/-! ## A116924.P15660196287538845128

`A347823(n)+A141692(n)`
-/

namespace A116924.P15660196287538845128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347823 n + A141692 n

end

end A116924.P15660196287538845128

/-! ## A116924.P2642591683789717934

`3*A103406(n)-A028326(n)`
-/

namespace A116924.P2642591683789717934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A103406 n - A028326 n

end

end A116924.P2642591683789717934

/-! ## A116924.P4869312583169936253

`(3*A002262(n)+1)*A007318(n)`
-/

namespace A116924.P4869312583169936253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A002262 n + 1) * A007318 n

end

end A116924.P4869312583169936253

/-! ## A116924.P1899760316185210834

`(3*A002262(n)+1)*sqrt(A008459(n))`
-/

namespace A116924.P1899760316185210834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * A002262 n + 1 : ℝ) * Real.sqrt (A008459 n : ℝ)

end

end A116924.P1899760316185210834

/-! ## A116924.P18207830460649651421

`A007318(n)*A016777(A002262(n))`
-/

namespace A116924.P18207830460649651421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016777 (A002262 n).toNat

end

end A116924.P18207830460649651421

/-! ## A116924.P5478797549702939640

`A007318(n)*A048785(A059268(n))`
-/

namespace A116924.P5478797549702939640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A048785 (A059268 n).toNat

end

end A116924.P5478797549702939640

/-! ## A116924.P8064214632629486513

`A007318(n)*A143461(A292564(n))`
-/

namespace A116924.P8064214632629486513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A143461 (A292564 n).toNat

end

end A116924.P8064214632629486513

/-! ## A116924.P11283051600800649825

`A007318(n)*A016777(log2(A059268(n)))`
-/

namespace A116924.P11283051600800649825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016777 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A116924.P11283051600800649825

/-! ## A116924.P68165128961170441

`A007318(n)*A016777(A025668(n+1))`
-/

namespace A116924.P68165128961170441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016777 (A025668 (n + 1)).toNat

end

end A116924.P68165128961170441

/-! ## A116924.P16798930575248875797

`A007318(n)*A016777(A025690(n+1))`
-/

namespace A116924.P16798930575248875797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016777 (A025690 (n + 1)).toNat

end

end A116924.P16798930575248875797

/-!
# A116925: Triangle read by rows: row n (n >= 0) consists of the elements g(i, n-i) (0 <= i <= n), where g(r,s) = 1 + Sum_{k=1..r} Product_{i=0..k-1} binomial(r+s-1, s+i) / binomial(r+s-1, i).

The programs for A116925, there is no canonical definition to state claims against.
-/

/-! ## A116925.P10883358282445923963

`A347570(n+1)+A321413(A306209(n))`
-/

namespace A116925.P10883358282445923963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347570 (n + 1) + A321413 (A306209 n).toNat

end

end A116925.P10883358282445923963

/-! ## A116925.P12318479630360632334

`A321413(A306209(n))+A365515(n+1)+1`
-/

namespace A116925.P12318479630360632334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321413 (A306209 n).toNat + (A365515 (n + 1) + 1)

end

end A116925.P12318479630360632334

/-! ## A116925.P1736588454448157683

`A321413(A306209(n))+A199343(A365515(n+1))`
-/

namespace A116925.P1736588454448157683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321413 (A306209 n).toNat + A199343 (A365515 (n + 1)).toNat

end

end A116925.P1736588454448157683

/-! ## A116925.P5771223006074120266

`A365515(n+1)+A365487(A327066(n))`
-/

namespace A116925.P5771223006074120266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (n + 1) + A365487 (A327066 n).toNat

end

end A116925.P5771223006074120266

/-! ## A116925.P3522245876239451959

`A347570(n+1)+A180160(A058276(n))`
-/

namespace A116925.P3522245876239451959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347570 (n + 1) + A180160 (A058276 n).toNat

end

end A116925.P3522245876239451959

/-!
# A116926: Semiprimes k=p*q such that the polynomial (1+x)^k (mod k) has p+q nonzero terms.

The programs for A116926, there is no canonical definition to state claims against.
-/

/-! ## A116926.P14295381549174065387

`filter[A119492(n+1), A280710(#)]`
-/

namespace A116926.P14295381549174065387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A116926.P14295381549174065387

/-! ## A116926.P15018071588155279994

`filter[A119492(n+1), A353471(#)]`
-/

namespace A116926.P15018071588155279994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A116926.P15018071588155279994

/-! ## A116926.P4788861834094875733

`filter[A119492(n+1), A353629(#)]`
-/

namespace A116926.P4788861834094875733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A116926.P4788861834094875733

/-! ## A116926.P7844076697394743950

`filter[A119492(n+1), A353669(#)]`
-/

namespace A116926.P7844076697394743950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A116926.P7844076697394743950

/-! ## A116926.P3180283947311429453

`∩[A006881(n+1), A119492(n+1)]`
-/

namespace A116926.P3180283947311429453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116926.P3180283947311429453

/-!
# A116927: Irregular triangle read by rows: T(n,k) is the number of self-conjugate partitions of n having k 1's (n>=1,k>=0).

The programs for A116927, there is no canonical definition to state claims against.
-/

/-! ## A116927.P18145223162985986983

`and(A243842(A337194(n+1)-1), A243850(n+1))`
-/

namespace A116927.P18145223162985986983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A243842 (A337194 (n + 1) - 1).toNat) (A243850 (n + 1))

end

end A116927.P18145223162985986983

/-! ## A116927.P7731936064601484389

`A011657(lcm((n+1)*∑{d}[n+1, #], ∏{p}[n+1, 1-#]))`
-/

namespace A116927.P7731936064601484389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011657 (Int.lcm (((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) (∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ))))

end

end A116927.P7731936064601484389

/-! ## A116927.P17146331960280015317

`A058305(A055401(A054582(n)²))`
-/

namespace A116927.P17146331960280015317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A055401 (A054582 n ^ 2).toNat).toNat

end

end A116927.P17146331960280015317

/-! ## A116927.P16386415275026862013

`A323239(A117487(n+1)-A323850(n+2))`
-/

namespace A116927.P16386415275026862013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A117487 (n + 1) - A323850 (n + 2)).toNat

end

end A116927.P16386415275026862013

/-! ## A116927.P6596934487272679112

`A011695(A104623(n)+4)`
-/

namespace A116927.P6596934487272679112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011695 (A104623 n + 4).toNat

end

end A116927.P6596934487272679112

/-!
# A116928: Number of 1's in all self-conjugate partitions of n.

The programs for A116928, there is no canonical definition to state claims against.
-/

/-! ## A116928.P2223009359188384888

`A096911(n+1)-a(and(1, n+1))` with `a(0)=1`
-/

namespace A116928.P2223009359188384888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096911 (n + 1) - a (Nat.land 1 (n + 1))

end

end A116928.P2223009359188384888

/-! ## A116928.P3912505141591903405

`A096911(n+1)-Δ[A123108(n)]`
-/

namespace A116928.P3912505141591903405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (n + 1) - (f1 (n + 1) - f1 n)

end

end A116928.P3912505141591903405

/-! ## A116928.P4316668588136013601

`abs(A096911(n+1)-A135528(n+1))`
-/

namespace A116928.P4316668588136013601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096911 (n + 1) - A135528 (n + 1)|

end

end A116928.P4316668588136013601

/-! ## A116928.P17545816977808081844

`A027349(n)+a(n-1)-A033999(n+1)` with `a(0)=1, a(1)=0`
-/

namespace A116928.P17545816977808081844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A027349 n + a (n - 1) - A033999 (n + 1)

end

end A116928.P17545816977808081844

/-! ## A116928.P5242807698617576670

`A028310(A096911(n+1))-A000035(n)`
-/

namespace A116928.P5242807698617576670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A096911 (n + 1)).toNat - A000035 n

end

end A116928.P5242807698617576670

/-! ## A116928.P15628038375191396114

`A028310(A096911(n+1))-Δ[A004526(n)]`
-/

namespace A116928.P15628038375191396114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A096911 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A116928.P15628038375191396114

/-! ## A116928.P14265499101515465399

`A028310(A096911(n+1))-char[A005408(n)]`
-/

namespace A116928.P14265499101515465399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A096911 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A116928.P14265499101515465399

/-! ## A116928.P915100072369293644

`A028310(A096911(n+1))+1-A000034(n)`
-/

namespace A116928.P915100072369293644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A096911 (n + 1)).toNat + (1 - A000034 n)

end

end A116928.P915100072369293644

/-! ## A116928.P16428880981772179635

`A028310(A096911(n+1))-char[A000265(n+1)]`
-/

namespace A116928.P16428880981772179635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A096911 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A116928.P16428880981772179635

/-!
# A116929: Triangle read by rows: T(n,k) is the number of partitions of n into odd parts such that the sum of the parts, counted without multiplicities, is equal to k (n>=1, k>=1).

The programs for A116929, there is no canonical definition to state claims against.
-/

/-! ## A116929.P9580133855961131957

`A037888(A000032(abs(A317302(n))))`
-/

namespace A116929.P9580133855961131957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A000032 |A317302 n|.toNat).toNat

end

end A116929.P9580133855961131957

/-! ## A116929.P3138060872054020443

`A000035(A193630(n))*A219967(n)`
-/

namespace A116929.P3138060872054020443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A193630 n).toNat * A219967 n

end

end A116929.P3138060872054020443

/-! ## A116929.P10164085036959650378

`and(A083093(n), A173441(A173417(n+1)))`
-/

namespace A116929.P10164085036959650378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083093 n) (A173441 (A173417 (n + 1)).toNat)

end

end A116929.P10164085036959650378

/-! ## A116929.P11853834546251652858

`A341022(A292628(n)*A331184(n+1))`
-/

namespace A116929.P11853834546251652858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341022 ((A292628 n * A331184 (n + 1)).toNat + 35)

end

end A116929.P11853834546251652858

/-! ## A116929.P8993635160441195149

`and(A083093(n), A299258(A193857(n+4)))`
-/

namespace A116929.P8993635160441195149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083093 n) (A299258 (A193857 (n + 4)).toNat)

end

end A116929.P8993635160441195149

/-!
# A116930: Sum of parts, counted without multiplicities, in all partitions of n into odd parts.

The programs for A116930, there is no canonical definition to state claims against.
-/

/-! ## A116930.P12176994626703834174

`∑[A038348(n)-A270144(n)]`
-/

namespace A116930.P12176994626703834174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n - A270144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116930.P12176994626703834174

/-! ## A116930.P9660615820227294049

`∑[∑[A025147(n)]-A270144(n)]`
-/

namespace A116930.P9660615820227294049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A270144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116930.P9660615820227294049

/-! ## A116930.P13020227385984850630

`A096914(n+2)-∑[A270144(n)]`
-/

namespace A116930.P13020227385984850630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096914 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116930.P13020227385984850630

/-! ## A116930.P8349265114777308874

`∑[A015723(n+1)-A265251(n+1)-A270144(n)]`
-/

namespace A116930.P8349265114777308874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (n + 1) - A265251 (n + 1) - A270144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116930.P8349265114777308874

/-! ## A116930.P844949853197118173

`∑[∑[A096765(n+1)]-A270144(n)]`
-/

namespace A116930.P844949853197118173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A270144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116930.P844949853197118173

/-! ## A116930.P15727465554674783746

`∑[A265251(n+2)+A090858(n+2)-A270144(n)]`
-/

namespace A116930.P15727465554674783746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265251 (n + 2) + A090858 (n + 2) - A270144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116930.P15727465554674783746

/-!
# A116931: Number of partitions of n in which each part, with the possible exception of the largest, occurs at least twice.

The programs for A116931, there is no canonical definition to state claims against.
-/

/-! ## A116931.P5341316598138981200

`A000041(n+1)-A237666(n+1)`
-/

namespace A116931.P5341316598138981200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237666 (n + 1)

end

end A116931.P5341316598138981200

/-! ## A116931.P3477672929324551226

`A000070(n+1)-(A237666(n+1)+A000070(n))`
-/

namespace A116931.P3477672929324551226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A237666 (n + 1) + A000070 n)

end

end A116931.P3477672929324551226

/-! ## A116931.P83845600262996774

`A268193(∑[A003056(n)]+1)`
-/

namespace A116931.P83845600262996774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268193 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A116931.P83845600262996774

/-! ## A116931.P8750964128995679297

`A268193(A006463(n+1)+1)`
-/

namespace A116931.P8750964128995679297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268193 (A006463 (n + 1) + 1).toNat

end

end A116931.P8750964128995679297

/-! ## A116931.P3195693427489125682

`A268193(∑[∑[A010054(n)]]-n)`
-/

namespace A116931.P3195693427489125682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268193 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A116931.P3195693427489125682

/-! ## A116931.P10906789116254651268

`A268193(∑[A002024(n+1)]-n)`
-/

namespace A116931.P10906789116254651268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268193 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A116931.P10906789116254651268

/-! ## A116931.P13837973499614720648

`A218698(A134869(n+1)+1)`
-/

namespace A116931.P13837973499614720648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A134869 (n + 1) + 1).toNat

end

end A116931.P13837973499614720648

/-! ## A116931.P10339848188837531473

`A218698(A000096(n+1)-abs(1-n))`
-/

namespace A116931.P10339848188837531473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A000096 (n + 1) - |1 - (n : ℤ)|).toNat

end

end A116931.P10339848188837531473

/-! ## A116931.P1663661053993922949

`A218698(∑[n+1]+2%A205963(n))`
-/

namespace A116931.P1663661053993922949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod 2 (A205963 n)).toNat

end

end A116931.P1663661053993922949

/-! ## A116931.P17592909740281671944

`A218698(A103517(n)+A238531(n)-1)`
-/

namespace A116931.P17592909740281671944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A103517 n + (A238531 n - 1)).toNat

end

end A116931.P17592909740281671944

/-! ## A116931.P9977153577093401284

`A218698(A103517(n)-(1-A238531(n)))`
-/

namespace A116931.P9977153577093401284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A103517 n - (1 - A238531 n)).toNat

end

end A116931.P9977153577093401284

/-! ## A116931.P786221223119798502

`A218698(A016028(n+1)+A008585(n)-1)`
-/

namespace A116931.P786221223119798502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A016028 (n + 1) + (A008585 n - 1)).toNat

end

end A116931.P786221223119798502

/-!
# A116932: Number of partitions of n in which each part, with the possible exception of the largest, occurs at least three times.

The programs for A116932, there is no canonical definition to state claims against.
-/

/-! ## A116932.P18375366474820281900

`A218698(A000096(n+1)-abs(2-n))`
-/

namespace A116932.P18375366474820281900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A000096 (n + 1) - |2 - (n : ℤ)|).toNat

end

end A116932.P18375366474820281900

/-! ## A116932.P375711160922400981

`A218698(∑[n+1]+3%A007931(n+1))`
-/

namespace A116932.P375711160922400981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod 3 (A007931 (n + 1))).toNat

end

end A116932.P375711160922400981

/-! ## A116932.P3365689499007956338

`A218698(A238531(n)+A103517(n))`
-/

namespace A116932.P3365689499007956338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A238531 n + A103517 n).toNat

end

end A116932.P3365689499007956338

/-! ## A116932.P13072096497683480402

`A218698(A052905(n)-A004274(n))`
-/

namespace A116932.P13072096497683480402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A052905 n - A004274 n).toNat

end

end A116932.P13072096497683480402

/-! ## A116932.P14232979038560595322

`A218698(A016028(n+1)+A008585(n))`
-/

namespace A116932.P14232979038560595322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A016028 (n + 1) + A008585 n).toNat

end

end A116932.P14232979038560595322

/-! ## A116932.P3410360123215016083

`A218698(A077169(n+1)+A023443(n))`
-/

namespace A116932.P3410360123215016083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A077169 (n + 1) + A023443 n).toNat

end

end A116932.P3410360123215016083

/-! ## A116932.P4768964483026155853

`A218698(A077169(n+1)-A024000(n))`
-/

namespace A116932.P4768964483026155853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A077169 (n + 1) - A024000 n).toNat

end

end A116932.P4768964483026155853

/-!
# A116933: Smallest k greater than 0 such that n+k*p is a prime, where p is the smallest coprime greater than n+1.

The programs for A116933, there is no canonical definition to state claims against.
-/

/-! ## A116933.P17347816324441981700

`floor(A116934(n+1)/A079578(n+1))`
-/

namespace A116933.P17347816324441981700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116934 (n + 1) : ℚ) / (A079578 (n + 1) : ℚ)⌋

end

end A116933.P17347816324441981700

/-! ## A116933.P2006278359567123082

`ceil(A116934(ϕ²-(ϕ-n))/A079578(n+1))-1`
-/

namespace A116933.P2006278359567123082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116934 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / (A079578 (n + 1) : ℚ)⌉ - 1

end

end A116933.P2006278359567123082

/-! ## A116933.P2881074149829516241

`gcd(A000027(A227704(n+2)), A054541(n+1))`
-/

namespace A116933.P2881074149829516241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A227704 (n + 2)).toNat) (A054541 (n + 1))

end

end A116933.P2881074149829516241

/-! ## A116933.P14484925063886992896

`gcd(A103426(n+1), A175508(A140461(n+4)))`
-/

namespace A116933.P14484925063886992896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103426 (n + 1)) (A175508 (A140461 (n + 4)).toNat)

end

end A116933.P14484925063886992896

/-! ## A116933.P1112726936040970923

`A000188(A249716(2*(n+2))+A121262((n+1)²))`
-/

namespace A116933.P1112726936040970923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A249716 (2 * (n + 2)) + A121262 ((n + 1) ^ 2)).toNat

end

end A116933.P1112726936040970923

/-!
# A116934: First prime in the arithmetic progression (n+k*p: k>0), where p is the smallest coprime greater than n+1.

The programs for A116934, there is no canonical definition to state claims against.
-/

/-! ## A116934.P13023019606285225588

`A079578(n+1)*A116933(n+1)+n+1`
-/

namespace A116934.P13023019606285225588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079578 (n + 1) * A116933 (n + 1) + (n + 1 : ℤ)

end

end A116934.P13023019606285225588

/-!
# A116937: Expansion of Pi^2 in base 2.

The programs for A116937, there is no canonical definition to state claims against.
-/

/-! ## A116937.P14910779167100018447

`A225183(A296096(n+1)+2)`
-/

namespace A116937.P14910779167100018447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225183 (A296096 (n + 1) + 2).toNat

end

end A116937.P14910779167100018447

/-! ## A116937.P17089548124255719251

`A324828(A086341(n)+12)`
-/

namespace A116937.P17089548124255719251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324828 (A086341 n + 12).toNat

end

end A116937.P17089548124255719251

/-! ## A116937.P4360622362357219305

`A188973(∑[A008137(n+1)])`
-/

namespace A116937.P4360622362357219305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116937.P4360622362357219305

/-! ## A116937.P4963940937903633698

`A039982(xor(A002062(n), A274740(n)))`
-/

namespace A116937.P4963940937903633698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (Int.xor (A002062 n) (A274740 n)).toNat

end

end A116937.P4963940937903633698

/-! ## A116937.P17087004984838917694

`A010060(A359710(3*n+1)+A307534(n+1))`
-/

namespace A116937.P17087004984838917694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A359710 (3 * n + 1) + A307534 (n + 1)).toNat

end

end A116937.P17087004984838917694

/-!
# A116938: Expansion of e^2 in base 2.

The programs for A116938, the canonical program `A116938.P13928421594322898469` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116938 has offset 3).

The definition of A116938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116938.P16028658485622113113

`and(4, A293359(n))/4`
-/

namespace A116938.P16028658485622113113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 4 (A293359 n) : ℚ) / 4

end

end A116938.P16028658485622113113

namespace A116938

/-- `and(4, A293359(n))/4` -/
def P16028658485622113113.Spec : Prop :=
  ∀ n, P16028658485622113113.a n = (A116938 (n + 3) : ℚ)

end A116938

/-! ## A116938.P16887229810610683830

`and(4, A293360(n)-1)/4`
-/

namespace A116938.P16887229810610683830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 4 (A293360 n - 1) : ℚ) / 4

end

end A116938.P16887229810610683830

namespace A116938

/-- `and(4, A293360(n)-1)/4` -/
def P16887229810610683830.Spec : Prop :=
  ∀ n, P16887229810610683830.a n = (A116938 (n + 3) : ℚ)

end A116938

/-! ## A116938.P13928421594322898469

`A001222(and(4, A293360(n)-1)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A116938

/-- `A001222(and(4, A293360(n)-1)+1)` -/
def P13928421594322898469.Spec : Prop :=
  ∀ n, P13928421594322898469.a n = A116938 (n + 3)

theorem P13928421594322898469.correct : P13928421594322898469.Spec := by
  intro n
  simp only [A116938, Nat.add_sub_cancel]

end A116938

/-! ## A116938.P4940875251156658886

`A007318(and(4, A293360(n)-1))-1`
-/

namespace A116938.P4940875251156658886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 4 (A293360 n - 1)).toNat - 1

end

end A116938.P4940875251156658886

namespace A116938

/-- `A007318(and(4, A293360(n)-1))-1` -/
def P4940875251156658886.Spec : Prop :=
  ∀ n, P4940875251156658886.a n = A116938 (n + 3)

end A116938

/-! ## A116938.P15785434873190448620

`A000032(and(4, A293360(n)-1))%2`
-/

namespace A116938.P15785434873190448620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (Int.land 4 (A293360 n - 1)).toNat) 2

end

end A116938.P15785434873190448620

namespace A116938

/-- `A000032(and(4, A293360(n)-1))%2` -/
def P15785434873190448620.Spec : Prop :=
  ∀ n, P15785434873190448620.a n = A116938 (n + 3)

end A116938

/-! ## A116938.P7858905898049413759

`A001222(or(1, and(4, A293360(n)-1)))`
-/

namespace A116938.P7858905898049413759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 1 (Int.land 4 (A293360 n - 1))).toNat

end

end A116938.P7858905898049413759

namespace A116938

/-- `A001222(or(1, and(4, A293360(n)-1)))` -/
def P7858905898049413759.Spec : Prop :=
  ∀ n, P7858905898049413759.a n = A116938 (n + 3)

end A116938

/-!
# A116939: Lexicographically earliest sequence such that each i occurs exactly i+1 times and succeeding terms differ exactly by -1 or +1.

The programs for A116939, the canonical program `A116939.P2925475723245639123` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116939 has offset 0).

The definition of A116939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116939.P2925475723245639123

`a(n-or(1, a(n-1)))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116939

/-- `a(n-or(1, a(n-1)))+1` -/
def P2925475723245639123.Spec : Prop :=
  ∀ n, (P2925475723245639123.a n : ℤ) = A116939 n

theorem P2925475723245639123.correct : P2925475723245639123.Spec := by
  intro n
  simp only [A116939]

end A116939

/-! ## A116939.P11267793502426557795

`a(n-(a(n-1)+n%2))+1` with `a(0)=0`
-/

namespace A116939.P11267793502426557795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - (a (n - 1) + n % 2)) + 1

end

end A116939.P11267793502426557795

namespace A116939

/-- `a(n-(a(n-1)+n%2))+1` -/
def P11267793502426557795.Spec : Prop :=
  ∀ n, (P11267793502426557795.a n : ℤ) = A116939 n

end A116939

/-! ## A116939.P3547636265308208778

`a(2*floor(n/2)-a(n-1))+1` with `a(0)=0`
-/

namespace A116939.P3547636265308208778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (2 * ⌊(n : ℚ) / 2⌋ - (a (n - 1) : ℤ)).toNat + 1

end

end A116939.P3547636265308208778

namespace A116939

/-- `a(2*floor(n/2)-a(n-1))+1` -/
def P3547636265308208778.Spec : Prop :=
  ∀ n, (P3547636265308208778.a n : ℤ) = A116939 n

end A116939

/-! ## A116939.P17903152056959395441

`a(n-(a(n-gcd(2, a(a(n-2))))+1))+1` with `a(0)=0, a(1)=1`
-/

namespace A116939.P17903152056959395441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - (a (n - Nat.gcd 2 (a (a (n - 2)))) + 1)) + 1

end

end A116939.P17903152056959395441

namespace A116939

/-- `a(n-(a(n-gcd(2, a(a(n-2))))+1))+1` -/
def P17903152056959395441.Spec : Prop :=
  ∀ n, (P17903152056959395441.a n : ℤ) = A116939 n

end A116939

/-! ## A116939.P13094020358189049095

`A100795(n+1)-1`
-/

namespace A116939.P13094020358189049095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (n + 1) - 1

end

end A116939.P13094020358189049095

namespace A116939

/-- `A100795(n+1)-1` -/
def P13094020358189049095.Spec : Prop :=
  ∀ n, P13094020358189049095.a n = A116939 n

end A116939

/-! ## A116939.P51591241432466630

`or(1, A183572(n+1)-1)-(n+1)`
-/

namespace A116939.P51591241432466630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183572 (n + 1) - 1) - (n + 1 : ℤ)

end

end A116939.P51591241432466630

namespace A116939

/-- `or(1, A183572(n+1)-1)-(n+1)` -/
def P51591241432466630.Spec : Prop :=
  ∀ n, P51591241432466630.a n = A116939 n

end A116939

/-! ## A116939.P10218411451446138703

`or(1, A103128(n+1)+n)%(n+1)`
-/

namespace A116939.P10218411451446138703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (A103128 (n + 1) + (n : ℤ))) (n + 1 : ℤ)

end

end A116939.P10218411451446138703

namespace A116939

/-- `or(1, A103128(n+1)+n)%(n+1)` -/
def P10218411451446138703.Spec : Prop :=
  ∀ n, P10218411451446138703.a n = A116939 n

end A116939

/-! ## A116939.P18048722446757748570

`A065423(2*A100795(n+1))`
-/

namespace A116939.P18048722446757748570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A100795 (n + 1)).toNat

end

end A116939.P18048722446757748570

namespace A116939

/-- `A065423(2*A100795(n+1))` -/
def P18048722446757748570.Spec : Prop :=
  ∀ n, P18048722446757748570.a n = A116939 n

end A116939

/-! ## A116939.P14300303797338956227

`A101776(n)-A040001(A101776(n)+n)`
-/

namespace A116939.P14300303797338956227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - A040001 (A101776 n + (n : ℤ)).toNat

end

end A116939.P14300303797338956227

namespace A116939

/-- `A101776(n)-A040001(A101776(n)+n)` -/
def P14300303797338956227.Spec : Prop :=
  ∀ n, P14300303797338956227.a n = A116939 n

end A116939

/-! ## A116939.P15334928012584742663

`A172471(n)-A000035(n-A172471(n))`
-/

namespace A116939.P15334928012584742663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n - A000035 ((n : ℤ) - A172471 n).toNat

end

end A116939.P15334928012584742663

namespace A116939

/-- `A172471(n)-A000035(n-A172471(n))` -/
def P15334928012584742663.Spec : Prop :=
  ∀ n, P15334928012584742663.a n = A116939 n

end A116939

/-! ## A116939.P2277640036225838332

`A065423(A100795(n+1)+A100795(n+1))`
-/

namespace A116939.P2277640036225838332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A100795 (n + 1) + A100795 (n + 1)).toNat

end

end A116939.P2277640036225838332

namespace A116939

/-- `A065423(A100795(n+1)+A100795(n+1))` -/
def P2277640036225838332.Spec : Prop :=
  ∀ n, P2277640036225838332.a n = A116939 n

end A116939

/-! ## A116939.P8445785825039488188

`(A100795(n+1)+A000982(n))%A061925(n)`
-/

namespace A116939.P8445785825039488188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100795 (n + 1) + A000982 n) (A061925 n)

end

end A116939.P8445785825039488188

namespace A116939

/-- `(A100795(n+1)+A000982(n))%A061925(n)` -/
def P8445785825039488188.Spec : Prop :=
  ∀ n, P8445785825039488188.a n = A116939 n

end A116939

/-! ## A116939.P16047490330152500825

`A003056(A116942(n))`
-/

namespace A116939.P16047490330152500825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A116942 n).toNat

end

end A116939.P16047490330152500825

namespace A116939

/-- `A003056(A116942(n))` -/
def P16047490330152500825.Spec : Prop :=
  ∀ n, P16047490330152500825.a n = A116939 n

end A116939

/-! ## A116939.P11269970755416385566

`∑[A033999(comp[A047838(n+2)])]-1`
-/

namespace A116939.P11269970755416385566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116939.P11269970755416385566

namespace A116939

/-- `∑[A033999(comp[A047838(n+2)])]-1` -/
def P11269970755416385566.Spec : Prop :=
  ∀ n, P11269970755416385566.a n = A116939 n

end A116939

/-! ## A116939.P4313579067529487813

`A052928(A182834(n+2))-(n+2)`
-/

namespace A116939.P4313579067529487813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A182834 (n + 2)).toNat - (n + 2 : ℤ)

end

end A116939.P4313579067529487813

namespace A116939

/-- `A052928(A182834(n+2))-(n+2)` -/
def P4313579067529487813.Spec : Prop :=
  ∀ n, P4313579067529487813.a n = A116939 n

end A116939

/-! ## A116939.P3815288087154766299

`or(1, A000196(A005843(n))+n)-(n+1)`
-/

namespace A116939.P3815288087154766299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000196 (A005843 n).toNat + (n : ℤ)) - (n + 1 : ℤ)

end

end A116939.P3815288087154766299

namespace A116939

/-- `or(1, A000196(A005843(n))+n)-(n+1)` -/
def P3815288087154766299.Spec : Prop :=
  ∀ n, P3815288087154766299.a n = A116939 n

end A116939

/-! ## A116939.P10043463735769916853

`A340134(A042964(n+1))`
-/

namespace A116939.P10043463735769916853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340134 (A042964 (n + 1)).toNat

end

end A116939.P10043463735769916853

namespace A116939

/-- `A340134(A042964(n+1))` -/
def P10043463735769916853.Spec : Prop :=
  ∀ n, P10043463735769916853.a n = A116939 n

end A116939

/-! ## A116939.P11484032950761802753

`A340134(A047578(n+1))`
-/

namespace A116939.P11484032950761802753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340134 (A047578 (n + 1)).toNat

end

end A116939.P11484032950761802753

namespace A116939

/-- `A340134(A047578(n+1))` -/
def P11484032950761802753.Spec : Prop :=
  ∀ n, P11484032950761802753.a n = A116939 n

end A116939

/-! ## A116939.P370385824183479537

`A340134(A053438(n+1))`
-/

namespace A116939.P370385824183479537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340134 (A053438 (n + 1)).toNat

end

end A116939.P370385824183479537

namespace A116939

/-- `A340134(A053438(n+1))` -/
def P370385824183479537.Spec : Prop :=
  ∀ n, P370385824183479537.a n = A116939 n

end A116939

/-! ## A116939.P7216148195523347226

`A128622(A183218(n+1))-1`
-/

namespace A116939.P7216148195523347226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128622 (A183218 (n + 1)).toNat - 1

end

end A116939.P7216148195523347226

namespace A116939

/-- `A128622(A183218(n+1))-1` -/
def P7216148195523347226.Spec : Prop :=
  ∀ n, P7216148195523347226.a n = A116939 n

end A116939

/-!
# A116940: Greatest m such that A116939(m) = n.

The programs for A116940, the canonical program `A116940.P15309001525567772111` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116940 has offset 0).

The definition of A116940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116940.P15309001525567772111

`2*n+ceil(n²/2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116940

/-- `2*n+ceil(n²/2)` -/
def P15309001525567772111.Spec : Prop :=
  ∀ n, P15309001525567772111.a n = A116940 n

theorem P15309001525567772111.correct : P15309001525567772111.Spec := by
  intro n
  simp only [A116940]

end A116940

/-! ## A116940.P7847051531604104192

`∑[a(n-2)+2]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A116940.P7847051531604104192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116940.P7847051531604104192

namespace A116940

/-- `∑[a(n-2)+2]` -/
def P7847051531604104192.Spec : Prop :=
  ∀ n, (P7847051531604104192.a n : ℤ) = A116940 n

end A116940

/-! ## A116940.P6977957731522349686

`∑[∑[and(2, a(n-2))]]` with `a(0)=0, a(1)=3`
-/

namespace A116940.P6977957731522349686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  Nat.land 2 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116940.P6977957731522349686

namespace A116940

/-- `∑[∑[and(2, a(n-2))]]` -/
def P6977957731522349686.Spec : Prop :=
  ∀ n, (P6977957731522349686.a n : ℤ) = A116940 n

end A116940

/-! ## A116940.P1842481060705482127

`-(∑[or(1, -(n+2))]+1)`
-/

namespace A116940.P1842481060705482127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n + 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A116940.P1842481060705482127

namespace A116940

/-- `-(∑[or(1, -(n+2))]+1)` -/
def P1842481060705482127.Spec : Prop :=
  ∀ n, P1842481060705482127.a n = A116940 n

end A116940

/-! ## A116940.P16025821970601324721

`record[floor(((2-n)²-3)/2)]`
-/

namespace A116940.P16025821970601324721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 - (n : ℤ)) ^ 2 - 3 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116940.P16025821970601324721

namespace A116940

/-- `record[floor(((2-n)²-3)/2)]` -/
def P16025821970601324721.Spec : Prop :=
  ∀ n, P16025821970601324721.a n = A116940 n

end A116940

/-! ## A116940.P2085027569016912570

`round(record[(2-n)²/2-2])`
-/

namespace A116940.P2085027569016912570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 : ℚ) / 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A116940.P2085027569016912570

namespace A116940

/-- `round(record[(2-n)²/2-2])` -/
def P2085027569016912570.Spec : Prop :=
  ∀ n, P2085027569016912570.a n = A116940 n

end A116940

/-! ## A116940.P6992428214126448678

`round(cot(2/(n+1)²)+n)`
-/

namespace A116940.P6992428214126448678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((n + 1) ^ 2 : ℚ) : ℝ) + (n : ℝ))

end

end A116940.P6992428214126448678

namespace A116940

/-- `round(cot(2/(n+1)²)+n)` -/
def P6992428214126448678.Spec : Prop :=
  ∀ n, P6992428214126448678.a n = A116940 n

end A116940

/-! ## A116940.P14610570259153237766

`floor((n+3)*sinh(log(n+1)))`
-/

namespace A116940.P14610570259153237766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) * Real.sinh (Real.log (n + 1 : ℝ))⌋

end

end A116940.P14610570259153237766

namespace A116940

/-- `floor((n+3)*sinh(log(n+1)))` -/
def P14610570259153237766.Spec : Prop :=
  ∀ n, P14610570259153237766.a n = A116940 n

end A116940

/-! ## A116940.P5125818304383511755

`∑[n+1-floor(cos(2)^n)]`
-/

namespace A116940.P5125818304383511755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊Real.cos (2 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116940.P5125818304383511755

namespace A116940

/-- `∑[n+1-floor(cos(2)^n)]` -/
def P5125818304383511755.Spec : Prop :=
  ∀ n, P5125818304383511755.a n = A116940 n

end A116940

/-! ## A116940.P12282853848174969191

`∑[ceil(n+1-cos(3)^n)]`
-/

namespace A116940.P12282853848174969191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) - Real.cos (3 : ℝ) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116940.P12282853848174969191

namespace A116940

/-- `∑[ceil(n+1-cos(3)^n)]` -/
def P12282853848174969191.Spec : Prop :=
  ∀ n, P12282853848174969191.a n = A116940 n

end A116940

/-! ## A116940.P4279626140744177744

`∑[n+1-floor(tan(3)^n)]`
-/

namespace A116940.P4279626140744177744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊Real.tan (3 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116940.P4279626140744177744

namespace A116940

/-- `∑[n+1-floor(tan(3)^n)]` -/
def P4279626140744177744.Spec : Prop :=
  ∀ n, P4279626140744177744.a n = A116940 n

end A116940

/-! ## A116940.P10367518302786369015

`∑[n+1-floor(cot(2)^n)]`
-/

namespace A116940.P10367518302786369015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊Real.cot (2 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116940.P10367518302786369015

namespace A116940

/-- `∑[n+1-floor(cot(2)^n)]` -/
def P10367518302786369015.Spec : Prop :=
  ∀ n, P10367518302786369015.a n = A116940 n

end A116940

/-! ## A116940.P12396638161696668209

`∑[∑[2-a(n-1)]]` with `a(0)=0, a(1)=3, a(2)=0`
-/

namespace A116940.P12396638161696668209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116940.P12396638161696668209

namespace A116940

/-- `∑[∑[2-a(n-1)]]` -/
def P12396638161696668209.Spec : Prop :=
  ∀ n, P12396638161696668209.a n = A116940 n

end A116940

/-! ## A116940.P6006671999641235652

`(n%2+n*(n+4))/2`
-/

namespace A116940.P6006671999641235652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 + n * (n + 4) : ℕ) : ℚ) / 2

end

end A116940.P6006671999641235652

namespace A116940

/-- `(n%2+n*(n+4))/2` -/
def P6006671999641235652.Spec : Prop :=
  ∀ n, P6006671999641235652.a n = (A116940 n : ℚ)

end A116940

/-! ## A116940.P14983733365880807857

`∑[or(1, n+1)%(n+1)²]`
-/

namespace A116940.P14983733365880807857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) % (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116940.P14983733365880807857

namespace A116940

/-- `∑[or(1, n+1)%(n+1)²]` -/
def P14983733365880807857.Spec : Prop :=
  ∀ n, (P14983733365880807857.a n : ℤ) = A116940 n

end A116940

/-! ## A116940.P17181277334309911006

`floor(C(n+1, n)²/2+n)`
-/

namespace A116940.P17181277334309911006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n ^ 2 : ℚ) / 2 + (n : ℚ)⌋

end

end A116940.P17181277334309911006

namespace A116940

/-- `floor(C(n+1, n)²/2+n)` -/
def P17181277334309911006.Spec : Prop :=
  ∀ n, P17181277334309911006.a n = A116940 n

end A116940

/-! ## A116940.P11580591545032195997

`ogf((3x-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A116940.P11580591545032195997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 0, -1] [1, -2, 0, 2, -1] n

end

end A116940.P11580591545032195997

namespace A116940

/-- `ogf((3x-x^3)/(1-2x+2x^3-x^4))` -/
def P11580591545032195997.Spec : Prop :=
  ∀ n, P11580591545032195997.a n = A116940 n

end A116940

/-! ## A116940.P9812011653958930474

`floor(n/(n+1)*C(n+3, 2))`
-/

namespace A116940.P9812011653958930474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (n + 1 : ℚ) * (Nat.choose (n + 3) 2 : ℚ)⌋

end

end A116940.P9812011653958930474

namespace A116940

/-- `floor(n/(n+1)*C(n+3, 2))` -/
def P9812011653958930474.Spec : Prop :=
  ∀ n, P9812011653958930474.a n = A116940 n

end A116940

/-! ## A116940.P2778430650483401627

`abs(a(n-2)+2*(n+1))` with `a(0)=0, a(1)=3`
-/

namespace A116940.P2778430650483401627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + 2 * (n + 1)

end

end A116940.P2778430650483401627

namespace A116940

/-- `abs(a(n-2)+2*(n+1))` -/
def P2778430650483401627.Spec : Prop :=
  ∀ n, (P2778430650483401627.a n : ℤ) = A116940 n

end A116940

/-! ## A116940.P5815553921139155322

`floor(a(n-2)+2*(n+1))` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A116940.P5815553921139155322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + 2 * (n + 1)

end

end A116940.P5815553921139155322

namespace A116940

/-- `floor(a(n-2)+2*(n+1))` -/
def P5815553921139155322.Spec : Prop :=
  ∀ n, (P5815553921139155322.a n : ℤ) = A116940 n

end A116940

/-!
# A116941: Permutation of the natural numbers in conjunction with A116939 and A003056.

The programs for A116941, the canonical program `A116941.P12886605417078057976` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116941 has offset 0).

The definition of A116941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116941.P12886605417078057976

`A074147(n+1)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116941

/-- `A074147(n+1)-1` -/
def P12886605417078057976.Spec : Prop :=
  ∀ n, P12886605417078057976.a n = A116941 n

theorem P12886605417078057976.correct : P12886605417078057976.Spec := by
  intro n
  simp only [A116941]

end A116941

/-! ## A116941.P1897783824566422430

`comp[2*n²]-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A116941.P1897783824566422430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A116941.P1897783824566422430

namespace A116941

/-- `comp[2*n²]-(C(comp[∑[n]]-n, 2)-n)` -/
def P1897783824566422430.Spec : Prop :=
  ∀ n, P1897783824566422430.a n = A116941 n

end A116941

/-! ## A116941.P7970929635601497811

`n-floor(A114327(n)/2)`
-/

namespace A116941.P7970929635601497811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(A114327 n : ℚ) / 2⌋

end

end A116941.P7970929635601497811

namespace A116941

/-- `n-floor(A114327(n)/2)` -/
def P7970929635601497811.Spec : Prop :=
  ∀ n, P7970929635601497811.a n = A116941 n

end A116941

/-! ## A116941.P5565514961672546084

`2*n+1-ceil(A002024(n+1)²/2)`
-/

namespace A116941.P5565514961672546084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌈(A002024 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A116941.P5565514961672546084

namespace A116941

/-- `2*n+1-ceil(A002024(n+1)²/2)` -/
def P5565514961672546084.Spec : Prop :=
  ∀ n, P5565514961672546084.a n = A116941 n

end A116941

/-! ## A116941.P208961809508993420

`comp[A001105(n)]-A004736(n+1)`
-/

namespace A116941.P208961809508993420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A004736 (n + 1)

end

end A116941.P208961809508993420

namespace A116941

/-- `comp[A001105(n)]-A004736(n+1)` -/
def P208961809508993420.Spec : Prop :=
  ∀ n, P208961809508993420.a n = A116941 n

end A116941

/-! ## A116941.P15130194850914700809

`A183300(n+1)-A004736(n+1)`
-/

namespace A116941.P15130194850914700809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1) - A004736 (n + 1)

end

end A116941.P15130194850914700809

namespace A116941

/-- `A183300(n+1)-A004736(n+1)` -/
def P15130194850914700809.Spec : Prop :=
  ∀ n, P15130194850914700809.a n = A116941 n

end A116941

/-! ## A116941.P4591487118482562660

`A183300(n+1)-(A025581(n)+1)`
-/

namespace A116941.P4591487118482562660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1) - (A025581 n + 1)

end

end A116941.P4591487118482562660

namespace A116941

/-- `A183300(n+1)-(A025581(n)+1)` -/
def P4591487118482562660.Spec : Prop :=
  ∀ n, P4591487118482562660.a n = A116941 n

end A116941

/-! ## A116941.P11247896023639182482

`A132118(n+1)-A204164(n+1)`
-/

namespace A116941.P11247896023639182482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1) - A204164 (n + 1)

end

end A116941.P11247896023639182482

namespace A116941

/-- `A132118(n+1)-A204164(n+1)` -/
def P11247896023639182482.Spec : Prop :=
  ∀ n, P11247896023639182482.a n = A116941 n

end A116941

/-! ## A116941.P3019095422157512762

`2*n+1-A000982(A002024(n+1))`
-/

namespace A116941.P3019095422157512762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000982 (A002024 (n + 1)).toNat

end

end A116941.P3019095422157512762

namespace A116941

/-- `2*n+1-A000982(A002024(n+1))` -/
def P3019095422157512762.Spec : Prop :=
  ∀ n, P3019095422157512762.a n = A116941 n

end A116941

/-! ## A116941.P5475716832752748340

`2*n+1-A000982(A003056(n)+1)`
-/

namespace A116941.P5475716832752748340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000982 (A003056 n + 1).toNat

end

end A116941.P5475716832752748340

namespace A116941

/-- `2*n+1-A000982(A003056(n)+1)` -/
def P5475716832752748340.Spec : Prop :=
  ∀ n, P5475716832752748340.a n = A116941 n

end A116941

/-! ## A116941.P6474519959165529745

`round((A002260(n+1)-(A025581(n)-2*n+1))/2)`
-/

namespace A116941.P6474519959165529745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002260 (n + 1) - (A025581 n - (2 * n : ℤ) + 1) : ℚ) / 2)

end

end A116941.P6474519959165529745

namespace A116941

/-- `round((A002260(n+1)-(A025581(n)-2*n+1))/2)` -/
def P6474519959165529745.Spec : Prop :=
  ∀ n, P6474519959165529745.a n = A116941 n

end A116941

/-! ## A116941.P8032953974152573074

`A002262(n)+n-A004526(A003056(n))`
-/

namespace A116941.P8032953974152573074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ((n : ℤ) - A004526 (A003056 n).toNat)

end

end A116941.P8032953974152573074

namespace A116941

/-- `A002262(n)+n-A004526(A003056(n))` -/
def P8032953974152573074.Spec : Prop :=
  ∀ n, P8032953974152573074.a n = A116941 n

end A116941

/-! ## A116941.P12528673828381793388

`A004526(A002024(n+1))+n-A025581(n)`
-/

namespace A116941.P12528673828381793388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002024 (n + 1)).toNat + ((n : ℤ) - A025581 n)

end

end A116941.P12528673828381793388

namespace A116941

/-- `A004526(A002024(n+1))+n-A025581(n)` -/
def P12528673828381793388.Spec : Prop :=
  ∀ n, P12528673828381793388.a n = A116941 n

end A116941

/-! ## A116941.P6245142188350832390

`A002260(n+1)-A110654(A002024(n+1))+n`
-/

namespace A116941.P6245142188350832390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A110654 (A002024 (n + 1)).toNat + (n : ℤ)

end

end A116941.P6245142188350832390

namespace A116941

/-- `A002260(n+1)-A110654(A002024(n+1))+n` -/
def P6245142188350832390.Spec : Prop :=
  ∀ n, P6245142188350832390.a n = A116941 n

end A116941

/-! ## A116941.P16560680517418592446

`A023443(A074147(n+1))`
-/

namespace A116941.P16560680517418592446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074147 (n + 1)).toNat

end

end A116941.P16560680517418592446

namespace A116941

/-- `A023443(A074147(n+1))` -/
def P16560680517418592446.Spec : Prop :=
  ∀ n, P16560680517418592446.a n = A116941 n

end A116941

/-! ## A116941.P445827699708288640

`A109857(A038722(n+1))-1`
-/

namespace A116941.P445827699708288640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109857 (A038722 (n + 1)).toNat - 1

end

end A116941.P445827699708288640

namespace A116941

/-- `A109857(A038722(n+1))-1` -/
def P445827699708288640.Spec : Prop :=
  ∀ n, P445827699708288640.a n = A116941 n

end A116941

/-! ## A116941.P4826147547060792468

`2*n+1-A110654(A002024(n+1)²)`
-/

namespace A116941.P4826147547060792468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A110654 (A002024 (n + 1) ^ 2).toNat

end

end A116941.P4826147547060792468

namespace A116941

/-- `2*n+1-A110654(A002024(n+1)²)` -/
def P4826147547060792468.Spec : Prop :=
  ∀ n, P4826147547060792468.a n = A116941 n

end A116941

/-! ## A116941.P14722983754601123862

`A065423(2*A074147(n+1))`
-/

namespace A116941.P14722983754601123862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A074147 (n + 1)).toNat

end

end A116941.P14722983754601123862

namespace A116941

/-- `A065423(2*A074147(n+1))` -/
def P14722983754601123862.Spec : Prop :=
  ∀ n, P14722983754601123862.a n = A116941 n

end A116941

/-! ## A116941.P16959106757646314385

`2*n+1-A000982(A000194(2*n+1))`
-/

namespace A116941.P16959106757646314385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000982 (A000194 (2 * n + 1)).toNat

end

end A116941.P16959106757646314385

namespace A116941

/-- `2*n+1-A000982(A000194(2*n+1))` -/
def P16959106757646314385.Spec : Prop :=
  ∀ n, P16959106757646314385.a n = A116941 n

end A116941

/-! ## A116941.P17542925748986699458

`eq[2, A169695(2*n)]-A057555(2*(n+1))`
-/

namespace A116941.P17542925748986699458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A057555 (2 * (n + 1))

end

end A116941.P17542925748986699458

namespace A116941

/-- `eq[2, A169695(2*n)]-A057555(2*(n+1))` -/
def P17542925748986699458.Spec : Prop :=
  ∀ n, P17542925748986699458.a n = A116941 n

end A116941

/-!
# A116942: Permutation of the natural numbers in conjunction with A116939 and A003056.

The programs for A116942, the canonical program `A116942.P10060715374549380448` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116942 has offset 0).

The definition of A116942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116942.P10060715374549380448

`floor((A000982(A100795(n+1))+n)/2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116942

/-- `floor((A000982(A100795(n+1))+n)/2)` -/
def P10060715374549380448.Spec : Prop :=
  ∀ n, P10060715374549380448.a n = A116942 n

theorem P10060715374549380448.correct : P10060715374549380448.Spec := by
  intro n
  simp only [A116942]

end A116942

/-! ## A116942.P11272315479071825967

`A004526(n)+A002620(A100795(n+1))`
-/

namespace A116942.P11272315479071825967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A002620 (A100795 (n + 1)).toNat

end

end A116942.P11272315479071825967

namespace A116942

/-- `A004526(n)+A002620(A100795(n+1))` -/
def P11272315479071825967.Spec : Prop :=
  ∀ n, P11272315479071825967.a n = A116942 n

end A116942

/-! ## A116942.P17805385746394551091

`A004526(A000982(A100795(n+1))+n)`
-/

namespace A116942.P17805385746394551091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000982 (A100795 (n + 1)).toNat + (n : ℤ)).toNat

end

end A116942.P17805385746394551091

namespace A116942

/-- `A004526(A000982(A100795(n+1))+n)` -/
def P17805385746394551091.Spec : Prop :=
  ∀ n, P17805385746394551091.a n = A116942 n

end A116942

/-! ## A116942.P13260794910330463416

`A004526(A007590(A100795(n+1))+n)`
-/

namespace A116942.P13260794910330463416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007590 (A100795 (n + 1)).toNat + (n : ℤ)).toNat

end

end A116942.P13260794910330463416

namespace A116942

/-- `A004526(A007590(A100795(n+1))+n)` -/
def P13260794910330463416.Spec : Prop :=
  ∀ n, P13260794910330463416.a n = A116942 n

end A116942

/-! ## A116942.P18290534280925446620

`A002265(A100795(n+1)²)+A002265(A005843(n))`
-/

namespace A116942.P18290534280925446620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A100795 (n + 1) ^ 2).toNat + A002265 (A005843 n).toNat

end

end A116942.P18290534280925446620

namespace A116942

/-- `A002265(A100795(n+1)²)+A002265(A005843(n))` -/
def P18290534280925446620.Spec : Prop :=
  ∀ n, P18290534280925446620.a n = A116942 n

end A116942

/-! ## A116942.P13567059899016386641

`A002265(A100795(n+1)²+2*n)`
-/

namespace A116942.P13567059899016386641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A100795 (n + 1) ^ 2 + (2 * n : ℤ)).toNat

end

end A116942.P13567059899016386641

namespace A116942

/-- `A002265(A100795(n+1)²+2*n)` -/
def P13567059899016386641.Spec : Prop :=
  ∀ n, P13567059899016386641.a n = A116942 n

end A116942

/-! ## A116942.P13652724420816656950

`A002265(A005843(n)+A100795(n+1)²)`
-/

namespace A116942.P13652724420816656950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005843 n + A100795 (n + 1) ^ 2).toNat

end

end A116942.P13652724420816656950

namespace A116942

/-- `A002265(A005843(n)+A100795(n+1)²)` -/
def P13652724420816656950.Spec : Prop :=
  ∀ n, P13652724420816656950.a n = A116942 n

end A116942

/-! ## A116942.P16009878020055418436

`A166016(A116966(n))-1`
-/

namespace A116942.P16009878020055418436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166016 (A116966 n).toNat - 1

end

end A116942.P16009878020055418436

namespace A116942

/-- `A166016(A116966(n))-1` -/
def P16009878020055418436.Spec : Prop :=
  ∀ n, P16009878020055418436.a n = A116942 n

end A116942

/-!
# A116943: Number of 4s digits plus non-final 3s digits 3 base 5 expansion of 2^n.

The programs for A116943, there is no canonical definition to state claims against.
-/

/-! ## A116943.P1071589131400742277

`A077267(A006788(n+1)-A328382(n+2))`
-/

namespace A116943.P1071589131400742277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A006788 (n + 1) - A328382 (n + 2)).toNat

end

end A116943.P1071589131400742277

/-! ## A116943.P13333817130876004523

`A326787(A120100(n+1)%A146431(n+1))`
-/

namespace A116943.P13333817130876004523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (Int.tmod (A120100 (n + 1)) (A146431 (n + 1))).toNat

end

end A116943.P13333817130876004523

/-! ## A116943.P12462238057923840334

`A316716(A049532(n+1)-A051730(2*n+1))`
-/

namespace A116943.P12462238057923840334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316716 (A049532 (n + 1) - A051730 (2 * n + 1)).toNat

end

end A116943.P12462238057923840334

/-! ## A116943.P18319810700795647452

`A326787((eq[6, A007732(n+1)]+1)%A146431(n+1))`
-/

namespace A116943.P18319810700795647452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) (A146431 (n + 1))).toNat

end

end A116943.P18319810700795647452

/-! ## A116943.P11539196489412256851

`A326787((eq[6, A051626(n+1)]+1)%A146431(n+1))`
-/

namespace A116943.P11539196489412256851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) (A146431 (n + 1))).toNat

end

end A116943.P11539196489412256851

/-!
# A116944: 

The programs for A116944, there is no canonical definition to state claims against.
-/

/-! ## A116944.P15468587666843929230

`(a(n-1)+1)^(n+1)` with `a(0)=1`
-/

namespace A116944.P15468587666843929230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) ^ (n + 1)

end

end A116944.P15468587666843929230

/-!
# A116945: Numbers in both A002731(n) and A002731(A002731(n)).

The programs for A116945, there is no canonical definition to state claims against.
-/

/-! ## A116945.P13375267170362336848

`A051097(A051143(n+2))%A051090(3*(n+1))`
-/

namespace A116945.P13375267170362336848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051097 (A051143 (n + 2)).toNat) (A051090 (3 * (n + 1)))

end

end A116945.P13375267170362336848

/-!
# A116946: Closest semiprime to n-th semiprime S that is different from S (break ties by taking the smaller semiprime).

The programs for A116946, there is no canonical definition to state claims against.
-/

/-! ## A116946.P5583635243669488948

`A001358(abs(xor(n, -2))^A355588(n))`
-/

namespace A116946.P5583635243669488948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.roundAway ((|Int.xor (n : ℤ) (-2)| : ℚ) ^ (A355588 n : ℤ))).toNat

end

end A116946.P5583635243669488948

/-! ## A116946.P2451025032863570622

`A001358((-A355588(n))^n+n+1)`
-/

namespace A116946.P2451025032863570622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 ((-A355588 n) ^ n + (n : ℤ) + 1).toNat

end

end A116946.P2451025032863570622

/-! ## A116946.P18149545615023154095

`A001358(abs(xor(n, -2))%A174862(n+1))`
-/

namespace A116946.P18149545615023154095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Int.tmod |Int.xor (n : ℤ) (-2)| (A174862 (n + 1))).toNat

end

end A116946.P18149545615023154095

/-! ## A116946.P3804707214188561922

`A001358(xor(1, n)+1)%A185240(n+1)`
-/

namespace A116946.P3804707214188561922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (Nat.xor 1 n + 1)) (A185240 (n + 1))

end

end A116946.P3804707214188561922

/-! ## A116946.P1542231288672060829

`A001358((xor(1, n)+1)%A003022(2*n+5))`
-/

namespace A116946.P1542231288672060829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Int.tmod (Nat.xor 1 n + 1 : ℤ) (A003022 (2 * n + 5))).toNat

end

end A116946.P1542231288672060829

/-!
# A116947: Numbers k such that 4*k^6 + 1 is prime.

The programs for A116947, there is no canonical definition to state claims against.
-/

/-! ## A116947.P4843306640048353783

`sqrt(∩[A115104(n+1), n²])`
-/

namespace A116947.P4843306640048353783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A116947.P4843306640048353783

/-! ## A116947.P1111654665996552053

`sqrt(∩[A000290(n), A115104(n+1)])`
-/

namespace A116947.P1111654665996552053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A116947.P1111654665996552053

/-! ## A116947.P12756187376783159850

`sqrt(∩[A000463(2*(n+1)), A115104(n+1)])`
-/

namespace A116947.P12756187376783159850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A116947.P12756187376783159850

/-! ## A116947.P16142849494172830971

`record[A056926(A115104(n+1))]`
-/

namespace A116947.P16142849494172830971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A115104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116947.P16142849494172830971

/-! ## A116947.P10487637163177962586

`A056926(∩[A115104(n+1), n²])`
-/

namespace A116947.P10487637163177962586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115104 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A116947.P10487637163177962586

/-!
# A116948: Riordan array ((1+2x^2)/(1-x^3),x).

The programs for A116948, the canonical program `A116948.P16350020595193954819` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116948 has offset 0).

The definition of A116948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116948.P13600964255442866291

`2-(C(comp[∑[n]]-n, 2)-n)%3`
-/

namespace A116948.P13600964255442866291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) 3

end

end A116948.P13600964255442866291

namespace A116948

/-- `2-(C(comp[∑[n]]-n, 2)-n)%3` -/
def P13600964255442866291.Spec : Prop :=
  ∀ n, P13600964255442866291.a n = A116948 n

end A116948

/-! ## A116948.P4464779175339784850

`(∑[char[∑[n+1]]]²+n+1)%3`
-/

namespace A116948.P4464779175339784850
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 1)) % 3

end

end A116948.P4464779175339784850

namespace A116948

/-- `(∑[char[∑[n+1]]]²+n+1)%3` -/
def P4464779175339784850.Spec : Prop :=
  ∀ n, (P4464779175339784850.a n : ℤ) = A116948 n

end A116948

/-! ## A116948.P16350020595193954819

`dr(A099375(n)%3)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116948

/-- `dr(A099375(n)%3)` -/
def P16350020595193954819.Spec : Prop :=
  ∀ n, (P16350020595193954819.a n : ℤ) = A116948 n

theorem P16350020595193954819.correct : P16350020595193954819.Spec := by
  intro n
  simp only [A116948]

end A116948

/-! ## A116948.P16256972546792954272

`dr(A134483(n+1)%3)`
-/

namespace A116948.P16256972546792954272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A134483 (n + 1)) 3)

end

end A116948.P16256972546792954272

namespace A116948

/-- `dr(A134483(n+1)%3)` -/
def P16256972546792954272.Spec : Prop :=
  ∀ n, (P16256972546792954272.a n : ℤ) = A116948 n

end A116948

/-! ## A116948.P3619106677176915072

`2-A004736(n+1)%3`
-/

namespace A116948.P3619106677176915072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A004736 (n + 1)) 3

end

end A116948.P3619106677176915072

namespace A116948

/-- `2-A004736(n+1)%3` -/
def P3619106677176915072.Spec : Prop :=
  ∀ n, P3619106677176915072.a n = A116948 n

end A116948

/-! ## A116948.P10051782836543393840

`2-(A025581(n)+1)%3`
-/

namespace A116948.P10051782836543393840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A025581 n + 1) 3

end

end A116948.P10051782836543393840

namespace A116948

/-- `2-(A025581(n)+1)%3` -/
def P10051782836543393840.Spec : Prop :=
  ∀ n, P10051782836543393840.a n = A116948 n

end A116948

/-! ## A116948.P10731341028602952758

`2-(val(A036561(n), 2)+1)%3`
-/

namespace A116948.P10731341028602952758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((SequenceMachineLib.valuation (A036561 n).toNat 2 + 1) % 3 : ℕ) : ℤ)

end

end A116948.P10731341028602952758

namespace A116948

/-- `2-(val(A036561(n), 2)+1)%3` -/
def P10731341028602952758.Spec : Prop :=
  ∀ n, P10731341028602952758.a n = A116948 n

end A116948

/-! ## A116948.P8764949213762871197

`A010872(A099375(n))`
-/

namespace A116948.P8764949213762871197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A099375 n).toNat

end

end A116948.P8764949213762871197

namespace A116948

/-- `A010872(A099375(n))` -/
def P8764949213762871197.Spec : Prop :=
  ∀ n, P8764949213762871197.a n = A116948 n

end A116948

/-! ## A116948.P12191766037979483459

`A010872(A134483(n+1))`
-/

namespace A116948.P12191766037979483459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A134483 (n + 1)).toNat

end

end A116948.P12191766037979483459

namespace A116948

/-- `A010872(A134483(n+1))` -/
def P12191766037979483459.Spec : Prop :=
  ∀ n, P12191766037979483459.a n = A116948 n

end A116948

/-! ## A116948.P2564720608934225936

`A270740(A143971(n+1))`
-/

namespace A116948.P2564720608934225936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270740 (A143971 (n + 1)).toNat

end

end A116948.P2564720608934225936

namespace A116948

/-- `A270740(A143971(n+1))` -/
def P2564720608934225936.Spec : Prop :=
  ∀ n, P2564720608934225936.a n = A116948 n

end A116948

/-! ## A116948.P10958093255189522347

`A080425(A025581(n)+2)`
-/

namespace A116948.P10958093255189522347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A025581 n + 2).toNat

end

end A116948.P10958093255189522347

namespace A116948

/-- `A080425(A025581(n)+2)` -/
def P10958093255189522347.Spec : Prop :=
  ∀ n, P10958093255189522347.a n = A116948 n

end A116948

/-! ## A116948.P14544630492740283630

`A164965(4*A025581(n))`
-/

namespace A116948.P14544630492740283630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 (4 * A025581 n).toNat

end

end A116948.P14544630492740283630

namespace A116948

/-- `A164965(4*A025581(n))` -/
def P14544630492740283630.Spec : Prop :=
  ∀ n, P14544630492740283630.a n = A116948 n

end A116948

/-! ## A116948.P10288727688137178244

`A080425(A004736(n+1)+1)`
-/

namespace A116948.P10288727688137178244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A004736 (n + 1) + 1).toNat

end

end A116948.P10288727688137178244

namespace A116948

/-- `A080425(A004736(n+1)+1)` -/
def P10288727688137178244.Spec : Prop :=
  ∀ n, P10288727688137178244.a n = A116948 n

end A116948

/-! ## A116948.P2090772577940021227

`A128834(A099375(n)+2)+1`
-/

namespace A116948.P2090772577940021227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A099375 n + 2).toNat + 1

end

end A116948.P2090772577940021227

namespace A116948

/-- `A128834(A099375(n)+2)+1` -/
def P2090772577940021227.Spec : Prop :=
  ∀ n, P2090772577940021227.a n = A116948 n

end A116948

/-! ## A116948.P17479823254291148952

`2-A010872(A025581(n)+1)`
-/

namespace A116948.P17479823254291148952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (A025581 n + 1).toNat

end

end A116948.P17479823254291148952

namespace A116948

/-- `2-A010872(A025581(n)+1)` -/
def P17479823254291148952.Spec : Prop :=
  ∀ n, P17479823254291148952.a n = A116948 n

end A116948

/-! ## A116948.P17978208458474506987

`1-A049347(A025581(n)+2)`
-/

namespace A116948.P17978208458474506987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049347 (A025581 n + 2).toNat

end

end A116948.P17978208458474506987

namespace A116948

/-- `1-A049347(A025581(n)+2)` -/
def P17978208458474506987.Spec : Prop :=
  ∀ n, P17978208458474506987.a n = A116948 n

end A116948

/-! ## A116948.P1037275306708718113

`1-A128834(A099375(n)-1)`
-/

namespace A116948.P1037275306708718113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A128834 (A099375 n - 1).toNat

end

end A116948.P1037275306708718113

namespace A116948

/-- `1-A128834(A099375(n)-1)` -/
def P1037275306708718113.Spec : Prop :=
  ∀ n, P1037275306708718113.a n = A116948 n

end A116948

/-! ## A116948.P13127850628675421208

`A010872(2*A025581(n)+1)`
-/

namespace A116948.P13127850628675421208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * A025581 n + 1).toNat

end

end A116948.P13127850628675421208

namespace A116948

/-- `A010872(2*A025581(n)+1)` -/
def P13127850628675421208.Spec : Prop :=
  ∀ n, P13127850628675421208.a n = A116948 n

end A116948

/-! ## A116948.P11672917946709860815

`A093718(2*A025581(n)+1)`
-/

namespace A116948.P11672917946709860815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093718 (2 * A025581 n + 1).toNat

end

end A116948.P11672917946709860815

namespace A116948

/-- `A093718(2*A025581(n)+1)` -/
def P11672917946709860815.Spec : Prop :=
  ∀ n, P11672917946709860815.a n = A116948 n

end A116948

/-! ## A116948.P7629548119034676555

`A102283(2*A025581(n))+1`
-/

namespace A116948.P7629548119034676555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (2 * A025581 n).toNat + 1

end

end A116948.P7629548119034676555

namespace A116948

/-- `A102283(2*A025581(n))+1` -/
def P7629548119034676555.Spec : Prop :=
  ∀ n, P7629548119034676555.a n = A116948 n

end A116948

/-!
# A116949: Riordan array ((1-x^3)/(1+2x^2),x).

The programs for A116949, there is no canonical definition to state claims against.
-/

/-! ## A116949.P6352981648698002220

`A286129(10*A000384(A130321(n)))`
-/

namespace A116949.P6352981648698002220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286129 (10 * A000384 (A130321 n).toNat).toNat

end

end A116949.P6352981648698002220

/-!
# A116950: Number of functional patterns on n elements; or digraphs with maximum outdegree 1, n arrows and every point connected to an arrow.

The programs for A116950, there is no canonical definition to state claims against.
-/

/-! ## A116950.P13498773278040622350

`A003085(n+1)-A127910(n)`
-/

namespace A116950.P13498773278040622350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) - A127910 n

end

end A116950.P13498773278040622350

/-! ## A116950.P1578956433821341601

`A054590(n+1)+A054918(n+1)-A127910(n)`
-/

namespace A116950.P1578956433821341601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054590 (n + 1) + (A054918 (n + 1) - A127910 n)

end

end A116950.P1578956433821341601

/-! ## A116950.P2265029576336050263

`A054932(n+1)+A055969(n+1)-A127910(n)`
-/

namespace A116950.P2265029576336050263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054932 (n + 1) + (A055969 (n + 1) - A127910 n)

end

end A116950.P2265029576336050263

/-! ## A116950.P5314190685667579140

`A000273(n+1)-A054590(n+1)-A127910(n)`
-/

namespace A116950.P5314190685667579140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 (n + 1) - A054590 (n + 1) - A127910 n

end

end A116950.P5314190685667579140

/-! ## A116950.P5429117147886117420

`A054918(n+1)+A054928(n+1)-A054932(n+1)-A127910(n)`
-/

namespace A116950.P5429117147886117420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054918 (n + 1) + (A054928 (n + 1) - A054932 (n + 1)) - A127910 n

end

end A116950.P5429117147886117420

/-!
# A116951: Let M = {{0, 1}, {1/3, 2}}; w[1] = {0, 1}; w[n] = M.w[n - 1]; then a(n) = w[n][[1]]*3^Floor[2*(n - 1)/3].

The programs for A116951, there is no canonical definition to state claims against.
-/

/-! ## A116951.P18068146133632039116

`A074206(A001075(n))*A144535(n)`
-/

namespace A116951.P18068146133632039116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A001075 n).toNat * A144535 n

end

end A116951.P18068146133632039116

/-! ## A116951.P3058787120922705317

`A084115(A067771(n))*A144535(n)`
-/

namespace A116951.P3058787120922705317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084115 (A067771 n).toNat * A144535 n

end

end A116951.P3058787120922705317

/-! ## A116951.P1908713911804776934

`A074206(A016064(n))*A144535(n)`
-/

namespace A116951.P1908713911804776934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A016064 n).toNat * A144535 n

end

end A116951.P1908713911804776934

/-! ## A116951.P18383424054080060431

`A074206(A030662(n+1))*A144535(n)`
-/

namespace A116951.P18383424054080060431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A030662 (n + 1)).toNat * A144535 n

end

end A116951.P18383424054080060431

/-!
# A116952: a(n) = 3*a(n-1) + 5 with a(0) = 1.

The programs for A116952, the canonical program `A116952.P6732855399248185630` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116952 has offset 0).

The definition of A116952 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+5` (program `A116952.P6732855399248185630`, by `A116952.P6732855399248185630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116952.P6732855399248185630

`3*a(n-1)+5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116952

/-- `3*a(n-1)+5` -/
def P6732855399248185630.Spec : Prop :=
  ∀ n, (P6732855399248185630.a n : ℤ) = A116952 n

theorem P6732855399248185630.correct : P6732855399248185630.Spec := by
  intro n
  simp only [A116952]

end A116952

/-! ## A116952.P1475909577851075155

`(7*3^n-5)/2`
-/

namespace A116952.P1475909577851075155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 3 ^ n : ℤ) - 5 : ℚ) / 2

end

end A116952.P1475909577851075155

namespace A116952

/-- `(7*3^n-5)/2` -/
def P1475909577851075155.Spec : Prop :=
  ∀ n, P1475909577851075155.a n = (A116952 n : ℚ)

theorem P1475909577851075155.correct : P1475909577851075155.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A116952, Nat.add_sub_cancel, A116952.P1475909577851075155.a, A116952.P6732855399248185630.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A116952, Nat.add_sub_cancel, A116952.P1475909577851075155.a, A116952.P6732855399248185630.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A116952

/-! ## A116952.P3707056624536318069

`ogf((1+4x)/(1-4x+3x^2))`
-/

namespace A116952.P3707056624536318069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -4, 3] n

end

end A116952.P3707056624536318069

namespace A116952

/-- `ogf((1+4x)/(1-4x+3x^2))` -/
def P3707056624536318069.Spec : Prop :=
  ∀ n, P3707056624536318069.a n = A116952 n

end A116952

/-! ## A116952.P7606382242468267813

`lcm(3, a(n-1))+5` with `a(0)=1`
-/

namespace A116952.P7606382242468267813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 5

end

end A116952.P7606382242468267813

namespace A116952

/-- `lcm(3, a(n-1))+5` -/
def P7606382242468267813.Spec : Prop :=
  ∀ n, (P7606382242468267813.a n : ℤ) = A116952 n

end A116952

/-! ## A116952.P17016331702921561690

`∑[3*a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A116952.P17016331702921561690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116952.P17016331702921561690

namespace A116952

/-- `∑[3*a(n-1)]` -/
def P17016331702921561690.Spec : Prop :=
  ∀ n, (P17016331702921561690.a n : ℤ) = A116952 n

end A116952

/-! ## A116952.P18385219431240356798

`xor(2, floor(7/2*3^n))`
-/

namespace A116952.P18385219431240356798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ⌊(7 : ℚ) / 2 * (3 ^ n : ℚ)⌋

end

end A116952.P18385219431240356798

namespace A116952

/-- `xor(2, floor(7/2*3^n))` -/
def P18385219431240356798.Spec : Prop :=
  ∀ n, P18385219431240356798.a n = A116952 n

end A116952

/-! ## A116952.P1677037171279692768

`8-3*(1-a(n-1))` with `a(0)=1`
-/

namespace A116952.P1677037171279692768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 - 3 * (1 - a (n - 1))

end

end A116952.P1677037171279692768

namespace A116952

/-- `8-3*(1-a(n-1))` -/
def P1677037171279692768.Spec : Prop :=
  ∀ n, P1677037171279692768.a n = A116952 n

end A116952

/-! ## A116952.P2548709576323361115

`∑[a(n-1)/cot(atan(3))]` with `a(0)=1, a(1)=7`
-/

namespace A116952.P2548709576323361115
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) / Real.cot (Real.arctan (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116952.P2548709576323361115

namespace A116952

/-- `∑[a(n-1)/cot(atan(3))]` -/
def P2548709576323361115.Spec : Prop :=
  ∀ n, P2548709576323361115.a n = (A116952 n : ℝ)

end A116952

/-! ## A116952.P5091256356115388631

`floor(a(n-1)+a(n-1)+a(n-1)+5)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A116952.P5091256356115388631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 5))

end

end A116952.P5091256356115388631

namespace A116952

/-- `floor(a(n-1)+a(n-1)+a(n-1)+5)` -/
def P5091256356115388631.Spec : Prop :=
  ∀ n, (P5091256356115388631.a n : ℤ) = A116952 n

theorem P5091256356115388631.correct : P5091256356115388631.Spec := by
  intro n
  simp only [A116952, Nat.add_sub_cancel, A116952.P5091256356115388631.a, A116952.P6732855399248185630.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116952

/-! ## A116952.P230291489837195861

`∑[A082541(n)]`
-/

namespace A116952.P230291489837195861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116952.P230291489837195861

namespace A116952

/-- `∑[A082541(n)]` -/
def P230291489837195861.Spec : Prop :=
  ∀ n, P230291489837195861.a n = A116952 n

end A116952

/-! ## A116952.P18032168816119264120

`A237930(n)-2`
-/

namespace A116952.P18032168816119264120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237930 n - 2

end

end A116952.P18032168816119264120

namespace A116952

/-- `A237930(n)-2` -/
def P18032168816119264120.Spec : Prop :=
  ∀ n, P18032168816119264120.a n = A116952 n

end A116952

/-! ## A116952.P11711553374769843796

`A199109(n)-3`
-/

namespace A116952.P11711553374769843796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199109 n - 3

end

end A116952.P11711553374769843796

namespace A116952

/-- `A199109(n)-3` -/
def P11711553374769843796.Spec : Prop :=
  ∀ n, P11711553374769843796.a n = A116952 n

end A116952

/-! ## A116952.P3220313293663325815

`∑[A072985(2*n)]`
-/

namespace A116952.P3220313293663325815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072985 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116952.P3220313293663325815

namespace A116952

/-- `∑[A072985(2*n)]` -/
def P3220313293663325815.Spec : Prop :=
  ∀ n, P3220313293663325815.a n = A116952 n

end A116952

/-! ## A116952.P7920902104098968063

`Δ[A108765(n)]-2`
-/

namespace A116952.P7920902104098968063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A116952.P7920902104098968063

namespace A116952

/-- `Δ[A108765(n)]-2` -/
def P7920902104098968063.Spec : Prop :=
  ∀ n, P7920902104098968063.a n = A116952 n

end A116952

/-! ## A116952.P14624203637840511682

`Δ[A103177(n)]-3`
-/

namespace A116952.P14624203637840511682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A116952.P14624203637840511682

namespace A116952

/-- `Δ[A103177(n)]-3` -/
def P14624203637840511682.Spec : Prop :=
  ∀ n, P14624203637840511682.a n = A116952 n

end A116952

/-! ## A116952.P6171023635601939413

`∑[A027107(n)]+n`
-/

namespace A116952.P6171023635601939413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A116952.P6171023635601939413

namespace A116952

/-- `∑[A027107(n)]+n` -/
def P6171023635601939413.Spec : Prop :=
  ∀ n, P6171023635601939413.a n = A116952 n

end A116952

/-! ## A116952.P16944180545218198394

`∑[record[A166481(n+1)]]`
-/

namespace A116952.P16944180545218198394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166481 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116952.P16944180545218198394

namespace A116952

/-- `∑[record[A166481(n+1)]]` -/
def P16944180545218198394.Spec : Prop :=
  ∀ n, P16944180545218198394.a n = A116952 n

end A116952

/-! ## A116952.P10358977913975600677

`∑[A141495(n+1)]-2`
-/

namespace A116952.P10358977913975600677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A116952.P10358977913975600677

namespace A116952

/-- `∑[A141495(n+1)]-2` -/
def P10358977913975600677.Spec : Prop :=
  ∀ n, P10358977913975600677.a n = A116952 n

end A116952

/-! ## A116952.P9844030257086771922

`A134931(n)+A024023(n)`
-/

namespace A116952.P9844030257086771922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134931 n + A024023 n

end

end A116952.P9844030257086771922

namespace A116952

/-- `A134931(n)+A024023(n)` -/
def P9844030257086771922.Spec : Prop :=
  ∀ n, P9844030257086771922.a n = A116952 n

end A116952

/-! ## A116952.P3340417278602956280

`A036543(n)-A003462(n)`
-/

namespace A116952.P3340417278602956280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036543 n - A003462 n

end

end A116952.P3340417278602956280

namespace A116952

/-- `A036543(n)-A003462(n)` -/
def P3340417278602956280.Spec : Prop :=
  ∀ n, P3340417278602956280.a n = A116952 n

end A116952

/-!
# A116953: a(n) = Floor[1/2((1-2/Sqrt[3])^n+(1-2/Sqrt[3])^n)].

The programs for A116953, there is no canonical definition to state claims against.
-/

/-! ## A116953.P5368480659109706791

`floor(A141041(n)/A000244(n))`
-/

namespace A116953.P5368480659109706791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141041 n : ℚ) / (A000244 n : ℚ)⌋

end

end A116953.P5368480659109706791

/-! ## A116953.P7667353339553983449

`floor(A144536(n)/A108411(n))`
-/

namespace A116953.P7667353339553983449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144536 n : ℚ) / (A108411 n : ℚ)⌋

end

end A116953.P7667353339553983449

/-! ## A116953.P9944324835313861162

`floor(A001075(n)²/A141041(n))`
-/

namespace A116953.P9944324835313861162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001075 n ^ 2 : ℚ) / (A141041 n : ℚ)⌋

end

end A116953.P9944324835313861162

/-! ## A116953.P17126993018415034254

`floor(A001075(n)/sqrt(A000244(n)))`
-/

namespace A116953.P17126993018415034254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001075 n : ℝ) / Real.sqrt (A000244 n : ℝ)⌋

end

end A116953.P17126993018415034254

/-! ## A116953.P9368870186284446669

`ceil(A001075(n)²/A141041(n)-A057427(n))`
-/

namespace A116953.P9368870186284446669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001075 n ^ 2 : ℚ) / (A141041 n : ℚ) - (A057427 n : ℚ)⌉

end

end A116953.P9368870186284446669

/-!
# A116954: Numbers k such that 3*k^3 + 1 is prime.

The programs for A116954, there is no canonical definition to state claims against.
-/

/-! ## A116954.P9504773136911028701

`eq[1, ∑{e}[3*n*n²+1, #]]`
-/

namespace A116954.P9504773136911028701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * n ^ 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116954.P9504773136911028701

/-! ## A116954.P2730830373150147670

`eq[2, ∏{e}[A117642(n)+1, #+1]]`
-/

namespace A116954.P2730830373150147670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116954.P2730830373150147670

/-! ## A116954.P15542521840157348561

`eq[2, A057516(∏{e}[n*(3*n)²+3, #+1])]`
-/

namespace A116954.P15542521840157348561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) ^ 2 + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116954.P15542521840157348561

/-!
# A116955: a(n+1) = a(n) + (if a(n) is odd then (next odd square) else (next even square)), a(0) = 1.

The programs for A116955, the canonical program `A116955.P16493638188414272524` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116955 has offset 0).

The definition of A116955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116955.P16493638188414272524

`dr(9*n)+xor(1, C(2*n, 3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116955

/-- `dr(9*n)+xor(1, C(2*n, 3))` -/
def P16493638188414272524.Spec : Prop :=
  ∀ n, (P16493638188414272524.a n : ℤ) = A116955 n

theorem P16493638188414272524.correct : P16493638188414272524.Spec := by
  intro n
  simp only [A116955]

end A116955

/-! ## A116955.P11119699113897137235

`a(n-1)+(2*(1-n))²` with `a(0)=1, a(1)=10`
-/

namespace A116955.P11119699113897137235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 1) + (2 * (1 - (n : ℤ))) ^ 2

end

end A116955.P11119699113897137235

namespace A116955

/-- `a(n-1)+(2*(1-n))²` -/
def P11119699113897137235.Spec : Prop :=
  ∀ n, P11119699113897137235.a n = A116955 n

end A116955

/-! ## A116955.P10098421150516228622

`∑[(2*n+1-3%∑[n+1])²]`
-/

namespace A116955.P10098421150516228622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - ((3 % (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116955.P10098421150516228622

namespace A116955

/-- `∑[(2*n+1-3%∑[n+1])²]` -/
def P10098421150516228622.Spec : Prop :=
  ∀ n, P10098421150516228622.a n = A116955 n

end A116955

/-! ## A116955.P9452719887645021302

`or(1, C(2*n, 3))+9*A057427(n)`
-/

namespace A116955.P9452719887645021302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (Nat.choose (2 * n) 3) : ℤ) + 9 * A057427 n

end

end A116955.P9452719887645021302

namespace A116955

/-- `or(1, C(2*n, 3))+9*A057427(n)` -/
def P9452719887645021302.Spec : Prop :=
  ∀ n, P9452719887645021302.a n = A116955 n

end A116955

/-! ## A116955.P17153980523402586423

`∑[(A280193(A000010(n+1))-2*n)²]`
-/

namespace A116955.P17153980523402586423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280193 (A000010 (n + 1)).toNat - (2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116955.P17153980523402586423

namespace A116955

/-- `∑[(A280193(A000010(n+1))-2*n)²]` -/
def P17153980523402586423.Spec : Prop :=
  ∀ n, P17153980523402586423.a n = A116955 n

end A116955

/-! ## A116955.P13678789965384766125

`∑[Δ[abs(char[1]-n*(n-2))-n]²]`
-/

namespace A116955.P13678789965384766125
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ) * ((n : ℤ) - 2)| - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116955.P13678789965384766125

namespace A116955

/-- `∑[Δ[abs(char[1]-n*(n-2))-n]²]` -/
def P13678789965384766125.Spec : Prop :=
  ∀ n, P13678789965384766125.a n = A116955 n

end A116955

/-! ## A116955.P16969770744496405563

`A000290(Δ[(n-1)²]-1)+a(n-1)` with `a(0)=1, a(1)=10`
-/

namespace A116955.P16969770744496405563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A000290 (f1 (n + 1) - f1 n - 1).toNat + a (n - 1)

end

end A116955.P16969770744496405563

namespace A116955

/-- `A000290(Δ[(n-1)²]-1)+a(n-1)` -/
def P16969770744496405563.Spec : Prop :=
  ∀ n, P16969770744496405563.a n = A116955 n

end A116955

/-!
# A116956: Number of functions f:{1,2,...,n}->{1,2,...,n} with odd cycles only.

The programs for A116956, there is no canonical definition to state claims against.
-/

/-! ## A116956.P9306152065635071497

`A202013(n)+A060435(n)`
-/

namespace A116956.P9306152065635071497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202013 n + A060435 n

end

end A116956.P9306152065635071497

/-! ## A116956.P3063773885730631705

`A246609(∑[n]+2)+A202013(n)`
-/

namespace A116956.P3063773885730631705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A202013 n

end

end A116956.P3063773885730631705

/-! ## A116956.P401418667587354105

`A000007(n)+A246609(A133263(n))+A202013(n)`
-/

namespace A116956.P401418667587354105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A246609 (A133263 n).toNat + A202013 n)

end

end A116956.P401418667587354105

/-! ## A116956.P6474256643478450203

`A246609(A133263(n))+A202013(n)+A151934(n)`
-/

namespace A116956.P6474256643478450203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (A133263 n).toNat + (A202013 n + A151934 n)

end

end A116956.P6474256643478450203

/-! ## A116956.P7443467135161031790

`A147612(2*n)+A246609(A133263(n))+A202013(n)`
-/

namespace A116956.P7443467135161031790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n) + (A246609 (A133263 n).toNat + A202013 n)

end

end A116956.P7443467135161031790

/-!
# A116957: Lynch-Bell numbers n such that 5 is a digit of n.

The programs for A116957, there is no canonical definition to state claims against.
-/

/-! ## A116957.P1601353841894398586

`A117913(3%comp[∑[n]]+n+2)`
-/

namespace A116957.P1601353841894398586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117913 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n + 2)

end

end A116957.P1601353841894398586

/-! ## A116957.P16188415957588465225

`filter[A115569(n+1), A079998(#)]`
-/

namespace A116957.P16188415957588465225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A116957.P16188415957588465225

/-! ## A116957.P12573361494785396303

`filter[A117913(n+1), A079998(#)]`
-/

namespace A116957.P12573361494785396303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A116957.P12573361494785396303

/-! ## A116957.P6083764130042614728

`filter[A117913(n+2), A173859(#)]`
-/

namespace A116957.P6083764130042614728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173859 (f1 j).toNat = 1) n)

end

end A116957.P6083764130042614728

/-! ## A116957.P4887504869506570150

`filter[A117913(n+2), A342005(#)]`
-/

namespace A116957.P4887504869506570150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342005 (f1 j).toNat = 1) n)

end

end A116957.P4887504869506570150

/-!
# A116958: Numbers k such that 2*k + 5 and 2*k + 7 are twin primes.

The programs for A116958, the canonical program `A116958.P6140543350835560878` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116958 has offset 1).

The definition of A116958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116958.P6140543350835560878

`3*(A002822(n+1)-1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A116958

/-- `3*(A002822(n+1)-1)` -/
def P6140543350835560878.Spec : Prop :=
  ∀ n, P6140543350835560878.a n = A116958 (n + 1)

theorem P6140543350835560878.correct : P6140543350835560878.Spec := by
  intro n
  simp only [A116958, Nat.add_sub_cancel]

end A116958

/-! ## A116958.P3928226250329944850

`A040040(n+2)-3`
-/

namespace A116958.P3928226250329944850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 2) - 3

end

end A116958.P3928226250329944850

namespace A116958

/-- `A040040(n+2)-3` -/
def P3928226250329944850.Spec : Prop :=
  ∀ n, P3928226250329944850.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P8811545510346382295

`floor(A001359(n+2)/2)-2`
-/

namespace A116958.P8811545510346382295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001359 (n + 2) : ℚ) / 2⌋ - 2

end

end A116958.P8811545510346382295

namespace A116958

/-- `floor(A001359(n+2)/2)-2` -/
def P8811545510346382295.Spec : Prop :=
  ∀ n, P8811545510346382295.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P2653629609401793535

`∑[A053319(n+1)/2]-1`
-/

namespace A116958.P2653629609401793535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053319 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116958.P2653629609401793535

namespace A116958

/-- `∑[A053319(n+1)/2]-1` -/
def P2653629609401793535.Spec : Prop :=
  ∀ n, P2653629609401793535.a n = (A116958 (n + 1) : ℚ)

end A116958

/-! ## A116958.P9868517403513426891

`∑[A167132(n+1)/2]+n`
-/

namespace A116958.P9868517403513426891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167132 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A116958.P9868517403513426891

namespace A116958

/-- `∑[A167132(n+1)/2]+n` -/
def P9868517403513426891.Spec : Prop :=
  ∀ n, P9868517403513426891.a n = (A116958 (n + 1) : ℚ)

end A116958

/-! ## A116958.P18266124165501120743

`∑[A029578(Δ[A001359(n+1)])]-1`
-/

namespace A116958.P18266124165501120743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116958.P18266124165501120743

namespace A116958

/-- `∑[A029578(Δ[A001359(n+1)])]-1` -/
def P18266124165501120743.Spec : Prop :=
  ∀ n, P18266124165501120743.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P18346070962557762607

`∑[A074953(n+1)-A006512(n+1)]+n`
-/

namespace A116958.P18346070962557762607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074953 (n + 1) - A006512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A116958.P18346070962557762607

namespace A116958

/-- `∑[A074953(n+1)-A006512(n+1)]+n` -/
def P18346070962557762607.Spec : Prop :=
  ∀ n, P18346070962557762607.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P11405839321853009339

`∑[(A001359(n+2)-A006512(n+1))/2]+n`
-/

namespace A116958.P11405839321853009339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 2) - A006512 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A116958.P11405839321853009339

namespace A116958

/-- `∑[(A001359(n+2)-A006512(n+1))/2]+n` -/
def P11405839321853009339.Spec : Prop :=
  ∀ n, P11405839321853009339.a n = (A116958 (n + 1) : ℚ)

end A116958

/-! ## A116958.P7513796431519061748

`A243811(n+2)-1`
-/

namespace A116958.P7513796431519061748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 2) - 1

end

end A116958.P7513796431519061748

namespace A116958

/-- `A243811(n+2)-1` -/
def P7513796431519061748.Spec : Prop :=
  ∀ n, P7513796431519061748.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P6799646093527865202

`A144834(n+2)/2-2`
-/

namespace A116958.P6799646093527865202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 2) : ℚ) / 2 - 2

end

end A116958.P6799646093527865202

namespace A116958

/-- `A144834(n+2)/2-2` -/
def P6799646093527865202.Spec : Prop :=
  ∀ n, P6799646093527865202.a n = (A116958 (n + 1) : ℚ)

end A116958

/-! ## A116958.P37128713937685500

`A014574(n+2)/2-3`
-/

namespace A116958.P37128713937685500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 2) : ℚ) / 2 - 3

end

end A116958.P37128713937685500

namespace A116958

/-- `A014574(n+2)/2-3` -/
def P37128713937685500.Spec : Prop :=
  ∀ n, P37128713937685500.a n = (A116958 (n + 1) : ℚ)

end A116958

/-! ## A116958.P14953154706264109176

`A163059(n+2)-(2*n+5)`
-/

namespace A116958.P14953154706264109176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163059 (n + 2) - (2 * n + 5 : ℤ)

end

end A116958.P14953154706264109176

namespace A116958

/-- `A163059(n+2)-(2*n+5)` -/
def P14953154706264109176.Spec : Prop :=
  ∀ n, P14953154706264109176.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P15179310248611844862

`∑[A004526(Δ[A014574(n+1)])]-1`
-/

namespace A116958.P15179310248611844862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116958.P15179310248611844862

namespace A116958

/-- `∑[A004526(Δ[A014574(n+1)])]-1` -/
def P15179310248611844862.Spec : Prop :=
  ∀ n, P15179310248611844862.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P2739271933399848596

`A168497(n+3)-3`
-/

namespace A116958.P2739271933399848596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 3) - 3

end

end A116958.P2739271933399848596

namespace A116958

/-- `A168497(n+3)-3` -/
def P2739271933399848596.Spec : Prop :=
  ∀ n, P2739271933399848596.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P11988148601340945835

`A014682(A167379(n+1)-1)-2`
-/

namespace A116958.P11988148601340945835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A167379 (n + 1) - 1).toNat - 2

end

end A116958.P11988148601340945835

namespace A116958

/-- `A014682(A167379(n+1)-1)-2` -/
def P11988148601340945835.Spec : Prop :=
  ∀ n, P11988148601340945835.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P15704247196764097527

`A014682(A177139(n+1)-2)-2`
-/

namespace A116958.P15704247196764097527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177139 (n + 1) - 2).toNat - 2

end

end A116958.P15704247196764097527

namespace A116958

/-- `A014682(A177139(n+1)-2)-2` -/
def P15704247196764097527.Spec : Prop :=
  ∀ n, P15704247196764097527.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P11804157430175707167

`3*A153196(n+1)`
-/

namespace A116958.P11804157430175707167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153196 (n + 1)

end

end A116958.P11804157430175707167

namespace A116958

/-- `3*A153196(n+1)` -/
def P11804157430175707167.Spec : Prop :=
  ∀ n, P11804157430175707167.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P5028324575253953638

`∩[A089038(n+1), A105760(n+1)]`
-/

namespace A116958.P5028324575253953638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116958.P5028324575253953638

namespace A116958

/-- `∩[A089038(n+1), A105760(n+1)]` -/
def P5028324575253953638.Spec : Prop :=
  ∀ n, (P5028324575253953638.a n : ℤ) = A116958 (n + 1)

end A116958

/-! ## A116958.P13475272762944195226

`record[A102551(n+1)-2]`
-/

namespace A116958.P13475272762944195226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102551 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116958.P13475272762944195226

namespace A116958

/-- `record[A102551(n+1)-2]` -/
def P13475272762944195226.Spec : Prop :=
  ∀ n, P13475272762944195226.a n = A116958 (n + 1)

end A116958

/-! ## A116958.P9384329722769420004

`∑[Δ[p?[A000040(n+1)+2]]/2]-1`
-/

namespace A116958.P9384329722769420004
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116958.P9384329722769420004

namespace A116958

/-- `∑[Δ[p?[A000040(n+1)+2]]/2]-1` -/
def P9384329722769420004.Spec : Prop :=
  ∀ n, P9384329722769420004.a n = (A116958 (n + 1) : ℚ)

end A116958

/-!
# A116959: a(n) is the smallest k>0 for which lcm(1,...,k) is greater than k^n.

The programs for A116959, there is no canonical definition to state claims against.
-/

/-! ## A116959.P8259593585307502780

`p?[A342191(A078358(n+1))]`
-/

namespace A116959.P8259593585307502780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (A078358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116959.P8259593585307502780

/-! ## A116959.P4818589910626232517

`p?[A267814(n)*A342191(n+1)]`
-/

namespace A116959.P4818589910626232517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267814 n * A342191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116959.P4818589910626232517

/-! ## A116959.P2396637113765930209

`∩[A065091(n+1), A342191(A078358(n+1))]`
-/

namespace A116959.P2396637113765930209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (A078358 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116959.P2396637113765930209

/-! ## A116959.P1381744255664823216

`eq[A341702(n), A379671(n+1)]`
-/

namespace A116959.P1381744255664823216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116959.P1381744255664823216

/-! ## A116959.P10032530487951367794

`A042988(A077168(n))`
-/

namespace A116959.P10032530487951367794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 (A077168 n).toNat

end

end A116959.P10032530487951367794

/-!
# A116960: Lynch-Bell numbers k such that 1 is not a digit of k.

The programs for A116960, there is no canonical definition to state claims against.
-/

/-! ## A116960.P10281200814085194222

`∩[A037344(n+1), A115569(n+1)]`
-/

namespace A116960.P10281200814085194222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116960.P10281200814085194222

/-! ## A116960.P15216325250902231715

`∩[A039112(n+1), A115569(n+1)]`
-/

namespace A116960.P15216325250902231715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116960.P15216325250902231715

/-! ## A116960.P5661404531379362990

`∩[A052383(n+1), A115569(n+1)]`
-/

namespace A116960.P5661404531379362990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116960.P5661404531379362990

/-! ## A116960.P6652137828835471591

`∩[A115569(n+1), A318276(n+1)]`
-/

namespace A116960.P6652137828835471591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116960.P6652137828835471591

/-!
# A116961: Numbers of the form 2^(2^k-1)-1, 2^(2^k-1), 2^(2^k)-1, 2^(2^k).

The programs for A116961, there is no canonical definition to state claims against.
-/

/-! ## A116961.P14603111660109554008

`eq[A033909(n), A073139(n)]`
-/

namespace A116961.P14603111660109554008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116961.P14603111660109554008

/-! ## A116961.P13739640325034776266

`eq[A073139(n), A097601(n)]`
-/

namespace A116961.P13739640325034776266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116961.P13739640325034776266

/-! ## A116961.P9616012250772101602

`eq[A301895(n)², A193582(n)]`
-/

namespace A116961.P9616012250772101602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301895 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116961.P9616012250772101602

/-! ## A116961.P2597524999771477865

`eq[A037833(n+1), A073139(n)]`
-/

namespace A116961.P2597524999771477865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116961.P2597524999771477865

/-! ## A116961.P3298560609543374061

`eq[1, A097601(n)+A090706(n)]`
-/

namespace A116961.P3298560609543374061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n + A090706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116961.P3298560609543374061

/-!
# A116963: Inverse Moebius transform of the shifted tetrahedral numbers.

The programs for A116963, the canonical program `A116963.P1605029148597854715` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116963 has offset 1).

The definition of A116963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116963.P1605029148597854715

`∑{d}[n+1, C(#+3, 3)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116963

/-- `∑{d}[n+1, C(#+3, 3)]` -/
def P1605029148597854715.Spec : Prop :=
  ∀ n, (P1605029148597854715.a n : ℤ) = A116963 (n + 1)

theorem P1605029148597854715.correct : P1605029148597854715.Spec := by
  intro n
  simp only [A116963, Nat.add_sub_cancel]

end A116963

/-! ## A116963.P11313731029189699001

`(A001158(n+1)+6*A001157(n+1)+11*A000203(n+1)+6*A000005(n+1))/6`
-/

namespace A116963.P11313731029189699001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) + 6 * A001157 (n + 1) + 11 * A000203 (n + 1) + 6 * A000005 (n + 1) : ℚ) / 6

end

end A116963.P11313731029189699001

namespace A116963

/-- `(A001158(n+1)+6*A001157(n+1)+11*A000203(n+1)+6*A000005(n+1))/6` -/
def P11313731029189699001.Spec : Prop :=
  ∀ n, P11313731029189699001.a n = (A116963 (n + 1) : ℚ)

end A116963

/-! ## A116963.P7689493884251635723

`4/(n+1)*A343545(n+1)`
-/

namespace A116963.P7689493884251635723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A343545 (n + 1) : ℚ)

end

end A116963.P7689493884251635723

namespace A116963

/-- `4/(n+1)*A343545(n+1)` -/
def P7689493884251635723.Spec : Prop :=
  ∀ n, P7689493884251635723.a n = (A116963 (n + 1) : ℚ)

end A116963

/-! ## A116963.P1235472988406951975

`A363695(n+1)-A073570(n+1)`
-/

namespace A116963.P1235472988406951975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363695 (n + 1) - A073570 (n + 1)

end

end A116963.P1235472988406951975

namespace A116963

/-- `A363695(n+1)-A073570(n+1)` -/
def P1235472988406951975.Spec : Prop :=
  ∀ n, P1235472988406951975.a n = A116963 (n + 1)

end A116963

/-! ## A116963.P9701839584526337006

`A007437(n+1)+A363628(n+1)+A363604(n+1)`
-/

namespace A116963.P9701839584526337006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) + (A363628 (n + 1) + A363604 (n + 1))

end

end A116963.P9701839584526337006

namespace A116963

/-- `A007437(n+1)+A363628(n+1)+A363604(n+1)` -/
def P9701839584526337006.Spec : Prop :=
  ∀ n, P9701839584526337006.a n = A116963 (n + 1)

end A116963

/-! ## A116963.P16051150207431423927

`A363606(n+1)+A363695(n+1)-A101289(n+1)`
-/

namespace A116963.P16051150207431423927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363606 (n + 1) + (A363695 (n + 1) - A101289 (n + 1))

end

end A116963.P16051150207431423927

namespace A116963

/-- `A363606(n+1)+A363695(n+1)-A101289(n+1)` -/
def P16051150207431423927.Spec : Prop :=
  ∀ n, P16051150207431423927.a n = A116963 (n + 1)

end A116963

/-! ## A116963.P4538154584219787176

`∑{d}[n+1, sqrt(A001249(#))]`
-/

namespace A116963.P4538154584219787176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A001249 d : ℝ)

end

end A116963.P4538154584219787176

namespace A116963

/-- `∑{d}[n+1, sqrt(A001249(#))]` -/
def P4538154584219787176.Spec : Prop :=
  ∀ n, P4538154584219787176.a n = (A116963 (n + 1) : ℝ)

end A116963

/-! ## A116963.P9090140966099641251

`∑{d}[n+1, A000292(#+1)]`
-/

namespace A116963.P9090140966099641251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000292 (d + 1)

end

end A116963.P9090140966099641251

namespace A116963

/-- `∑{d}[n+1, A000292(#+1)]` -/
def P9090140966099641251.Spec : Prop :=
  ∀ n, P9090140966099641251.a n = A116963 (n + 1)

theorem P9090140966099641251.correct : P9090140966099641251.Spec := by
  intro n
  simp only [A116963, Nat.add_sub_cancel, A116963.P9090140966099641251.f1, A116963.P9090140966099641251.a, A116963.P1605029148597854715.f1, A116963.P1605029148597854715.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116963

/-! ## A116963.P2365190761681377833

`A363628(n+1)+A059358(n+1)`
-/

namespace A116963.P2365190761681377833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363628 (n + 1) + A059358 (n + 1)

end

end A116963.P2365190761681377833

namespace A116963

/-- `A363628(n+1)+A059358(n+1)` -/
def P2365190761681377833.Spec : Prop :=
  ∀ n, P2365190761681377833.a n = A116963 (n + 1)

end A116963

/-! ## A116963.P9354238078508371310

`∑{d}[n+1, A002378(#)+A000125(#)]`
-/

namespace A116963.P9354238078508371310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A002378 d + A000125 d)

end

end A116963.P9354238078508371310

namespace A116963

/-- `∑{d}[n+1, A002378(#)+A000125(#)]` -/
def P9354238078508371310.Spec : Prop :=
  ∀ n, P9354238078508371310.a n = A116963 (n + 1)

end A116963

/-! ## A116963.P7862824232492558689

`∑{d}[n+1, A003600(#)+A000124(#)]`
-/

namespace A116963.P7862824232492558689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A003600 d + A000124 d)

end

end A116963.P7862824232492558689

namespace A116963

/-- `∑{d}[n+1, A003600(#)+A000124(#)]` -/
def P7862824232492558689.Spec : Prop :=
  ∀ n, P7862824232492558689.a n = A116963 (n + 1)

end A116963

/-! ## A116963.P15752847917560819648

`∑{d}[n+1, A160790(2*#+1)]`
-/

namespace A116963.P15752847917560819648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160790 (2 * d + 1)

end

end A116963.P15752847917560819648

namespace A116963

/-- `∑{d}[n+1, A160790(2*#+1)]` -/
def P15752847917560819648.Spec : Prop :=
  ∀ n, P15752847917560819648.a n = A116963 (n + 1)

end A116963

/-!
# A116964: Sum of all n-digit Lucas numbers.

The programs for A116964, there is no canonical definition to state claims against.
-/

/-! ## A116964.P5815645350160207747

`Δ[A000032(A184746(4*n+1)-n)]`
-/

namespace A116964.P5815645350160207747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A184746 (4 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116964.P5815645350160207747

/-!
# A116966: a(n) = n + {1,2,0,1} according as n == {0,1,2,3} mod 4.

The programs for A116966, the canonical program `A116966.P7903116622855519725` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116966 has offset 0).

The definition of A116966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116966.P7903116622855519725

`a(n-4)+4` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116966

/-- `a(n-4)+4` -/
def P7903116622855519725.Spec : Prop :=
  ∀ n, (P7903116622855519725.a n : ℤ) = A116966 n

theorem P7903116622855519725.correct : P7903116622855519725.Spec := by
  intro n
  simp only [A116966]

end A116966

/-! ## A116966.P1048085479890086839

`n+1+((-1)^(n*(n-1)/2)-(-1)^n)/2`
-/

namespace A116966.P1048085479890086839
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) + ((-1 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) - ((-1) ^ n : ℝ)) / 2

end

end A116966.P1048085479890086839

namespace A116966

/-- `n+1+((-1)^(n*(n-1)/2)-(-1)^n)/2` -/
def P1048085479890086839.Spec : Prop :=
  ∀ n, P1048085479890086839.a n = (A116966 n : ℝ)

end A116966

/-! ## A116966.P16022608543055881186

`∑[3-gcd(4, n+2)]`
-/

namespace A116966.P16022608543055881186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 4 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116966.P16022608543055881186

namespace A116966

/-- `∑[3-gcd(4, n+2)]` -/
def P16022608543055881186.Spec : Prop :=
  ∀ n, P16022608543055881186.a n = A116966 n

end A116966

/-! ## A116966.P11182423625548951748

`xor(n+1, ∑[n]%2)`
-/

namespace A116966.P11182423625548951748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) ((∑ j ∈ Finset.range (n + 1), f1 j) % 2)

end

end A116966.P11182423625548951748

namespace A116966

/-- `xor(n+1, ∑[n]%2)` -/
def P11182423625548951748.Spec : Prop :=
  ∀ n, (P11182423625548951748.a n : ℤ) = A116966 n

end A116966

/-! ## A116966.P9382989399098139711

`xor(n+1, and(1, ∑[n]))`
-/

namespace A116966.P9382989399098139711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A116966.P9382989399098139711

namespace A116966

/-- `xor(n+1, and(1, ∑[n]))` -/
def P9382989399098139711.Spec : Prop :=
  ∀ n, (P9382989399098139711.a n : ℤ) = A116966 n

end A116966

/-! ## A116966.P9072598866685929678

`∑[2/(2-n²%8)]`
-/

namespace A116966.P9072598866685929678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (2 - ((n ^ 2 % 8 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116966.P9072598866685929678

namespace A116966

/-- `∑[2/(2-n²%8)]` -/
def P9072598866685929678.Spec : Prop :=
  ∀ n, P9072598866685929678.a n = (A116966 n : ℚ)

end A116966

/-! ## A116966.P5252958287688871958

`round(sqrt((n+2)%4)+n)`
-/

namespace A116966.P5252958287688871958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n + 2) % 4 : ℕ) : ℝ) + (n : ℝ))

end

end A116966.P5252958287688871958

namespace A116966

/-- `round(sqrt((n+2)%4)+n)` -/
def P5252958287688871958.Spec : Prop :=
  ∀ n, P5252958287688871958.a n = A116966 n

end A116966

/-! ## A116966.P16625037600933204291

`∑[2-and(3, (n+1)^3)]`
-/

namespace A116966.P16625037600933204291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 3 ((n + 1) ^ 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116966.P16625037600933204291

namespace A116966

/-- `∑[2-and(3, (n+1)^3)]` -/
def P16625037600933204291.Spec : Prop :=
  ∀ n, P16625037600933204291.a n = A116966 n

end A116966

/-! ## A116966.P5958428285683214709

`ceil(and(3, n+2)/2+n)`
-/

namespace A116966.P5958428285683214709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 3 (n + 2) : ℚ) / 2 + (n : ℚ)⌉

end

end A116966.P5958428285683214709

namespace A116966

/-- `ceil(and(3, n+2)/2+n)` -/
def P5958428285683214709.Spec : Prop :=
  ∀ n, P5958428285683214709.a n = A116966 n

end A116966

/-! ## A116966.P14222494558055253416

`xor(n+1, and(2, -n)/2)`
-/

namespace A116966.P14222494558055253416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((Int.land 2 (-(n : ℤ)) : ℚ) / 2))

end

end A116966.P14222494558055253416

namespace A116966

/-- `xor(n+1, and(2, -n)/2)` -/
def P14222494558055253416.Spec : Prop :=
  ∀ n, P14222494558055253416.a n = A116966 n

end A116966

/-! ## A116966.P15910651486769004798

`round(and(3, n+2)/2+n)`
-/

namespace A116966.P15910651486769004798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 3 (n + 2) : ℚ) / 2 + (n : ℚ))

end

end A116966.P15910651486769004798

namespace A116966

/-- `round(and(3, n+2)/2+n)` -/
def P15910651486769004798.Spec : Prop :=
  ∀ n, P15910651486769004798.a n = A116966 n

end A116966

/-! ## A116966.P1933942968465804346

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=-1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A116966.P1933942968465804346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116966.P1933942968465804346

namespace A116966

/-- `∑[floor(a(n-4))]` -/
def P1933942968465804346.Spec : Prop :=
  ∀ n, P1933942968465804346.a n = A116966 n

end A116966

/-! ## A116966.P16073782671600976032

`-∑[gcd(n-2, 2*n)-3]`
-/

namespace A116966.P16073782671600976032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n : ℤ) - 2) (2 * n : ℤ) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116966.P16073782671600976032

namespace A116966

/-- `-∑[gcd(n-2, 2*n)-3]` -/
def P16073782671600976032.Spec : Prop :=
  ∀ n, P16073782671600976032.a n = A116966 n

end A116966

/-! ## A116966.P4777161170185048534

`round(sin(2*n%4)+n+1)`
-/

namespace A116966.P4777161170185048534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((2 * (n % 4) : ℕ) : ℝ) + (n + 1 : ℝ))

end

end A116966.P4777161170185048534

namespace A116966

/-- `round(sin(2*n%4)+n+1)` -/
def P4777161170185048534.Spec : Prop :=
  ∀ n, P4777161170185048534.a n = A116966 n

end A116966

/-! ## A116966.P17348936829541959173

`∑[∑[3/a(n-2)]]` with `a(0)=1, a(1)=1, a(2)=-3`
-/

namespace A116966.P17348936829541959173
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, -3] fun n f2 =>
  3 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116966.P17348936829541959173

namespace A116966

/-- `∑[∑[3/a(n-2)]]` -/
def P17348936829541959173.Spec : Prop :=
  ∀ n, P17348936829541959173.a n = (A116966 n : ℚ)

end A116966

/-! ## A116966.P8957722375644909944

`xor(n+1, (and(2, n+1)/2)²)`
-/

namespace A116966.P8957722375644909944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway (((Nat.land 2 (n + 1) : ℚ) / 2) ^ 2))

end

end A116966.P8957722375644909944

namespace A116966

/-- `xor(n+1, (and(2, n+1)/2)²)` -/
def P8957722375644909944.Spec : Prop :=
  ∀ n, P8957722375644909944.a n = A116966 n

end A116966

/-! ## A116966.P10306654006439279179

`xor(n+1, and(2, n+1)!-1)`
-/

namespace A116966.P10306654006439279179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((Nat.factorial (Nat.land 2 (n + 1)) : ℤ) - 1)

end

end A116966.P10306654006439279179

namespace A116966

/-- `xor(n+1, and(2, n+1)!-1)` -/
def P10306654006439279179.Spec : Prop :=
  ∀ n, P10306654006439279179.a n = A116966 n

end A116966

/-! ## A116966.P4154823655721669480

`xor(-and(2, n+1)!, -(n+2))`
-/

namespace A116966.P4154823655721669480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(Nat.factorial (Nat.land 2 (n + 1)) : ℤ)) (-(n + 2 : ℤ))

end

end A116966.P4154823655721669480

namespace A116966

/-- `xor(-and(2, n+1)!, -(n+2))` -/
def P4154823655721669480.Spec : Prop :=
  ∀ n, P4154823655721669480.a n = A116966 n

end A116966

/-! ## A116966.P12649001527392509076

`floor((and(3, n+2)+2*n+1)/2)`
-/

namespace A116966.P12649001527392509076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 3 (n + 2) + (2 * n + 1) : ℚ) / 2⌋

end

end A116966.P12649001527392509076

namespace A116966

/-- `floor((and(3, n+2)+2*n+1)/2)` -/
def P12649001527392509076.Spec : Prop :=
  ∀ n, P12649001527392509076.a n = A116966 n

end A116966

/-! ## A116966.P16991822807890209849

`∑[(2*and(1, n))²-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A116966.P16991822807890209849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((2 * Nat.land 1 n) ^ 2 : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116966.P16991822807890209849

namespace A116966

/-- `∑[(2*and(1, n))²-a(n-2)]` -/
def P16991822807890209849.Spec : Prop :=
  ∀ n, P16991822807890209849.a n = A116966 n

end A116966

/-!
# A116968: Primes p such that the nearest integer to p * e is prime.

The programs for A116968, there is no canonical definition to state claims against.
-/

/-! ## A116968.P16684033061365521765

`p?[A062276(p?[A022852(n)])]`
-/

namespace A116968.P16684033061365521765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116968.P16684033061365521765

/-! ## A116968.P17586418636275186116

`eq[A289660(A022852(n+1))+1, A001222(n+1)]+1`
-/

namespace A116968.P17586418636275186116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289660 (A022852 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A116968.P17586418636275186116

/-! ## A116968.P5791983389007262709

`p?[A054404(p?[A022852(n)])]`
-/

namespace A116968.P5791983389007262709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116968.P5791983389007262709

/-! ## A116968.P10325280924215878387

`p?[A054404(p?[A247786(2*(n+1))])]`
-/

namespace A116968.P10325280924215878387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247786 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116968.P10325280924215878387

/-!
# A116969: If n mod 2 = 0 then 3*2^(n-1)+n-1 else 3*2^(n-1)+n.

The programs for A116969, the canonical program `A116969.P11301062468867726462` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116969 has offset 1).

The definition of A116969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116969.P11301062468867726462

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=4, a(1)=7, a(2)=15, a(3)=27`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116969

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P11301062468867726462.Spec : Prop :=
  ∀ n, P11301062468867726462.a n = A116969 (n + 1)

theorem P11301062468867726462.correct : P11301062468867726462.Spec := by
  intro n
  simp only [A116969, Nat.add_sub_cancel]

end A116969

/-! ## A116969.P2230547120530837942

`or(1, n)+3*2^n`
-/

namespace A116969.P2230547120530837942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 3 * 2 ^ n

end

end A116969.P2230547120530837942

namespace A116969

/-- `or(1, n)+3*2^n` -/
def P2230547120530837942.Spec : Prop :=
  ∀ n, (P2230547120530837942.a n : ℤ) = A116969 (n + 1)

end A116969

/-! ## A116969.P5146429402324492613

`ogf((4-5x-2x^2+x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A116969.P5146429402324492613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5, -2, 1] [1, -3, 1, 3, -2] n

end

end A116969.P5146429402324492613

namespace A116969

/-- `ogf((4-5x-2x^2+x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P5146429402324492613.Spec : Prop :=
  ∀ n, P5146429402324492613.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P2929329342268184709

`char[2*n]+3*2^n+n`
-/

namespace A116969.P2929329342268184709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (3 * 2 ^ n + n)

end

end A116969.P2929329342268184709

namespace A116969

/-- `char[2*n]+3*2^n+n` -/
def P2929329342268184709.Spec : Prop :=
  ∀ n, (P2929329342268184709.a n : ℤ) = A116969 (n + 1)

end A116969

/-! ## A116969.P6768676647795178967

`or(n, A181565(n))`
-/

namespace A116969.P6768676647795178967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A181565 n)

end

end A116969.P6768676647795178967

namespace A116969

/-- `or(n, A181565(n))` -/
def P6768676647795178967.Spec : Prop :=
  ∀ n, P6768676647795178967.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P15820265012833118958

`or(n, A004119(n+1))`
-/

namespace A116969.P15820265012833118958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A004119 (n + 1))

end

end A116969.P15820265012833118958

namespace A116969

/-- `or(n, A004119(n+1))` -/
def P15820265012833118958.Spec : Prop :=
  ∀ n, P15820265012833118958.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P5109291079489480107

`or(n, A007283(n)+1)`
-/

namespace A116969.P5109291079489480107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A007283 n + 1)

end

end A116969.P5109291079489480107

namespace A116969

/-- `or(n, A007283(n)+1)` -/
def P5109291079489480107.Spec : Prop :=
  ∀ n, P5109291079489480107.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P13430815455527234376

`or(n, A103204(n+2))`
-/

namespace A116969.P13430815455527234376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A103204 (n + 2))

end

end A116969.P13430815455527234376

namespace A116969

/-- `or(n, A103204(n+2))` -/
def P13430815455527234376.Spec : Prop :=
  ∀ n, P13430815455527234376.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P2608463674101713252

`or(n, A164094(n)-1)`
-/

namespace A116969.P2608463674101713252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A164094 n - 1)

end

end A116969.P2608463674101713252

namespace A116969

/-- `or(n, A164094(n)-1)` -/
def P2608463674101713252.Spec : Prop :=
  ∀ n, P2608463674101713252.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P18325973962526252509

`or(n, A033484(n)+3)`
-/

namespace A116969.P18325973962526252509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A033484 n + 3)

end

end A116969.P18325973962526252509

namespace A116969

/-- `or(n, A033484(n)+3)` -/
def P18325973962526252509.Spec : Prop :=
  ∀ n, P18325973962526252509.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P8584813980142313229

`or(n, A055010(n+1)+2)`
-/

namespace A116969.P8584813980142313229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A055010 (n + 1) + 2)

end

end A116969.P8584813980142313229

namespace A116969

/-- `or(n, A055010(n+1)+2)` -/
def P8584813980142313229.Spec : Prop :=
  ∀ n, P8584813980142313229.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P14431329706842765242

`or(n, A083329(n+1)+2)`
-/

namespace A116969.P14431329706842765242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A083329 (n + 1) + 2)

end

end A116969.P14431329706842765242

namespace A116969

/-- `or(n, A083329(n+1)+2)` -/
def P14431329706842765242.Spec : Prop :=
  ∀ n, P14431329706842765242.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P8839394540810220885

`or(n, 3*A000079(n)+1)`
-/

namespace A116969.P8839394540810220885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (3 * A000079 n + 1)

end

end A116969.P8839394540810220885

namespace A116969

/-- `or(n, 3*A000079(n)+1)` -/
def P8839394540810220885.Spec : Prop :=
  ∀ n, P8839394540810220885.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P13711850918989844112

`or(n, A052955(2*n+1)+2)`
-/

namespace A116969.P13711850918989844112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A052955 (2 * n + 1) + 2)

end

end A116969.P13711850918989844112

namespace A116969

/-- `or(n, A052955(2*n+1)+2)` -/
def P13711850918989844112.Spec : Prop :=
  ∀ n, P13711850918989844112.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P16772031581755051438

`or(n, A083416(2*(n+1))+2)`
-/

namespace A116969.P16772031581755051438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A083416 (2 * (n + 1)) + 2)

end

end A116969.P16772031581755051438

namespace A116969

/-- `or(n, A083416(2*(n+1))+2)` -/
def P16772031581755051438.Spec : Prop :=
  ∀ n, P16772031581755051438.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P9880216692177952492

`or(n, A209722(2*(n+1))-1)`
-/

namespace A116969.P9880216692177952492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A209722 (2 * (n + 1)) - 1)

end

end A116969.P9880216692177952492

namespace A116969

/-- `or(n, A209722(2*(n+1))-1)` -/
def P9880216692177952492.Spec : Prop :=
  ∀ n, P9880216692177952492.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P17238429371539977176

`xor(A052928(n), A181565(n))`
-/

namespace A116969.P17238429371539977176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052928 n) (A181565 n)

end

end A116969.P17238429371539977176

namespace A116969

/-- `xor(A052928(n), A181565(n))` -/
def P17238429371539977176.Spec : Prop :=
  ∀ n, P17238429371539977176.a n = A116969 (n + 1)

end A116969

/-! ## A116969.P14722696559471932833

`or(n, A164094(n+1)/2)`
-/

namespace A116969.P14722696559471932833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((A164094 (n + 1) : ℚ) / 2))

end

end A116969.P14722696559471932833

namespace A116969

/-- `or(n, A164094(n+1)/2)` -/
def P14722696559471932833.Spec : Prop :=
  ∀ n, P14722696559471932833.a n = A116969 (n + 1)

end A116969

/-!
# A116970: a(n) = (3^n - 7)/2.

The programs for A116970, the canonical program `A116970.P2271435336073515091` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116970 has offset 2).

The definition of A116970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^(n+2)-7)/2` (program `A116970.P10064119202446746084`, by `A116970.P10064119202446746084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116970.P2271435336073515091

`3*a(n-1)+7` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116970

/-- `3*a(n-1)+7` -/
def P2271435336073515091.Spec : Prop :=
  ∀ n, (P2271435336073515091.a n : ℤ) = A116970 (n + 2)

theorem P2271435336073515091.correct : P2271435336073515091.Spec := by
  intro n
  simp only [A116970, Nat.add_sub_cancel]

end A116970

/-! ## A116970.P15999360918328216343

`a(n-1)+3^(n+1)` with `a(0)=1`
-/

namespace A116970.P15999360918328216343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 ^ (n + 1)

end

end A116970.P15999360918328216343

namespace A116970

/-- `a(n-1)+3^(n+1)` -/
def P15999360918328216343.Spec : Prop :=
  ∀ n, (P15999360918328216343.a n : ℤ) = A116970 (n + 2)

end A116970

/-! ## A116970.P203385890094412112

`A003462(n+2)-3`
-/

namespace A116970.P203385890094412112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 2) - 3

end

end A116970.P203385890094412112

namespace A116970

/-- `A003462(n+2)-3` -/
def P203385890094412112.Spec : Prop :=
  ∀ n, P203385890094412112.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P10064119202446746084

`(3^(n+2)-7)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A116970.P10064119202446746084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 2) : ℤ) - 7 : ℚ) / 2

end

end A116970.P10064119202446746084

namespace A116970

/-- `(3^(n+2)-7)/2` -/
def P10064119202446746084.Spec : Prop :=
  ∀ n, P10064119202446746084.a n = (A116970 (n + 2) : ℚ)

theorem P10064119202446746084.correct : P10064119202446746084.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A116970, Nat.add_sub_cancel, A116970.P10064119202446746084.a, A116970.P2271435336073515091.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A116970, Nat.add_sub_cancel, A116970.P10064119202446746084.a, A116970.P2271435336073515091.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A116970

/-! ## A116970.P994352288346781843

`ogf((1+6x)/(1-4x+3x^2))`
-/

namespace A116970.P994352288346781843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -4, 3] n

end

end A116970.P994352288346781843

namespace A116970

/-- `ogf((1+6x)/(1-4x+3x^2))` -/
def P994352288346781843.Spec : Prop :=
  ∀ n, P994352288346781843.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P5873824552268522777

`∑[3*a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A116970.P5873824552268522777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116970.P5873824552268522777

namespace A116970

/-- `∑[3*a(n-1)]` -/
def P5873824552268522777.Spec : Prop :=
  ∀ n, (P5873824552268522777.a n : ℤ) = A116970 (n + 2)

end A116970

/-! ## A116970.P17121703377270325023

`∑[3^((n+1)%(3^n))]`
-/

namespace A116970.P17121703377270325023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ ((n + 1) % 3 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116970.P17121703377270325023

namespace A116970

/-- `∑[3^((n+1)%(3^n))]` -/
def P17121703377270325023.Spec : Prop :=
  ∀ n, (P17121703377270325023.a n : ℤ) = A116970 (n + 2)

end A116970

/-! ## A116970.P12924188433814023629

`-or(2, ∑[-3^(n+1)])`
-/

namespace A116970.P12924188433814023629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116970.P12924188433814023629

namespace A116970

/-- `-or(2, ∑[-3^(n+1)])` -/
def P12924188433814023629.Spec : Prop :=
  ∀ n, P12924188433814023629.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P3580344943804001318

`-xor(2, ∑[-3^(n+1)])`
-/

namespace A116970.P3580344943804001318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116970.P3580344943804001318

namespace A116970

/-- `-xor(2, ∑[-3^(n+1)])` -/
def P3580344943804001318.Spec : Prop :=
  ∀ n, P3580344943804001318.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P90431511486760421

`∑[3^floor(atan(n+1)+n)]`
-/

namespace A116970.P90431511486760421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ) + (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116970.P90431511486760421

namespace A116970

/-- `∑[3^floor(atan(n+1)+n)]` -/
def P90431511486760421.Spec : Prop :=
  ∀ n, P90431511486760421.a n = (A116970 (n + 2) : ℚ)

end A116970

/-! ## A116970.P5538493486196509734

`A168569(n)+1`
-/

namespace A116970.P5538493486196509734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168569 n + 1

end

end A116970.P5538493486196509734

namespace A116970

/-- `A168569(n)+1` -/
def P5538493486196509734.Spec : Prop :=
  ∀ n, P5538493486196509734.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P8592275628112429686

`A123109(n+1)-2`
-/

namespace A116970.P8592275628112429686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123109 (n + 1) - 2

end

end A116970.P8592275628112429686

namespace A116970

/-- `A123109(n+1)-2` -/
def P8592275628112429686.Spec : Prop :=
  ∀ n, P8592275628112429686.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P4632206250264421263

`A029858(n+2)-2`
-/

namespace A116970.P4632206250264421263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 2) - 2

end

end A116970.P4632206250264421263

namespace A116970

/-- `A029858(n+2)-2` -/
def P4632206250264421263.Spec : Prop :=
  ∀ n, P4632206250264421263.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P15518611636790904981

`A261547(n+2)-3`
-/

namespace A116970.P15518611636790904981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 (n + 2) - 3

end

end A116970.P15518611636790904981

namespace A116970

/-- `A261547(n+2)-3` -/
def P15518611636790904981.Spec : Prop :=
  ∀ n, P15518611636790904981.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P2709586307573030515

`A007051(n+2)-4`
-/

namespace A116970.P2709586307573030515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 2) - 4

end

end A116970.P2709586307573030515

namespace A116970

/-- `A007051(n+2)-4` -/
def P2709586307573030515.Spec : Prop :=
  ∀ n, P2709586307573030515.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P928614144730988361

`A067771(n+1)-5`
-/

namespace A116970.P928614144730988361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 (n + 1) - 5

end

end A116970.P928614144730988361

namespace A116970

/-- `A067771(n+1)-5` -/
def P928614144730988361.Spec : Prop :=
  ∀ n, P928614144730988361.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P4533983077146678814

`A115098(n+2)-5`
-/

namespace A116970.P4533983077146678814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (n + 2) - 5

end

end A116970.P4533983077146678814

namespace A116970

/-- `A115098(n+2)-5` -/
def P4533983077146678814.Spec : Prop :=
  ∀ n, P4533983077146678814.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P2920759138639446563

`A124302(n+3)-4`
-/

namespace A116970.P2920759138639446563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 3) - 4

end

end A116970.P2920759138639446563

namespace A116970

/-- `A124302(n+3)-4` -/
def P2920759138639446563.Spec : Prop :=
  ∀ n, P2920759138639446563.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P1176922433748013644

`A289521(n+2)-6`
-/

namespace A116970.P1176922433748013644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289521 (n + 2) - 6

end

end A116970.P1176922433748013644

namespace A116970

/-- `A289521(n+2)-6` -/
def P1176922433748013644.Spec : Prop :=
  ∀ n, P1176922433748013644.a n = A116970 (n + 2)

end A116970

/-! ## A116970.P15095264110861185750

`A354538(n+2)-7`
-/

namespace A116970.P15095264110861185750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354538 (n + 2) - 7

end

end A116970.P15095264110861185750

namespace A116970

/-- `A354538(n+2)-7` -/
def P15095264110861185750.Spec : Prop :=
  ∀ n, P15095264110861185750.a n = A116970 (n + 2)

end A116970

/-!
# A116971: a(n) = (35*2^((2*(3*n+2) + 2)/3) - 2*(3*n+2) - 46)/9.

The programs for A116971, the canonical program `A116971.P17336208494650864988` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116971 has offset 0).

The definition of A116971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116971.P17336208494650864988

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=10, a(1)=56, a(2)=242`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116971

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P17336208494650864988.Spec : Prop :=
  ∀ n, P17336208494650864988.a n = A116971 n

theorem P17336208494650864988.correct : P17336208494650864988.Spec := by
  intro n
  simp only [A116971]

end A116971

/-! ## A116971.P1185031323207825824

`(35*2^((2*(3*n+2)+2)/3)-2*(3*n+2)-46)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A116971.P1185031323207825824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (35 * (2 : ℝ) ^ ((2 * (3 * n + 2) + 2 : ℚ) / 3 : ℝ) - (2 * (3 * n + 2) : ℝ) - 46) / 9

end

end A116971.P1185031323207825824

namespace A116971

/-- `(35*2^((2*(3*n+2)+2)/3)-2*(3*n+2)-46)/9` -/
def P1185031323207825824.Spec : Prop :=
  ∀ n, P1185031323207825824.a n = (A116971 n : ℝ)

end A116971

/-! ## A116971.P82689397136587525

`∑[∑[ogf((-10+4x+4x^2)/(-1+4x))]]`
-/

namespace A116971.P82689397136587525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -4, -4] [1, -4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116971.P82689397136587525

namespace A116971

/-- `∑[∑[ogf((-10+4x+4x^2)/(-1+4x))]]` -/
def P82689397136587525.Spec : Prop :=
  ∀ n, P82689397136587525.a n = A116971 n

end A116971

/-! ## A116971.P17581675057001575535

`ogf((-10+4x+4x^2)/(-1+6x-9x^2+4x^3))`
-/

namespace A116971.P17581675057001575535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -4, -4] [1, -6, 9, -4] n

end

end A116971.P17581675057001575535

namespace A116971

/-- `ogf((-10+4x+4x^2)/(-1+6x-9x^2+4x^3))` -/
def P17581675057001575535.Spec : Prop :=
  ∀ n, P17581675057001575535.a n = A116971 n

end A116971

/-! ## A116971.P7850603233632808362

`∑[4*a(n-1)+2]-1` with `a(0)=11`
-/

namespace A116971.P7850603233632808362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  4 * f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A116971.P7850603233632808362

namespace A116971

/-- `∑[4*a(n-1)+2]-1` -/
def P7850603233632808362.Spec : Prop :=
  ∀ n, P7850603233632808362.a n = A116971 n

end A116971

/-! ## A116971.P4546015496495939431

`xor(1, ∑[a(n-1)/(1/2)²+2])` with `a(0)=11`
-/

namespace A116971.P4546015496495939431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A116971.P4546015496495939431

namespace A116971

/-- `xor(1, ∑[a(n-1)/(1/2)²+2])` -/
def P4546015496495939431.Spec : Prop :=
  ∀ n, P4546015496495939431.a n = A116971 n

end A116971

/-! ## A116971.P4589361395100468729

`∑[A083584(n+1)+4^n]+n`
-/

namespace A116971.P4589361395100468729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083584 (n + 1) + (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A116971.P4589361395100468729

namespace A116971

/-- `∑[A083584(n+1)+4^n]+n` -/
def P4589361395100468729.Spec : Prop :=
  ∀ n, P4589361395100468729.a n = A116971 n

end A116971

/-! ## A116971.P1587779940862159702

`A146882(n)+∑[A146882(n)]+n`
-/

namespace A116971.P1587779940862159702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146882 n + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A116971.P1587779940862159702

namespace A116971

/-- `A146882(n)+∑[A146882(n)]+n` -/
def P1587779940862159702.Spec : Prop :=
  ∀ n, P1587779940862159702.a n = A116971 n

end A116971

/-! ## A116971.P17142526889550065330

`2*(A321421(n)+A172447(n+1))`
-/

namespace A116971.P17142526889550065330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321421 n + A172447 (n + 1))

end

end A116971.P17142526889550065330

namespace A116971

/-- `2*(A321421(n)+A172447(n+1))` -/
def P17142526889550065330.Spec : Prop :=
  ∀ n, P17142526889550065330.a n = A116971 n

end A116971

/-! ## A116971.P18317857881735979028

`∑[A020988(n+1)+A002063(n)]-1`
-/

namespace A116971.P18317857881735979028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (n + 1) + A002063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116971.P18317857881735979028

namespace A116971

/-- `∑[A020988(n+1)+A002063(n)]-1` -/
def P18317857881735979028.Spec : Prop :=
  ∀ n, P18317857881735979028.a n = A116971 n

end A116971

/-! ## A116971.P10111155430506455097

`∑[A020989(n+1)]-A165752(n+1)`
-/

namespace A116971.P10111155430506455097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A165752 (n + 1)

end

end A116971.P10111155430506455097

namespace A116971

/-- `∑[A020989(n+1)]-A165752(n+1)` -/
def P10111155430506455097.Spec : Prop :=
  ∀ n, P10111155430506455097.a n = A116971 n

end A116971

/-! ## A116971.P12947563814941404110

`∑[A206374(n+1)+A206374(n)]-1`
-/

namespace A116971.P12947563814941404110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206374 (n + 1) + A206374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116971.P12947563814941404110

namespace A116971

/-- `∑[A206374(n+1)+A206374(n)]-1` -/
def P12947563814941404110.Spec : Prop :=
  ∀ n, P12947563814941404110.a n = A116971 n

end A116971

/-!
# A116972: a(n) = 11*3^n - 2*n - 10.

The programs for A116972, the canonical program `A116972.P8813452239630287492` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116972 has offset 0).

The definition of A116972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*3^n-2*n-10` (program `A116972.P8813452239630287492`, by `A116972.P8813452239630287492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116972.P8813452239630287492

`11*3^n-2*n-10`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116972

/-- `11*3^n-2*n-10` -/
def P8813452239630287492.Spec : Prop :=
  ∀ n, P8813452239630287492.a n = A116972 n

theorem P8813452239630287492.correct : P8813452239630287492.Spec := by
  intro n
  simp only [A116972]

end A116972

/-! ## A116972.P9050363561006820252

`∑[3*a(n-1)+4]` with `a(0)=1, a(1)=20`
-/

namespace A116972.P9050363561006820252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  3 * f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116972.P9050363561006820252

namespace A116972

/-- `∑[3*a(n-1)+4]` -/
def P9050363561006820252.Spec : Prop :=
  ∀ n, (P9050363561006820252.a n : ℤ) = A116972 n

end A116972

/-! ## A116972.P9494835258040846326

`floor(3*a(n-1)+2*A020742(n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A116972.P9494835258040846326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + 2 * A020742 n

end

end A116972.P9494835258040846326

namespace A116972

/-- `floor(3*a(n-1)+2*A020742(n))` -/
def P9494835258040846326.Spec : Prop :=
  ∀ n, P9494835258040846326.a n = A116972 n

theorem P9494835258040846326.correct : P9494835258040846326.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A116972, Nat.add_sub_cancel, A116972.P9494835258040846326.a, A116972.P8813452239630287492.a, A020742, A020742.P7099883194858047647.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A116972, Nat.add_sub_cancel, A116972.P9494835258040846326.a, A116972.P8813452239630287492.a, A020742, A020742.P7099883194858047647.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A116972

/-! ## A116972.P10007023112001128186

`∑[A052909(n)*A123932(n)]`
-/

namespace A116972.P10007023112001128186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052909 n * A123932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116972.P10007023112001128186

namespace A116972

/-- `∑[A052909(n)*A123932(n)]` -/
def P10007023112001128186.Spec : Prop :=
  ∀ n, P10007023112001128186.a n = A116972 n

end A116972

/-! ## A116972.P14554317445344695719

`Δ[A224785(2*n)-A028569(n)]`
-/

namespace A116972.P14554317445344695719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224785 (2 * n) - A028569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116972.P14554317445344695719

namespace A116972

/-- `Δ[A224785(2*n)-A028569(n)]` -/
def P14554317445344695719.Spec : Prop :=
  ∀ n, P14554317445344695719.a n = A116972 n

end A116972

/-!
# A116973: If n mod 2 = 0 then (3^(n+3)-19)/8 else (3^(n+3)-1)/8.

The programs for A116973, the canonical program `A116973.P1748774511327211515` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116973 has offset 0).

The definition of A116973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116973.P1748774511327211515

`2*a(n-1)+3*a(n-2)+5` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116973

/-- `2*a(n-1)+3*a(n-2)+5` -/
def P1748774511327211515.Spec : Prop :=
  ∀ n, (P1748774511327211515.a n : ℤ) = A116973 n

theorem P1748774511327211515.correct : P1748774511327211515.Spec := by
  intro n
  simp only [A116973]

end A116973

/-! ## A116973.P2079993087343428988

`(3^(n+3)-19^((n+1)%2))/8`
-/

namespace A116973.P2079993087343428988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 3) : ℤ) - (19 ^ ((n + 1) % 2) : ℤ) : ℚ) / 8

end

end A116973.P2079993087343428988

namespace A116973

/-- `(3^(n+3)-19^((n+1)%2))/8` -/
def P2079993087343428988.Spec : Prop :=
  ∀ n, P2079993087343428988.a n = (A116973 n : ℚ)

end A116973

/-! ## A116973.P789002776202194911

`ogf((1+7x-3x^2)/(1-3x-x^2+3x^3))`
-/

namespace A116973.P789002776202194911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -3] [1, -3, -1, 3] n

end

end A116973.P789002776202194911

namespace A116973

/-- `ogf((1+7x-3x^2)/(1-3x-x^2+3x^3))` -/
def P789002776202194911.Spec : Prop :=
  ∀ n, P789002776202194911.a n = A116973 n

end A116973

/-! ## A116973.P8509700880140698691

`a(n-2)+3^(n+1)` with `a(0)=1, a(1)=10`
-/

namespace A116973.P8509700880140698691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 2) + 3 ^ (n + 1)

end

end A116973.P8509700880140698691

namespace A116973

/-- `a(n-2)+3^(n+1)` -/
def P8509700880140698691.Spec : Prop :=
  ∀ n, (P8509700880140698691.a n : ℤ) = A116973 n

end A116973

/-! ## A116973.P6746462063049026953

`3*A006342(n+1)-2`
-/

namespace A116973.P6746462063049026953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006342 (n + 1) - 2

end

end A116973.P6746462063049026953

namespace A116973

/-- `3*A006342(n+1)-2` -/
def P6746462063049026953.Spec : Prop :=
  ∀ n, P6746462063049026953.a n = A116973 n

end A116973

/-! ## A116973.P10603731837552215722

`∑[3*A054878(n+1)]+1`
-/

namespace A116973.P10603731837552215722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116973.P10603731837552215722

namespace A116973

/-- `∑[3*A054878(n+1)]+1` -/
def P10603731837552215722.Spec : Prop :=
  ∀ n, P10603731837552215722.a n = A116973 n

end A116973

/-! ## A116973.P15977796304597462106

`A033113(n+2)-2*A059841(n)`
-/

namespace A116973.P15977796304597462106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (n + 2) - 2 * A059841 n

end

end A116973.P15977796304597462106

namespace A116973

/-- `A033113(n+2)-2*A059841(n)` -/
def P15977796304597462106.Spec : Prop :=
  ∀ n, P15977796304597462106.a n = A116973 n

end A116973

/-! ## A116973.P8856179746874805907

`A039300(n+2)-Δ[A042948(n+1)]`
-/

namespace A116973.P8856179746874805907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 (n + 2) - (f1 (n + 1) - f1 n)

end

end A116973.P8856179746874805907

namespace A116973

/-- `A039300(n+2)-Δ[A042948(n+1)]` -/
def P8856179746874805907.Spec : Prop :=
  ∀ n, P8856179746874805907.a n = A116973 n

end A116973

/-! ## A116973.P15320763533566565297

`A033113(n+2)-2*A000035(n+1)`
-/

namespace A116973.P15320763533566565297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (n + 2) - 2 * A000035 (n + 1)

end

end A116973.P15320763533566565297

namespace A116973

/-- `A033113(n+2)-2*A000035(n+1)` -/
def P15320763533566565297.Spec : Prop :=
  ∀ n, P15320763533566565297.a n = A116973 n

end A116973

/-! ## A116973.P14919235253729137203

`9*round(sqrt(∑[A002452(n)]))+1`
-/

namespace A116973.P14919235253729137203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)) + 1

end

end A116973.P14919235253729137203

namespace A116973

/-- `9*round(sqrt(∑[A002452(n)]))+1` -/
def P14919235253729137203.Spec : Prop :=
  ∀ n, P14919235253729137203.a n = A116973 n

end A116973

/-!
# A116974: Numbers n for which the sum of the proper divisors equals the product of the proper divisors.

The programs for A116974, the canonical program `A116974.P10406584669402570229` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116974 has offset 1).

The definition of A116974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116974.P13432952204970268732

`∩[A051948(n+1), A260442(n)]`
-/

namespace A116974.P13432952204970268732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116974.P13432952204970268732

namespace A116974

/-- `∩[A051948(n+1), A260442(n)]` -/
def P13432952204970268732.Spec : Prop :=
  ∀ n, (P13432952204970268732.a n : ℤ) = A116974 (n + 1)

end A116974

/-! ## A116974.P4089291328984006348

`∩[A053577(n+1), A260442(n)]`
-/

namespace A116974.P4089291328984006348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116974.P4089291328984006348

namespace A116974

/-- `∩[A053577(n+1), A260442(n)]` -/
def P4089291328984006348.Spec : Prop :=
  ∀ n, (P4089291328984006348.a n : ℤ) = A116974 (n + 1)

end A116974

/-! ## A116974.P9934713104633880308

`∩[A053813(n+1), A260442(n)]`
-/

namespace A116974.P9934713104633880308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116974.P9934713104633880308

namespace A116974

/-- `∩[A053813(n+1), A260442(n)]` -/
def P9934713104633880308.Spec : Prop :=
  ∀ n, (P9934713104633880308.a n : ℤ) = A116974 (n + 1)

end A116974

/-! ## A116974.P10406584669402570229

`record[A151800(A151800(n))-A227291(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A116974

/-- `record[A151800(A151800(n))-A227291(n+1)]` -/
def P10406584669402570229.Spec : Prop :=
  ∀ n, P10406584669402570229.a n = A116974 (n + 1)

theorem P10406584669402570229.correct : P10406584669402570229.Spec := by
  intro n
  simp only [A116974, Nat.add_sub_cancel]

end A116974

/-! ## A116974.P9709067602729145593

`filter[A053813(n+1), A008966(#)]`
-/

namespace A116974.P9709067602729145593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A116974.P9709067602729145593

namespace A116974

/-- `filter[A053813(n+1), A008966(#)]` -/
def P9709067602729145593.Spec : Prop :=
  ∀ n, P9709067602729145593.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P17234213239376625813

`filter[A051948(n+1), A358220(#)]`
-/

namespace A116974.P17234213239376625813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A116974.P17234213239376625813

namespace A116974

/-- `filter[A051948(n+1), A358220(#)]` -/
def P17234213239376625813.Spec : Prop :=
  ∀ n, P17234213239376625813.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P2309156488657799392

`filter[A053577(n+1), A358220(#)]`
-/

namespace A116974.P2309156488657799392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A116974.P2309156488657799392

namespace A116974

/-- `filter[A053577(n+1), A358220(#)]` -/
def P2309156488657799392.Spec : Prop :=
  ∀ n, P2309156488657799392.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P18221349103111769061

`filter[A067133(n+1), A354874(#)]`
-/

namespace A116974.P18221349103111769061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A116974.P18221349103111769061

namespace A116974

/-- `filter[A067133(n+1), A354874(#)]` -/
def P18221349103111769061.Spec : Prop :=
  ∀ n, P18221349103111769061.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P1844961647424667899

`filter[A067133(n+1), A358220(#)]`
-/

namespace A116974.P1844961647424667899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A116974.P1844961647424667899

namespace A116974

/-- `filter[A067133(n+1), A358220(#)]` -/
def P1844961647424667899.Spec : Prop :=
  ∀ n, P1844961647424667899.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P17958514176824419166

`filter[A067133(n+1), A358771(#)]`
-/

namespace A116974.P17958514176824419166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A116974.P17958514176824419166

namespace A116974

/-- `filter[A067133(n+1), A358771(#)]` -/
def P17958514176824419166.Spec : Prop :=
  ∀ n, P17958514176824419166.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P12086574385114643456

`filter[A051948(n+1), A380467(#)]`
-/

namespace A116974.P12086574385114643456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A116974.P12086574385114643456

namespace A116974

/-- `filter[A051948(n+1), A380467(#)]` -/
def P12086574385114643456.Spec : Prop :=
  ∀ n, P12086574385114643456.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P16081042593151457521

`filter[A067133(n+1), A368915(#)]`
-/

namespace A116974.P16081042593151457521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A116974.P16081042593151457521

namespace A116974

/-- `filter[A067133(n+1), A368915(#)]` -/
def P16081042593151457521.Spec : Prop :=
  ∀ n, P16081042593151457521.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P10957598838909276951

`filter[A067133(n+1), A377870(#)]`
-/

namespace A116974.P10957598838909276951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A116974.P10957598838909276951

namespace A116974

/-- `filter[A067133(n+1), A377870(#)]` -/
def P10957598838909276951.Spec : Prop :=
  ∀ n, P10957598838909276951.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P575933507115024708

`filter[A138389(n+1), A358771(#)]`
-/

namespace A116974.P575933507115024708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A116974.P575933507115024708

namespace A116974

/-- `filter[A138389(n+1), A358771(#)]` -/
def P575933507115024708.Spec : Prop :=
  ∀ n, P575933507115024708.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P13471451813136027387

`filter[A145739(n+1), A358220(#)]`
-/

namespace A116974.P13471451813136027387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A116974.P13471451813136027387

namespace A116974

/-- `filter[A145739(n+1), A358220(#)]` -/
def P13471451813136027387.Spec : Prop :=
  ∀ n, P13471451813136027387.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P6973542009082576165

`filter[A205523(n+1), A358220(#)]`
-/

namespace A116974.P6973542009082576165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A116974.P6973542009082576165

namespace A116974

/-- `filter[A205523(n+1), A358220(#)]` -/
def P6973542009082576165.Spec : Prop :=
  ∀ n, P6973542009082576165.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P1390115632813876761

`filter[A251595(n+1), A358220(#)]`
-/

namespace A116974.P1390115632813876761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A116974.P1390115632813876761

namespace A116974

/-- `filter[A251595(n+1), A358220(#)]` -/
def P1390115632813876761.Spec : Prop :=
  ∀ n, P1390115632813876761.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P15329346726374218342

`filter[A260442(n+1), A354923(#)]`
-/

namespace A116974.P15329346726374218342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A116974.P15329346726374218342

namespace A116974

/-- `filter[A260442(n+1), A354923(#)]` -/
def P15329346726374218342.Spec : Prop :=
  ∀ n, P15329346726374218342.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P1107746187817433553

`filter[A260442(n+1), A365716(#)]`
-/

namespace A116974.P1107746187817433553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A116974.P1107746187817433553

namespace A116974

/-- `filter[A260442(n+1), A365716(#)]` -/
def P1107746187817433553.Spec : Prop :=
  ∀ n, P1107746187817433553.a n = A116974 (n + 1)

end A116974

/-! ## A116974.P14847889479022779802

`filter[A260442(n+1), A380467(#)]`
-/

namespace A116974.P14847889479022779802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A116974.P14847889479022779802

namespace A116974

/-- `filter[A260442(n+1), A380467(#)]` -/
def P14847889479022779802.Spec : Prop :=
  ∀ n, P14847889479022779802.a n = A116974 (n + 1)

end A116974

/-!
# A116975: Number of compositions of n into parts of sizes == 1 mod 5 or 4 mod 5.

The programs for A116975, the canonical program `A116975.P9068701324397742654` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116975 has offset 1).

The definition of A116975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116975.P9068701324397742654

`a(n-1)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116975

/-- `a(n-1)+a(n-4)+a(n-5)` -/
def P9068701324397742654.Spec : Prop :=
  ∀ n, (P9068701324397742654.a n : ℤ) = A116975 (n + 1)

theorem P9068701324397742654.correct : P9068701324397742654.Spec := by
  intro n
  simp only [A116975, Nat.add_sub_cancel]

end A116975

/-! ## A116975.P1458590655951730763

`A004396(A001462(A189076(n)))`
-/

namespace A116975.P1458590655951730763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A001462 (A189076 n).toNat).toNat

end

end A116975.P1458590655951730763

namespace A116975

/-- `A004396(A001462(A189076(n)))` -/
def P1458590655951730763.Spec : Prop :=
  ∀ n, P1458590655951730763.a n = A116975 (n + 1)

end A116975

/-! ## A116975.P15994829777520224842

`A100795(A137247(n)+1)`
-/

namespace A116975.P15994829777520224842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A137247 n + 1).toNat

end

end A116975.P15994829777520224842

namespace A116975

/-- `A100795(A137247(n)+1)` -/
def P15994829777520224842.Spec : Prop :=
  ∀ n, P15994829777520224842.a n = A116975 (n + 1)

end A116975

/-! ## A116975.P16036031777217955741

`A100795((A052101(n)+1)/2)`
-/

namespace A116975.P16036031777217955741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (SequenceMachineLib.roundAway ((A052101 n + 1 : ℚ) / 2)).toNat

end

end A116975.P16036031777217955741

namespace A116975

/-- `A100795((A052101(n)+1)/2)` -/
def P16036031777217955741.Spec : Prop :=
  ∀ n, P16036031777217955741.a n = A116975 (n + 1)

end A116975

/-! ## A116975.P11653915260001730760

`A003056(A036617(n)+A025047(n))`
-/

namespace A116975.P11653915260001730760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A036617 n + A025047 n).toNat

end

end A116975.P11653915260001730760

namespace A116975

/-- `A003056(A036617(n)+A025047(n))` -/
def P11653915260001730760.Spec : Prop :=
  ∀ n, P11653915260001730760.a n = A116975 (n + 1)

end A116975

/-!
# A116976: Number of nonsingular n X n matrices with rational entries equal to 0 or 1, up to row and column permutations.

The programs for A116976, there is no canonical definition to state claims against.
-/

/-! ## A116976.P17704538774649376363

`A002724(n+1)-A116977(n+1)`
-/

namespace A116976.P17704538774649376363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002724 (n + 1) - A116977 (n + 1)

end

end A116976.P17704538774649376363

/-! ## A116976.P8552253002725658675

`A246106(A141214(n+1))-A116977(n+1)`
-/

namespace A116976.P8552253002725658675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A141214 (n + 1)).toNat - A116977 (n + 1)

end

end A116976.P8552253002725658675

/-!
# A116977: Number of n X n rational {0,1}-matrices of determinant 0, up to row and column permutations.

The programs for A116977, there is no canonical definition to state claims against.
-/

/-! ## A116977.P6865586057520470252

`A002724(n+1)-A116976(n+1)`
-/

namespace A116977.P6865586057520470252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002724 (n + 1) - A116976 (n + 1)

end

end A116977.P6865586057520470252

/-! ## A116977.P7781424884955465863

`A246106(A141214(n+1))-A116976(n+1)`
-/

namespace A116977.P7781424884955465863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A141214 (n + 1)).toNat - A116976 (n + 1)

end

end A116977.P7781424884955465863

/-!
# A116978: Cubes whose multiplicative digital root is also a cube.

The programs for A116978, there is no canonical definition to state claims against.
-/

/-! ## A116978.P6468917921147979917

`lt[A179162(n), 28]^3`
-/

namespace A116978.P6468917921147979917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179162 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 3

end

end A116978.P6468917921147979917

/-! ## A116978.P12577740428413803800

`record[A071469(n+2)^3]`
-/

namespace A116978.P12577740428413803800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071469 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116978.P12577740428413803800

/-! ## A116978.P6021055073842370198

`A006666(A081411(n+1))^3`
-/

namespace A116978.P6021055073842370198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A081411 (n + 1)).toNat ^ 3

end

end A116978.P6021055073842370198

/-! ## A116978.P3688143773805199639

`record[A318407(A143979(n+1))^3]`
-/

namespace A116978.P3688143773805199639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318407 (A143979 (n + 1)).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116978.P3688143773805199639

/-! ## A116978.P6810841648549906845

`lt[A127603(n+1), A144362(n+3)]^3`
-/

namespace A116978.P6810841648549906845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144362 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3

end

end A116978.P6810841648549906845

/-!
# A116979: Number of distinct representations of primorials as the sum of two primes.

The programs for A116979, there is no canonical definition to state claims against.
-/

/-! ## A116979.P11692906712448500386

`A068307(∏[eq[n, ∏{d}[n, #]]]+2)`
-/

namespace A116979.P11692906712448500386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (∏ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A116979.P11692906712448500386

/-! ## A116979.P13753458354691084081

`A068307(∏[lt[∏{d}[n, #], n+1]]+2)`
-/

namespace A116979.P13753458354691084081
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (∏ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A116979.P13753458354691084081

/-! ## A116979.P15570088172632962246

`A351029(C(n, 1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`
-/

namespace A116979.P15570088172632962246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351029 (Nat.choose n (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))).toNat)

end

end A116979.P15570088172632962246

/-!
# A116981: Number of distinct representations of 8n^3 as the sum of two primes.

The programs for A116981, there is no canonical definition to state claims against.
-/

/-! ## A116981.P16798357222156833511

`A061357(Δ[∑[2*n]²])`
-/

namespace A116981.P16798357222156833511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A116981.P16798357222156833511

/-! ## A116981.P6960171363999485506

`A061357(A184536(n+1))%A001248(n+1)`
-/

namespace A116981.P6960171363999485506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061357 (A184536 (n + 1)).toNat) (A001248 (n + 1))

end

end A116981.P6960171363999485506

/-! ## A116981.P5009032714459109025

`A002375(Δ[∑[2*n]²])`
-/

namespace A116981.P5009032714459109025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A116981.P5009032714459109025

/-! ## A116981.P10165231278640951211

`A045917(Δ[∑[2*n]²])`
-/

namespace A116981.P10165231278640951211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A116981.P10165231278640951211

/-! ## A116981.P15018031861203626227

`A069360(2*(n+1)^3)`
-/

namespace A116981.P15018031861203626227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069360 (2 * (n + 1) ^ 3)

end

end A116981.P15018031861203626227

/-!
# A116982: Distance between prime neighbors of 4n.

The programs for A116982, the canonical program `A116982.P4061178165803755018` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116982 has offset 1).

The definition of A116982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116982.P4061178165803755018

`A000040(A000720(4*(n+1))+1)-A000040(A000720(4*(n+1)))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116982

/-- `A000040(A000720(4*(n+1))+1)-A000040(A000720(4*(n+1)))` -/
def P4061178165803755018.Spec : Prop :=
  ∀ n, P4061178165803755018.a n = A116982 (n + 1)

theorem P4061178165803755018.correct : P4061178165803755018.Spec := by
  intro n
  simp only [A116982, Nat.add_sub_cancel]

end A116982

/-! ## A116982.P6502929101047441834

`A166597(record[xor(3, n)])`
-/

namespace A116982.P6502929101047441834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A116982.P6502929101047441834

namespace A116982

/-- `A166597(record[xor(3, n)])` -/
def P6502929101047441834.Spec : Prop :=
  ∀ n, P6502929101047441834.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P17247149809711338865

`A072680(4*(n+1))`
-/

namespace A116982.P17247149809711338865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (4 * (n + 1))

end

end A116982.P17247149809711338865

namespace A116982

/-- `A072680(4*(n+1))` -/
def P17247149809711338865.Spec : Prop :=
  ∀ n, P17247149809711338865.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P9769714701488433199

`A166597(4*(n+1))`
-/

namespace A116982.P9769714701488433199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (4 * (n + 1))

end

end A116982.P9769714701488433199

namespace A116982

/-- `A166597(4*(n+1))` -/
def P9769714701488433199.Spec : Prop :=
  ∀ n, P9769714701488433199.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P9053632755817590133

`A001223(A000720(record[xor(3, n)]))`
-/

namespace A116982.P9053632755817590133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A116982.P9053632755817590133

namespace A116982

/-- `A001223(A000720(record[xor(3, n)]))` -/
def P9053632755817590133.Spec : Prop :=
  ∀ n, P9053632755817590133.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P10679298672942194745

`A001223(A099801(2*n+1))`
-/

namespace A116982.P10679298672942194745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A099801 (2 * n + 1)).toNat

end

end A116982.P10679298672942194745

namespace A116982

/-- `A001223(A099801(2*n+1))` -/
def P10679298672942194745.Spec : Prop :=
  ∀ n, P10679298672942194745.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P10497969538086195351

`A001223(A000720(4*(n+1)))`
-/

namespace A116982.P10497969538086195351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (4 * (n + 1))).toNat

end

end A116982.P10497969538086195351

namespace A116982

/-- `A001223(A000720(4*(n+1)))` -/
def P10497969538086195351.Spec : Prop :=
  ∀ n, P10497969538086195351.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P4859515837941495346

`A001223(A308754(2*n)+2)`
-/

namespace A116982.P4859515837941495346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A308754 (2 * n) + 2).toNat

end

end A116982.P4859515837941495346

namespace A116982

/-- `A001223(A308754(2*n)+2)` -/
def P4859515837941495346.Spec : Prop :=
  ∀ n, P4859515837941495346.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P10219188356003651250

`A060267(2*(n+1))`
-/

namespace A116982.P10219188356003651250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060267 (2 * (n + 1))

end

end A116982.P10219188356003651250

namespace A116982

/-- `A060267(2*(n+1))` -/
def P10219188356003651250.Spec : Prop :=
  ∀ n, P10219188356003651250.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P12189853673219999373

`A001223(A099802(2*(n+1)))`
-/

namespace A116982.P12189853673219999373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A099802 (2 * (n + 1))).toNat

end

end A116982.P12189853673219999373

namespace A116982

/-- `A001223(A099802(2*(n+1)))` -/
def P12189853673219999373.Spec : Prop :=
  ∀ n, P12189853673219999373.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P18445050952751212610

`A118753(n+1)-A060308(2*(n+1))`
-/

namespace A116982.P18445050952751212610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (n + 1) - A060308 (2 * (n + 1))

end

end A116982.P18445050952751212610

namespace A116982

/-- `A118753(n+1)-A060308(2*(n+1))` -/
def P18445050952751212610.Spec : Prop :=
  ∀ n, P18445050952751212610.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P15980080245892704626

`A060266(2*(n+1))+A049653(2*(n+1))`
-/

namespace A116982.P15980080245892704626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (2 * (n + 1)) + A049653 (2 * (n + 1))

end

end A116982.P15980080245892704626

namespace A116982

/-- `A060266(2*(n+1))+A049653(2*(n+1))` -/
def P15980080245892704626.Spec : Prop :=
  ∀ n, P15980080245892704626.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P8639883178996229052

`A238737(2*n+1)+A060266(2*(n+1))`
-/

namespace A116982.P8639883178996229052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 (2 * n + 1) + A060266 (2 * (n + 1))

end

end A116982.P8639883178996229052

namespace A116982

/-- `A238737(2*n+1)+A060266(2*(n+1))` -/
def P8639883178996229052.Spec : Prop :=
  ∀ n, P8639883178996229052.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P7024983610303342168

`A013632(A060265(2*(n+1)))`
-/

namespace A116982.P7024983610303342168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A060265 (2 * (n + 1))).toNat

end

end A116982.P7024983610303342168

namespace A116982

/-- `A013632(A060265(2*(n+1)))` -/
def P7024983610303342168.Spec : Prop :=
  ∀ n, P7024983610303342168.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P12584583827747404541

`A013632(A060308(2*(n+1)))`
-/

namespace A116982.P12584583827747404541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A060308 (2 * (n + 1))).toNat

end

end A116982.P12584583827747404541

namespace A116982

/-- `A013632(A060308(2*(n+1)))` -/
def P12584583827747404541.Spec : Prop :=
  ∀ n, P12584583827747404541.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P9218482290706890017

`A013633(A060265(2*(n+1))+1)`
-/

namespace A116982.P9218482290706890017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A060265 (2 * (n + 1)) + 1).toNat

end

end A116982.P9218482290706890017

namespace A116982

/-- `A013633(A060265(2*(n+1))+1)` -/
def P9218482290706890017.Spec : Prop :=
  ∀ n, P9218482290706890017.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P7023159311368527511

`A013633(4*(n+1))`
-/

namespace A116982.P7023159311368527511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (4 * (n + 1))

end

end A116982.P7023159311368527511

namespace A116982

/-- `A013633(4*(n+1))` -/
def P7023159311368527511.Spec : Prop :=
  ∀ n, P7023159311368527511.a n = A116982 (n + 1)

end A116982

/-! ## A116982.P18007852803097675944

`A049711(A118753(n+1))`
-/

namespace A116982.P18007852803097675944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A118753 (n + 1)).toNat

end

end A116982.P18007852803097675944

namespace A116982

/-- `A049711(A118753(n+1))` -/
def P18007852803097675944.Spec : Prop :=
  ∀ n, P18007852803097675944.a n = A116982 (n + 1)

end A116982

/-!
# A116983: Position of n! among the lexicographically ordered permutations of digits of n!.

The programs for A116983, there is no canonical definition to state claims against.
-/

/-! ## A116983.P1942309697272537783

`A128861(A045761(n+1))`
-/

namespace A116983.P1942309697272537783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128861 (A045761 (n + 1)).toNat

end

end A116983.P1942309697272537783

/-! ## A116983.P15636775927653226501

`A086567(A212330(n)+1)`
-/

namespace A116983.P15636775927653226501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086567 (A212330 n + 1).toNat

end

end A116983.P15636775927653226501

/-! ## A116983.P2270824615398744551

`A101296(C(record[A085172(n)], n))`
-/

namespace A116983.P2270824615398744551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat n)

end

end A116983.P2270824615398744551

/-! ## A116983.P17046061287731783128

`A007318(A216245(n+1))%66`
-/

namespace A116983.P17046061287731783128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A216245 (n + 1)).toNat) 66

end

end A116983.P17046061287731783128

/-! ## A116983.P109082183658830986

`A211197(∏[∏[A195522(n+1)]])`
-/

namespace A116983.P109082183658830986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211197 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116983.P109082183658830986

/-!
# A116985: Numerators of the convergents to log_2(5).

The programs for A116985, there is no canonical definition to state claims against.
-/

/-! ## A116985.P5626179790205827470

`round(log2(5)*A046104(n+1))`
-/

namespace A116985.P5626179790205827470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (5 : ℝ) * (A046104 (n + 1) : ℝ))

end

end A116985.P5626179790205827470

/-! ## A116985.P4756960835225683941

`A073733(n+1)-A046104(n+1)`
-/

namespace A116985.P4756960835225683941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073733 (n + 1) - A046104 (n + 1)

end

end A116985.P4756960835225683941

/-! ## A116985.P6041199537307533683

`A046103(n+1)+2*A046104(n+1)`
-/

namespace A116985.P6041199537307533683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046103 (n + 1) + 2 * A046104 (n + 1)

end

end A116985.P6041199537307533683

/-! ## A116985.P2898645688912775002

`A073733(n+1)-(A073733(n+1)-A046103(n+1))/3`
-/

namespace A116985.P2898645688912775002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073733 (n + 1) : ℚ) - (A073733 (n + 1) - A046103 (n + 1) : ℚ) / 3

end

end A116985.P2898645688912775002

/-!
# A116986: When convolved with itself and doubled, gives the sequence A000609.

The programs for A116986, there is no canonical definition to state claims against.
-/

/-! ## A116986.P13005034786757322455

`A264762(∏[n!])`
-/

namespace A116986.P13005034786757322455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264762 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A116986.P13005034786757322455

/-!
# A116988: Sum of digits of (10^n)!.

The programs for A116988, there is no canonical definition to state claims against.
-/

/-! ## A116988.P12869501511846126965

`A004152(10^n)`
-/

namespace A116988.P12869501511846126965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (10 ^ n)

end

end A116988.P12869501511846126965

/-!
# A116989: a(n) = b(A000579(n+6)) with b(n) = Sum{d|n} d*(d+1)*(d+2)*(d+3)*(d+4)*(d+5)/720.

The programs for A116989, there is no canonical definition to state claims against.
-/

/-! ## A116989.P1995646464566252963

`∑{d}[A000579((n+1)/A008835(n+1)+5), A000579(#+5)]`
-/

namespace A116989.P1995646464566252963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ) + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000579 (d + 5)

end

end A116989.P1995646464566252963

/-!
# A116990: Indices of triangular numbers whose sum of divisors is square.

The programs for A116990, there is no canonical definition to state claims against.
-/

/-! ## A116990.P12481949563238744893

`floor(sqrt(2*A256151(n+1)))`
-/

namespace A116990.P12481949563238744893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A256151 (n + 1))

end

end A116990.P12481949563238744893

/-! ## A116990.P12726799685877193259

`round(sqrt(2*A256151(n+1)))%A066885(n+3)`
-/

namespace A116990.P12726799685877193259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A256151 (n + 1) : ℝ))) (A066885 (n + 3))

end

end A116990.P12726799685877193259

/-! ## A116990.P11259052400163352479

`ceil(sqrt(2*A256151(n+1))-A001511(2*n+1))`
-/

namespace A116990.P11259052400163352479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A256151 (n + 1) : ℝ) - (A001511 (2 * n + 1) : ℝ)⌉

end

end A116990.P11259052400163352479

/-! ## A116990.P3451894387905240480

`A000027(round(sqrt(2*A256151(n+1))))`
-/

namespace A116990.P3451894387905240480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A256151 (n + 1) : ℝ))).toNat

end

end A116990.P3451894387905240480

/-! ## A116990.P17208027466274291813

`round(sqrt(2*A256151(n+1)))%A022370(n)`
-/

namespace A116990.P17208027466274291813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A256151 (n + 1) : ℝ))) (A022370 n)

end

end A116990.P17208027466274291813

/-!
# A116991: a(1)=1. a(n) = number of this sequence's terms a(m), 1 <= m <= n-1, each with b(a(m),p) not equal to each b(n,p) for every prime p dividing n, where p^b(k,p) is the highest power of the prime p to divide k.

The programs for A116991, there is no canonical definition to state claims against.
-/

/-! ## A116991.P965133759208316124

`or(A000035(n), A278963(A077168(n)))`
-/

namespace A116991.P965133759208316124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A278963 (A077168 n).toNat)

end

end A116991.P965133759208316124

/-! ## A116991.P6192985590444920416

`or(A029578(n+1), A319676(A077168(n)))`
-/

namespace A116991.P6192985590444920416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029578 (n + 1)) (A319676 (A077168 n).toNat)

end

end A116991.P6192985590444920416

/-! ## A116991.P8786688132644197185

`or(A047994(n+1), A204689(A288763(n)))`
-/

namespace A116991.P8786688132644197185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047994 (n + 1)) (A204689 (A288763 n).toNat)

end

end A116991.P8786688132644197185

/-! ## A116991.P1333693470861776631

`or(A007877(A278958(n)), A278963(n+1))`
-/

namespace A116991.P1333693470861776631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007877 (A278958 n).toNat) (A278963 (n + 1))

end

end A116991.P1333693470861776631

/-!
# A116992: Number of primes < (highest prime dividing any composite between the n-th and (n+1)th prime) that are coprime to every composite between the n-th and (n+1)th prime.

The programs for A116992, there is no canonical definition to state claims against.
-/

/-! ## A116992.P8072030775482140464

`A328615(A259254(n+1)^A190561(n+1))`
-/

namespace A116992.P8072030775482140464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (SequenceMachineLib.roundAway ((A259254 (n + 1) : ℚ) ^ (A190561 (n + 1) : ℤ))).toNat

end

end A116992.P8072030775482140464

/-! ## A116992.P11425699601634635312

`and(A037850(A274160(n)), A093178(n))`
-/

namespace A116992.P11425699601634635312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037850 (A274160 n).toNat) (A093178 n)

end

end A116992.P11425699601634635312

/-! ## A116992.P186205463547825539

`A102442(or(A111850(n+1), A116447(n)))`
-/

namespace A116992.P186205463547825539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102442 (Int.lor (A111850 (n + 1)) (A116447 n)).toNat

end

end A116992.P186205463547825539

/-! ## A116992.P5449233165726594913

`and(A037850(A274160(n)), A344180(2*n))`
-/

namespace A116992.P5449233165726594913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037850 (A274160 n).toNat) (A344180 (2 * n))

end

end A116992.P5449233165726594913

/-! ## A116992.P319653836542736248

`A336562(or(A075198(n+1), A143328(n+1)))`
-/

namespace A116992.P319653836542736248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336562 (Int.lor (A075198 (n + 1)) (A143328 (n + 1))).toNat

end

end A116992.P319653836542736248

/-!
# A116994: Prime partial sums of triangular numbers with prime indices.

The programs for A116994, there is no canonical definition to state claims against.
-/

/-! ## A116994.P8613498627642567596

`p?[A085739(n+1)]`
-/

namespace A116994.P8613498627642567596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116994.P8613498627642567596

/-! ## A116994.P2331052156907435480

`p?[∑[A034953(n+1)]]`
-/

namespace A116994.P2331052156907435480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116994.P2331052156907435480

/-!
# A116995: Pentagonal numbers with prime indices.

The programs for A116995, the canonical program `A116995.P12832703324765891542` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116995 has offset 1).

The definition of A116995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116995.P12832703324765891542

`A000326(A000040(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116995

/-- `A000326(A000040(n+1))` -/
def P12832703324765891542.Spec : Prop :=
  ∀ n, P12832703324765891542.a n = A116995 (n + 1)

theorem P12832703324765891542.correct : P12832703324765891542.Spec := by
  intro n
  simp only [A116995, Nat.add_sub_cancel]

end A116995

/-! ## A116995.P13641911145253315517

`A008837(n+1)+A001248(n+1)`
-/

namespace A116995.P13641911145253315517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) + A001248 (n + 1)

end

end A116995.P13641911145253315517

namespace A116995

/-- `A008837(n+1)+A001248(n+1)` -/
def P13641911145253315517.Spec : Prop :=
  ∀ n, P13641911145253315517.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P10522832651608710411

`A036689(n+1)+A034953(n+1)`
-/

namespace A116995.P10522832651608710411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + A034953 (n + 1)

end

end A116995.P10522832651608710411

namespace A116995

/-- `A036689(n+1)+A034953(n+1)` -/
def P10522832651608710411.Spec : Prop :=
  ∀ n, P10522832651608710411.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P3401394943255601541

`A084920(n+1)+A072205(n+1)`
-/

namespace A116995.P3401394943255601541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A072205 (n + 1)

end

end A116995.P3401394943255601541

namespace A116995

/-- `A084920(n+1)+A072205(n+1)` -/
def P3401394943255601541.Spec : Prop :=
  ∀ n, P3401394943255601541.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P4078301530025466256

`A179545(n+1)+A000040(n+1)`
-/

namespace A116995.P4078301530025466256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179545 (n + 1) + A000040 (n + 1)

end

end A116995.P4078301530025466256

namespace A116995

/-- `A179545(n+1)+A000040(n+1)` -/
def P4078301530025466256.Spec : Prop :=
  ∀ n, P4078301530025466256.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P8149909595763151503

`A079704(n+1)-A034953(n+1)`
-/

namespace A116995.P8149909595763151503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - A034953 (n + 1)

end

end A116995.P8149909595763151503

namespace A116995

/-- `A079704(n+1)-A034953(n+1)` -/
def P8149909595763151503.Spec : Prop :=
  ∀ n, P8149909595763151503.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P15648828900057604965

`A117961(n+1)-A008837(n+1)`
-/

namespace A116995.P15648828900057604965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) - A008837 (n + 1)

end

end A116995.P15648828900057604965

namespace A116995

/-- `A117961(n+1)-A008837(n+1)` -/
def P15648828900057604965.Spec : Prop :=
  ∀ n, P15648828900057604965.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P8073457571316841480

`A179546(n+1)-A066886(n+1)`
-/

namespace A116995.P8073457571316841480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179546 (n + 1) - A066886 (n + 1)

end

end A116995.P8073457571316841480

namespace A116995

/-- `A179546(n+1)-A066886(n+1)` -/
def P8073457571316841480.Spec : Prop :=
  ∀ n, P8073457571316841480.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P12392171598088241535

`A267144(n+1)-A179545(n+1)`
-/

namespace A116995.P12392171598088241535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267144 (n + 1) - A179545 (n + 1)

end

end A116995.P12392171598088241535

namespace A116995

/-- `A267144(n+1)-A179545(n+1)` -/
def P12392171598088241535.Spec : Prop :=
  ∀ n, P12392171598088241535.a n = A116995 (n + 1)

theorem P12392171598088241535.correct : P12392171598088241535.Spec := by
  intro n
  simp only [A116995, Nat.add_sub_cancel, A116995.P12392171598088241535.a, A116995.P12832703324765891542.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000326, A000326.P15785277619453972366.a, A179545, A179545.P8571900986108654706.a, A267144, A267144.P16510657683815295351.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116995

/-! ## A116995.P9404666313527126989

`A008837(n+1)+A000040(n+1)²`
-/

namespace A116995.P9404666313527126989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) + A000040 (n + 1) ^ 2

end

end A116995.P9404666313527126989

namespace A116995

/-- `A008837(n+1)+A000040(n+1)²` -/
def P9404666313527126989.Spec : Prop :=
  ∀ n, P9404666313527126989.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P12464599143607731135

`A008837(n+1)+A084920(n+1)+1`
-/

namespace A116995.P12464599143607731135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) + (A084920 (n + 1) + 1)

end

end A116995.P12464599143607731135

namespace A116995

/-- `A008837(n+1)+A084920(n+1)+1` -/
def P12464599143607731135.Spec : Prop :=
  ∀ n, P12464599143607731135.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P3616468082604297560

`A066872(n+1)+A072205(n+1)-2`
-/

namespace A116995.P3616468082604297560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + (A072205 (n + 1) - 2)

end

end A116995.P3616468082604297560

namespace A116995

/-- `A066872(n+1)+A072205(n+1)-2` -/
def P3616468082604297560.Spec : Prop :=
  ∀ n, P3616468082604297560.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P17967282589106166245

`A034953(n+1)+2*A008837(n+1)`
-/

namespace A116995.P17967282589106166245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) + 2 * A008837 (n + 1)

end

end A116995.P17967282589106166245

namespace A116995

/-- `A034953(n+1)+2*A008837(n+1)` -/
def P17967282589106166245.Spec : Prop :=
  ∀ n, P17967282589106166245.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P9364391729786775105

`2*A001248(n+1)-A034953(n+1)`
-/

namespace A116995.P9364391729786775105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001248 (n + 1) - A034953 (n + 1)

end

end A116995.P9364391729786775105

namespace A116995

/-- `2*A001248(n+1)-A034953(n+1)` -/
def P9364391729786775105.Spec : Prop :=
  ∀ n, P9364391729786775105.a n = A116995 (n + 1)

end A116995

/-! ## A116995.P5624569193776005551

`A001248(n+1)+A036689(n+1)/2`
-/

namespace A116995.P5624569193776005551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) : ℚ) + (A036689 (n + 1) : ℚ) / 2

end

end A116995.P5624569193776005551

namespace A116995

/-- `A001248(n+1)+A036689(n+1)/2` -/
def P5624569193776005551.Spec : Prop :=
  ∀ n, P5624569193776005551.a n = (A116995 (n + 1) : ℚ)

end A116995

/-! ## A116995.P4076461305582420629

`A036689(n+1)+A036690(n+1)/2`
-/

namespace A116995.P4076461305582420629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036689 (n + 1) : ℚ) + (A036690 (n + 1) : ℚ) / 2

end

end A116995.P4076461305582420629

namespace A116995

/-- `A036689(n+1)+A036690(n+1)/2` -/
def P4076461305582420629.Spec : Prop :=
  ∀ n, P4076461305582420629.a n = (A116995 (n + 1) : ℚ)

end A116995

/-! ## A116995.P164561247377403593

`A008837(n+1)+A079704(n+1)/2`
-/

namespace A116995.P164561247377403593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008837 (n + 1) : ℚ) + (A079704 (n + 1) : ℚ) / 2

end

end A116995.P164561247377403593

namespace A116995

/-- `A008837(n+1)+A079704(n+1)/2` -/
def P164561247377403593.Spec : Prop :=
  ∀ n, P164561247377403593.a n = (A116995 (n + 1) : ℚ)

end A116995

/-! ## A116995.P18075399321724246696

`(A117961(n+1)+A001248(n+1))/2`
-/

namespace A116995.P18075399321724246696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117961 (n + 1) + A001248 (n + 1) : ℚ) / 2

end

end A116995.P18075399321724246696

namespace A116995

/-- `(A117961(n+1)+A001248(n+1))/2` -/
def P18075399321724246696.Spec : Prop :=
  ∀ n, P18075399321724246696.a n = (A116995 (n + 1) : ℚ)

end A116995

/-! ## A116995.P11298610137232741460

`(A267144(n+1)+A000040(n+1))/2`
-/

namespace A116995.P11298610137232741460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267144 (n + 1) + A000040 (n + 1) : ℚ) / 2

end

end A116995.P11298610137232741460

namespace A116995

/-- `(A267144(n+1)+A000040(n+1))/2` -/
def P11298610137232741460.Spec : Prop :=
  ∀ n, P11298610137232741460.a n = (A116995 (n + 1) : ℚ)

end A116995

/-! ## A116995.P15224726576975048237

`(A079705(n+1)-A000040(n+1))/2`
-/

namespace A116995.P15224726576975048237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079705 (n + 1) - A000040 (n + 1) : ℚ) / 2

end

end A116995.P15224726576975048237

namespace A116995

/-- `(A079705(n+1)-A000040(n+1))/2` -/
def P15224726576975048237.Spec : Prop :=
  ∀ n, P15224726576975048237.a n = (A116995 (n + 1) : ℚ)

end A116995

/-!
# A116996: Partial sums of A116966.

The programs for A116996, the canonical program `A116996.P3125994504411855308` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116996 has offset 0).

The definition of A116996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116996.P5849984037615743865

`∑[xor(n, char[or(2, n)])]`
-/

namespace A116996.P5849984037615743865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P5849984037615743865

namespace A116996

/-- `∑[xor(n, char[or(2, n)])]` -/
def P5849984037615743865.Spec : Prop :=
  ∀ n, (P5849984037615743865.a n : ℤ) = A116996 n

end A116996

/-! ## A116996.P3125994504411855308

`∑[xor(n, and(2, n)/2)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116996

/-- `∑[xor(n, and(2, n)/2)]` -/
def P3125994504411855308.Spec : Prop :=
  ∀ n, P3125994504411855308.a n = A116996 n

theorem P3125994504411855308.correct : P3125994504411855308.Spec := by
  intro n
  simp only [A116996]

end A116996

/-! ## A116996.P1586136970743774077

`∑[xor(n, C(n, 2)%2)]`
-/

namespace A116996.P1586136970743774077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.choose n 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P1586136970743774077

namespace A116996

/-- `∑[xor(n, C(n, 2)%2)]` -/
def P1586136970743774077.Spec : Prop :=
  ∀ n, (P1586136970743774077.a n : ℤ) = A116996 n

end A116996

/-! ## A116996.P4096584222159103205

`∑[xor(n, and(1, C(n, 2)))]`
-/

namespace A116996.P4096584222159103205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 1 (Nat.choose n 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P4096584222159103205

namespace A116996

/-- `∑[xor(n, and(1, C(n, 2)))]` -/
def P4096584222159103205.Spec : Prop :=
  ∀ n, (P4096584222159103205.a n : ℤ) = A116996 n

end A116996

/-! ## A116996.P15578803758670292462

`∑[n]+val(n²+4, 8)`
-/

namespace A116996.P15578803758670292462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.valuation (n ^ 2 + 4) 8

end

end A116996.P15578803758670292462

namespace A116996

/-- `∑[n]+val(n²+4, 8)` -/
def P15578803758670292462.Spec : Prop :=
  ∀ n, (P15578803758670292462.a n : ℤ) = A116996 n

end A116996

/-! ## A116996.P4662937013612408819

`∑[n]+and(4, n²)/4`
-/

namespace A116996.P4662937013612408819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.land 4 (n ^ 2) : ℚ) / 4

end

end A116996.P4662937013612408819

namespace A116996

/-- `∑[n]+and(4, n²)/4` -/
def P4662937013612408819.Spec : Prop :=
  ∀ n, P4662937013612408819.a n = (A116996 n : ℚ)

end A116996

/-! ## A116996.P225395114940019376

`char[4*n+2]+∑[n]`
-/

namespace A116996.P225395114940019376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A116996.P225395114940019376

namespace A116996

/-- `char[4*n+2]+∑[n]` -/
def P225395114940019376.Spec : Prop :=
  ∀ n, (P225395114940019376.a n : ℤ) = A116996 n

end A116996

/-! ## A116996.P15937483189924859489

`∑[a(n-4)+4]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A116996.P15937483189924859489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P15937483189924859489

namespace A116996

/-- `∑[a(n-4)+4]` -/
def P15937483189924859489.Spec : Prop :=
  ∀ n, (P15937483189924859489.a n : ℤ) = A116996 n

end A116996

/-! ## A116996.P13798254030085359049

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=-1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A116996.P13798254030085359049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, -1, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P13798254030085359049

namespace A116996

/-- `∑[∑[floor(a(n-4))]]` -/
def P13798254030085359049.Spec : Prop :=
  ∀ n, P13798254030085359049.a n = A116996 n

end A116996

/-! ## A116996.P7392163188675817874

`∑[∑[(-1)^n*a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A116996.P7392163188675817874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  (-1) ^ n * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P7392163188675817874

namespace A116996

/-- `∑[∑[(-1)^n*a(n-2)]]` -/
def P7392163188675817874.Spec : Prop :=
  ∀ n, P7392163188675817874.a n = A116996 n

end A116996

/-! ## A116996.P2448719306954039995

`∑[∑[a(n-2)/(-1)^n]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A116996.P2448719306954039995
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 2) / ((-1) ^ n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P2448719306954039995

namespace A116996

/-- `∑[∑[a(n-2)/(-1)^n]]` -/
def P2448719306954039995.Spec : Prop :=
  ∀ n, P2448719306954039995.a n = (A116996 n : ℚ)

end A116996

/-! ## A116996.P3806098114067568708

`∑[A133256(n+1)-1]`
-/

namespace A116996.P3806098114067568708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P3806098114067568708

namespace A116996

/-- `∑[A133256(n+1)-1]` -/
def P3806098114067568708.Spec : Prop :=
  ∀ n, P3806098114067568708.a n = A116996 n

end A116996

/-! ## A116996.P927763892630026837

`∑[xor(n, and(1, A000096(n)))]`
-/

namespace A116996.P927763892630026837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land 1 (A000096 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P927763892630026837

namespace A116996

/-- `∑[xor(n, and(1, A000096(n)))]` -/
def P927763892630026837.Spec : Prop :=
  ∀ n, P927763892630026837.a n = A116996 n

end A116996

/-! ## A116996.P12909861517098002313

`xor(A084263(n), A121262(n))`
-/

namespace A116996.P12909861517098002313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084263 n) (A121262 n)

end

end A116996.P12909861517098002313

namespace A116996

/-- `xor(A084263(n), A121262(n))` -/
def P12909861517098002313.Spec : Prop :=
  ∀ n, P12909861517098002313.a n = A116996 n

end A116996

/-! ## A116996.P10937488114228163277

`∑[A080412(A159966(A080412(n)))]`
-/

namespace A116996.P10937488114228163277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A159966 (A080412 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P10937488114228163277

namespace A116996

/-- `∑[A080412(A159966(A080412(n)))]` -/
def P10937488114228163277.Spec : Prop :=
  ∀ n, P10937488114228163277.a n = A116996 n

end A116996

/-! ## A116996.P9719906897590120160

`∑[n-A102560(n+1)]`
-/

namespace A116996.P9719906897590120160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A102560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P9719906897590120160

namespace A116996

/-- `∑[n-A102560(n+1)]` -/
def P9719906897590120160.Spec : Prop :=
  ∀ n, P9719906897590120160.a n = A116996 n

end A116996

/-! ## A116996.P4580867550802590798

`∑[A140081(n+1)+n-1]`
-/

namespace A116996.P4580867550802590798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 (n + 1) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P4580867550802590798

namespace A116996

/-- `∑[A140081(n+1)+n-1]` -/
def P4580867550802590798.Spec : Prop :=
  ∀ n, P4580867550802590798.a n = A116996 n

end A116996

/-! ## A116996.P1952500974428601705

`∑[A219977(n+2)+n]`
-/

namespace A116996.P1952500974428601705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P1952500974428601705

namespace A116996

/-- `∑[A219977(n+2)+n]` -/
def P1952500974428601705.Spec : Prop :=
  ∀ n, P1952500974428601705.a n = A116996 n

end A116996

/-! ## A116996.P10262444287635099049

`A114220(A047558(n+1))`
-/

namespace A116996.P10262444287635099049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 (A047558 (n + 1)).toNat

end

end A116996.P10262444287635099049

namespace A116996

/-- `A114220(A047558(n+1))` -/
def P10262444287635099049.Spec : Prop :=
  ∀ n, P10262444287635099049.a n = A116996 n

end A116996

/-! ## A116996.P16039035363254910279

`∑[A098180(2*n+1)-A098180(n+1)]`
-/

namespace A116996.P16039035363254910279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (2 * n + 1) - A098180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116996.P16039035363254910279

namespace A116996

/-- `∑[A098180(2*n+1)-A098180(n+1)]` -/
def P16039035363254910279.Spec : Prop :=
  ∀ n, P16039035363254910279.a n = A116996 n

end A116996

/-!
# A116998: Numbers having no fewer distinct prime factors than any predecessor; a(1) = 1.

The programs for A116998, there is no canonical definition to state claims against.
-/

/-! ## A116998.P5458588983292615628

`eq[0, A322841(n+1)]+1`
-/

namespace A116998.P5458588983292615628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116998.P5458588983292615628

/-! ## A116998.P16383642852243309619

`record[(n+1)/A325805(A322841(n+1)+1)]`
-/

namespace A116998.P16383642852243309619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A325805 (A322841 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116998.P16383642852243309619

/-! ## A116998.P3313071875019385243

`eq[n, A330292(n+1)]+1`
-/

namespace A116998.P3313071875019385243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116998.P3313071875019385243

/-! ## A116998.P16341509393413531674

`record[n+1-A081765(n+1)*A322841(n+1)]`
-/

namespace A116998.P16341509393413531674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A081765 (n + 1) * A322841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116998.P16341509393413531674

/-! ## A116998.P9392935425959622890

`record[n+1-A246428(n+1)*A322841(n+1)]`
-/

namespace A116998.P9392935425959622890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A246428 (n + 1) * A322841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116998.P9392935425959622890

/-! ## A116998.P13222639524926033639

`record[n+1-A089773(n+1)*A322841(n+1)]`
-/

namespace A116998.P13222639524926033639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A089773 (n + 1) * A322841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116998.P13222639524926033639

