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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

/-!
# A043000: Number of digits in all base-b representations of n, for 2 <= b <= n.

The programs for A043000, the canonical program `A043000.P2511655755734765568` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043000 has offset 2).

The definition of A043000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043000.P2511655755734765568

`∑[A089723(n+2)+1]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A043000

/-- `∑[A089723(n+2)+1]` -/
def P2511655755734765568.Spec : Prop :=
  ∀ n, P2511655755734765568.a n = A043000 (n + 2)

theorem P2511655755734765568.correct : P2511655755734765568.Spec := by
  intro n
  simp only [A043000, Nat.add_sub_cancel]

end A043000

/-! ## A043000.P5980458404529998102

`∑[A000005(A052409(n+2))+1]`
-/

namespace A043000.P5980458404529998102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A052409 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043000.P5980458404529998102

namespace A043000

/-- `∑[A000005(A052409(n+2))+1]` -/
def P5980458404529998102.Spec : Prop :=
  ∀ n, P5980458404529998102.a n = A043000 (n + 2)

end A043000

/-! ## A043000.P17483119181694407218

`A342871(n+1)+A089723(n+2)`
-/

namespace A043000.P17483119181694407218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342871 (n + 1) + A089723 (n + 2)

end

end A043000.P17483119181694407218

namespace A043000

/-- `A342871(n+1)+A089723(n+2)` -/
def P17483119181694407218.Spec : Prop :=
  ∀ n, P17483119181694407218.a n = A043000 (n + 2)

end A043000

/-! ## A043000.P10072175339722062834

`A342871(n+2)-1`
-/

namespace A043000.P10072175339722062834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342871 (n + 2) - 1

end

end A043000.P10072175339722062834

namespace A043000

/-- `A342871(n+2)-1` -/
def P10072175339722062834.Spec : Prop :=
  ∀ n, P10072175339722062834.a n = A043000 (n + 2)

end A043000

/-! ## A043000.P6561264808484996810

`∑[A259362(n+2)+2]`
-/

namespace A043000.P6561264808484996810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043000.P6561264808484996810

namespace A043000

/-- `∑[A259362(n+2)+2]` -/
def P6561264808484996810.Spec : Prop :=
  ∀ n, P6561264808484996810.a n = A043000 (n + 2)

end A043000

/-! ## A043000.P18373740227857030791

`A255165(n+2)+1+n`
-/

namespace A043000.P18373740227857030791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255165 (n + 2) + 1 + (n : ℤ)

end

end A043000.P18373740227857030791

namespace A043000

/-- `A255165(n+2)+1+n` -/
def P18373740227857030791.Spec : Prop :=
  ∀ n, P18373740227857030791.a n = A043000 (n + 2)

end A043000

/-! ## A043000.P9358307488375043994

`A327737(n+2)-(n+2)`
-/

namespace A043000.P9358307488375043994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327737 (n + 2) - (n + 2 : ℤ)

end

end A043000.P9358307488375043994

namespace A043000

/-- `A327737(n+2)-(n+2)` -/
def P9358307488375043994.Spec : Prop :=
  ∀ n, P9358307488375043994.a n = A043000 (n + 2)

end A043000

/-! ## A043000.P12809761546661589767

`A089361(n+2)+2*(n+1)`
-/

namespace A043000.P12809761546661589767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (n + 2) + (2 * (n + 1) : ℤ)

end

end A043000.P12809761546661589767

namespace A043000

/-- `A089361(n+2)+2*(n+1)` -/
def P12809761546661589767.Spec : Prop :=
  ∀ n, P12809761546661589767.a n = A043000 (n + 2)

end A043000

/-! ## A043000.P6668541966296917067

`∑[A032741(A132349(n+2))+2]`
-/

namespace A043000.P6668541966296917067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A132349 (n + 2)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043000.P6668541966296917067

namespace A043000

/-- `∑[A032741(A132349(n+2))+2]` -/
def P6668541966296917067.Spec : Prop :=
  ∀ n, P6668541966296917067.a n = A043000 (n + 2)

end A043000

/-! ## A043000.P14046291607378273214

`A023443(A342871(n+2))`
-/

namespace A043000.P14046291607378273214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A342871 (n + 2)).toNat

end

end A043000.P14046291607378273214

namespace A043000

/-- `A023443(A342871(n+2))` -/
def P14046291607378273214.Spec : Prop :=
  ∀ n, P14046291607378273214.a n = A043000 (n + 2)

end A043000

/-!
# A043001: Base-3 palindromes that start with 1.

The programs for A043001, there is no canonical definition to state claims against.
-/

/-! ## A043001.P10444218106672724225

`3*A043045(n+1)-2`
-/

namespace A043001.P10444218106672724225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A043045 (n + 1) - 2

end

end A043001.P10444218106672724225

/-! ## A043001.P3389796121256259709

`2/A008683(A240710(n+2))+3*A043045(n+1)`
-/

namespace A043001.P3389796121256259709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A008683 (A240710 (n + 2)).toNat : ℚ) + (3 * A043045 (n + 1) : ℚ)

end

end A043001.P3389796121256259709

/-! ## A043001.P10543996723749040877

`∩[3*n+1, A014190(n+2)]`
-/

namespace A043001.P10543996723749040877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P10543996723749040877

/-! ## A043001.P6327631567388183920

`A016777(A043045(n+1)-1)`
-/

namespace A043001.P6327631567388183920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A043045 (n + 1) - 1).toNat

end

end A043001.P6327631567388183920

/-! ## A043001.P11565062952677124387

`∩[A014190(n+1), A016777(n)]`
-/

namespace A043001.P11565062952677124387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P11565062952677124387

/-! ## A043001.P7637799105980774012

`∩[A014190(n+1), A016789(n)-1]`
-/

namespace A043001.P7637799105980774012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P7637799105980774012

/-! ## A043001.P2501974564980017124

`A033627(A043045(n+1)-A057428(n))`
-/

namespace A043001.P2501974564980017124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A043045 (n + 1) - A057428 n).toNat

end

end A043001.P2501974564980017124

/-! ## A043001.P5043944972541773206

`A033627(A043045(n+1)+A057428(n)²)`
-/

namespace A043001.P5043944972541773206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A043045 (n + 1) + A057428 n ^ 2).toNat

end

end A043001.P5043944972541773206

/-! ## A043001.P7260080531381897909

`∩[A014190(n+1), A055047(n+1)]`
-/

namespace A043001.P7260080531381897909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P7260080531381897909

/-! ## A043001.P16370147262093791764

`∩[A014190(n+1), A277572(n+1)]`
-/

namespace A043001.P16370147262093791764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P16370147262093791764

/-! ## A043001.P3523765328946533668

`∩[A014190(n+1), A244713(n+1)]`
-/

namespace A043001.P3523765328946533668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P3523765328946533668

/-! ## A043001.P12471597638113718348

`∩[A014190(n+1), A056991(n+1)]`
-/

namespace A043001.P12471597638113718348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P12471597638113718348

/-! ## A043001.P11120433255293031586

`∩[A014190(n+1), A026225(n+1)]`
-/

namespace A043001.P11120433255293031586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P11120433255293031586

/-! ## A043001.P14754464810070798180

`∩[A014190(n+1), A029739(n+1)]`
-/

namespace A043001.P14754464810070798180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P14754464810070798180

/-! ## A043001.P6472009387506808503

`∩[A014190(n+1), A132141(n+1)]`
-/

namespace A043001.P6472009387506808503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P6472009387506808503

/-! ## A043001.P7563145024046974673

`∩[A014190(n+1), A189715(n+1)]`
-/

namespace A043001.P7563145024046974673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043001.P7563145024046974673

/-! ## A043001.P6805041424575314054

`A080722(A043046(n+1))`
-/

namespace A043001.P6805041424575314054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 (A043046 (n + 1)).toNat

end

end A043001.P6805041424575314054

/-! ## A043001.P8052640461126022681

`A047237(2*A043045(n+1))`
-/

namespace A043001.P8052640461126022681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (2 * A043045 (n + 1)).toNat

end

end A043001.P8052640461126022681

/-! ## A043001.P8429726249447180235

`record[A265511(3*n+1)]`
-/

namespace A043001.P8429726249447180235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043001.P8429726249447180235

/-! ## A043001.P16017989016831709947

`eq[A055947(n), A057078(n)]`
-/

namespace A043001.P16017989016831709947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043001.P16017989016831709947

/-!
# A043002: Base-3 palindromes that start with 2.

The programs for A043002, there is no canonical definition to state claims against.
-/

/-! ## A043002.P18062225901139838565

`3*A043046(n+1)-1`
-/

namespace A043002.P18062225901139838565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A043046 (n + 1) - 1

end

end A043002.P18062225901139838565

/-! ## A043002.P13004884709960115059

`A008683(A084126(n+1))+3*A043046(n+1)`
-/

namespace A043002.P13004884709960115059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A084126 (n + 1)).toNat + 3 * A043046 (n + 1)

end

end A043002.P13004884709960115059

/-! ## A043002.P12185664934607017589

`A008683(A084127(n+1))+3*A043046(n+1)`
-/

namespace A043002.P12185664934607017589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A084127 (n + 1)).toNat + 3 * A043046 (n + 1)

end

end A043002.P12185664934607017589

/-! ## A043002.P4338862489886007406

`A107393(A000040(n+1))+3*A043046(n+1)`
-/

namespace A043002.P4338862489886007406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A000040 (n + 1)).toNat + 3 * A043046 (n + 1)

end

end A043002.P4338862489886007406

/-! ## A043002.P14867896308979232272

`A008683(A216815(n+1))+3*A043046(n+1)`
-/

namespace A043002.P14867896308979232272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A216815 (n + 1)).toNat + 3 * A043046 (n + 1)

end

end A043002.P14867896308979232272

/-! ## A043002.P828853426724229493

`A008683(A144517(n+1))+3*A043046(n+1)`
-/

namespace A043002.P828853426724229493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A144517 (n + 1)).toNat + 3 * A043046 (n + 1)

end

end A043002.P828853426724229493

/-! ## A043002.P13787012321052614394

`A066182(3*A043046(n+1))`
-/

namespace A043002.P13787012321052614394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (3 * A043046 (n + 1)).toNat

end

end A043002.P13787012321052614394

/-! ## A043002.P11694077263207583240

`A157671(A134027(n+2))`
-/

namespace A043002.P11694077263207583240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (A134027 (n + 2)).toNat

end

end A043002.P11694077263207583240

/-! ## A043002.P11186767470068740218

`∩[A014190(n+1), A157671(n+1)]`
-/

namespace A043002.P11186767470068740218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043002.P11186767470068740218

/-! ## A043002.P10633660062463121145

`∩[A014190(n+1), A016789(n)]`
-/

namespace A043002.P10633660062463121145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043002.P10633660062463121145

/-! ## A043002.P15985723662982100892

`∩[A014190(n+1), A016777(n)+1]`
-/

namespace A043002.P15985723662982100892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043002.P15985723662982100892

/-! ## A043002.P1772838728084554790

`∩[A014190(n+1), A047254(n+1)]`
-/

namespace A043002.P1772838728084554790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043002.P1772838728084554790

/-! ## A043002.P13940896773581423130

`∩[A014190(n+1), A055048(n+1)]`
-/

namespace A043002.P13940896773581423130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043002.P13940896773581423130

/-! ## A043002.P8834517991381030672

`∩[A014190(n+1), A189716(n+1)]`
-/

namespace A043002.P8834517991381030672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043002.P8834517991381030672

/-! ## A043002.P177050099158894697

`∩[A014190(n+1), A277574(n+1)]`
-/

namespace A043002.P177050099158894697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043002.P177050099158894697

/-! ## A043002.P136997669780026747

`∩[A014190(n+1), A268226(n+1)]`
-/

namespace A043002.P136997669780026747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043002.P136997669780026747

/-! ## A043002.P1125246543600690206

`A001651(2*A043046(n+1))`
-/

namespace A043002.P1125246543600690206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (2 * A043046 (n + 1)).toNat

end

end A043002.P1125246543600690206

/-! ## A043002.P16095191751805092060

`∩[A014190(n+1), A049636(n)]`
-/

namespace A043002.P16095191751805092060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043002.P16095191751805092060

/-!
# A043003: Base-4 palindromes that start with 1.

The programs for A043003, there is no canonical definition to state claims against.
-/

/-! ## A043003.P12716617086054862035

`4*A043047(n+1)-3`
-/

namespace A043003.P12716617086054862035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A043047 (n + 1) - 3

end

end A043003.P12716617086054862035

/-! ## A043003.P3869957372245676383

`2*A043004(n+1)-A043005(n+1)`
-/

namespace A043003.P3869957372245676383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043004 (n + 1) - A043005 (n + 1)

end

end A043003.P3869957372245676383

/-! ## A043003.P3694341036858609896

`A014192(eq[1, A014192(n+1)%4]+1)`
-/

namespace A043003.P3694341036858609896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014192 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A043003.P3694341036858609896

/-! ## A043003.P15987894405930027567

`record[A014192(n+2)%or(2, A014192(n+2))]`
-/

namespace A043003.P15987894405930027567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014192 (n + 2)) (Int.lor 2 (A014192 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043003.P15987894405930027567

/-! ## A043003.P11580960541478561349

`A326814(A098058(n+1))+4*A043047(n+1)`
-/

namespace A043003.P11580960541478561349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326814 (A098058 (n + 1)).toNat + 4 * A043047 (n + 1)

end

end A043003.P11580960541478561349

/-! ## A043003.P2997755334577136801

`A016825(A043047(n+1))-5`
-/

namespace A043003.P2997755334577136801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A043047 (n + 1)).toNat - 5

end

end A043003.P2997755334577136801

/-! ## A043003.P1044465311554301402

`A016825(2*A043048(n+1)-A043049(n+1))-5`
-/

namespace A043003.P1044465311554301402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * A043048 (n + 1) - A043049 (n + 1)).toNat - 5

end

end A043003.P1044465311554301402

/-! ## A043003.P10745713178461579926

`∩[4*n+1, A014192(n+2)]`
-/

namespace A043003.P10745713178461579926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043003.P10745713178461579926

/-! ## A043003.P2854453287443944434

`A016813(A043047(n+1)-1)`
-/

namespace A043003.P2854453287443944434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A043047 (n + 1) - 1).toNat

end

end A043003.P2854453287443944434

/-! ## A043003.P4371939855232007245

`∩[A014192(n+1), A016813(n)]`
-/

namespace A043003.P4371939855232007245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043003.P4371939855232007245

/-! ## A043003.P4790976339285731348

`∩[A014192(n+1), A016825(n)-1]`
-/

namespace A043003.P4790976339285731348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043003.P4790976339285731348

/-! ## A043003.P13918788748553275723

`∩[A014192(n+1), A004767(n)-2]`
-/

namespace A043003.P13918788748553275723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043003.P13918788748553275723

/-! ## A043003.P14347071330804345773

`∩[A014192(n+1), A277549(n+1)]`
-/

namespace A043003.P14347071330804345773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043003.P14347071330804345773

/-! ## A043003.P2007526818476830833

`∩[A014192(n+1), A047610(n+1)]`
-/

namespace A043003.P2007526818476830833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043003.P2007526818476830833

/-! ## A043003.P13183385200339723672

`∩[A014192(n+1), A053738(n+1)]`
-/

namespace A043003.P13183385200339723672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043003.P13183385200339723672

/-! ## A043003.P7498208839343356955

`record[A009001(A014192(n+1))]`
-/

namespace A043003.P7498208839343356955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A014192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043003.P7498208839343356955

/-! ## A043003.P17328031938196833139

`eq[A055949(n), A152822(n+1)]`
-/

namespace A043003.P17328031938196833139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043003.P17328031938196833139

/-! ## A043003.P4156741994532761132

`eq[A055949(n), A263832(n+1)]`
-/

namespace A043003.P4156741994532761132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043003.P4156741994532761132

/-! ## A043003.P7817878994184906606

`eq[2, A199398(n+1)+A055949(n)]`
-/

namespace A043003.P7817878994184906606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199398 (n + 1) + A055949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043003.P7817878994184906606

/-! ## A043003.P11822872303431176801

`∩[A014192(n+1), A100832(n+1)]`
-/

namespace A043003.P11822872303431176801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043003.P11822872303431176801

/-!
# A043004: Base-4 palindromes that start with 2.

The programs for A043004, there is no canonical definition to state claims against.
-/

/-! ## A043004.P2904677984098907179

`4*A043048(n+1)-2`
-/

namespace A043004.P2904677984098907179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A043048 (n + 1) - 2

end

end A043004.P2904677984098907179

/-! ## A043004.P10978525829235241527

`(A043005(n+1)+A043003(n+1))/2`
-/

namespace A043004.P10978525829235241527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043005 (n + 1) + A043003 (n + 1) : ℚ) / 2

end

end A043004.P10978525829235241527

/-! ## A043004.P17377413980317295256

`4*(A043049(n+1)+A043047(n+1))/2-2`
-/

namespace A043004.P17377413980317295256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A043049 (n + 1) + A043047 (n + 1) : ℚ) / 2) - 2

end

end A043004.P17377413980317295256

/-! ## A043004.P9733246367580528219

`A014192(eq[2, A014192(n+1)%4]+1)`
-/

namespace A043004.P9733246367580528219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014192 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A043004.P9733246367580528219

/-! ## A043004.P9932642062639085658

`4*A014682(A043049(n+1)+A043047(n+1))-2`
-/

namespace A043004.P9932642062639085658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014682 (A043049 (n + 1) + A043047 (n + 1)).toNat - 2

end

end A043004.P9932642062639085658

/-! ## A043004.P11514473314950388299

`4*A014682(A043049(n+1)+ceil(A043003(n+1)/4))-2`
-/

namespace A043004.P11514473314950388299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014682 (A043049 (n + 1) + ⌈(A043003 (n + 1) : ℚ) / 4⌉).toNat - 2

end

end A043004.P11514473314950388299

/-! ## A043004.P14864576674964230068

`A016825(A043048(n+1)-1)`
-/

namespace A043004.P14864576674964230068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A043048 (n + 1) - 1).toNat

end

end A043004.P14864576674964230068

/-! ## A043004.P11045656917396210831

`A014682(A043005(n+1)+A043003(n+1))`
-/

namespace A043004.P11045656917396210831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043005 (n + 1) + A043003 (n + 1)).toNat

end

end A043004.P11045656917396210831

/-! ## A043004.P8048604663141563825

`∩[2*A053738(n+1), A014192(n+1)]`
-/

namespace A043004.P8048604663141563825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043004.P8048604663141563825

/-! ## A043004.P10586389399552593117

`A130824(A043048(n+1))`
-/

namespace A043004.P10586389399552593117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A043048 (n + 1)).toNat

end

end A043004.P10586389399552593117

/-! ## A043004.P9475074452406687700

`∩[A014192(n+1), A016825(n)]`
-/

namespace A043004.P9475074452406687700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043004.P9475074452406687700

/-! ## A043004.P7691492807784210649

`∩[A014192(n+1), A016813(n)+1]`
-/

namespace A043004.P7691492807784210649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043004.P7691492807784210649

/-! ## A043004.P12937705503654640504

`∩[A014192(n+1), A004767(n)-1]`
-/

namespace A043004.P12937705503654640504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043004.P12937705503654640504

/-! ## A043004.P4322785161560219118

`2*(A004277(A043048(n+1))+A008683(A006093(n+1)+1))`
-/

namespace A043004.P4322785161560219118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004277 (A043048 (n + 1)).toNat + A008683 (A006093 (n + 1) + 1).toNat)

end

end A043004.P4322785161560219118

/-! ## A043004.P17177575340917622862

`∩[A014192(n+1), A171757(n+1)]`
-/

namespace A043004.P17177575340917622862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043004.P17177575340917622862

/-! ## A043004.P16549250914392057979

`∩[A014192(n+1), A067368(n+1)]`
-/

namespace A043004.P16549250914392057979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043004.P16549250914392057979

/-! ## A043004.P18268945929456547903

`∩[A014192(n+1), A095300(n+1)]`
-/

namespace A043004.P18268945929456547903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043004.P18268945929456547903

/-! ## A043004.P16551284264893727119

`∩[2*n, A014192(n+2)]`
-/

namespace A043004.P16551284264893727119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043004.P16551284264893727119

/-! ## A043004.P972416597959595871

`eq[A055949(n), A073097(n)]`
-/

namespace A043004.P972416597959595871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043004.P972416597959595871

/-! ## A043004.P5052389619048452214

`eq[A055949(n), A152822(n)]`
-/

namespace A043004.P5052389619048452214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043004.P5052389619048452214

/-!
# A043005: Base-4 palindromes that start with 3.

The programs for A043005, there is no canonical definition to state claims against.
-/

/-! ## A043005.P5300764757709507561

`4*A043049(n+1)-1`
-/

namespace A043005.P5300764757709507561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A043049 (n + 1) - 1

end

end A043005.P5300764757709507561

/-! ## A043005.P4252349376931400636

`or(A043003(n+1), A043004(n+1))`
-/

namespace A043005.P4252349376931400636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043003 (n + 1)) (A043004 (n + 1))

end

end A043005.P4252349376931400636

/-! ## A043005.P14666689650250440731

`A033999(A153285(n+1))+4*A043049(n+1)`
-/

namespace A043005.P14666689650250440731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A153285 (n + 1)).toNat + 4 * A043049 (n + 1)

end

end A043005.P14666689650250440731

/-! ## A043005.P5053745864334727869

`A033999(A002659(n+1))+4*A043049(n+1)`
-/

namespace A043005.P5053745864334727869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002659 (n + 1)).toNat + 4 * A043049 (n + 1)

end

end A043005.P5053745864334727869

/-! ## A043005.P6088633738054526455

`A008836(A046133(n+1))+4*A043049(n+1)`
-/

namespace A043005.P6088633738054526455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A046133 (n + 1)).toNat + 4 * A043049 (n + 1)

end

end A043005.P6088633738054526455

/-! ## A043005.P11803145363650346234

`A016825(A043049(n+1)-1)+1`
-/

namespace A043005.P11803145363650346234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A043049 (n + 1) - 1).toNat + 1

end

end A043005.P11803145363650346234

/-! ## A043005.P6433019989680443687

`A033999(A141373(n+1))+4*A043049(n+1)`
-/

namespace A043005.P6433019989680443687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A141373 (n + 1)).toNat + 4 * A043049 (n + 1)

end

end A043005.P6433019989680443687

/-! ## A043005.P7082562798515098784

`or(A043003(n+1), A130824(A043048(n+1)))`
-/

namespace A043005.P7082562798515098784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043003 (n + 1)) (A130824 (A043048 (n + 1)).toNat)

end

end A043005.P7082562798515098784

/-! ## A043005.P9123704869724774871

`A004273(2*A043049(n+1))`
-/

namespace A043005.P9123704869724774871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A043049 (n + 1)).toNat

end

end A043005.P9123704869724774871

/-! ## A043005.P1923752464136899119

`A060747(2*A043049(n+1))`
-/

namespace A043005.P1923752464136899119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (2 * A043049 (n + 1)).toNat

end

end A043005.P1923752464136899119

/-! ## A043005.P17009600341554712453

`A153285(2*A043049(n+1))`
-/

namespace A043005.P17009600341554712453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153285 (2 * A043049 (n + 1)).toNat

end

end A043005.P17009600341554712453

/-! ## A043005.P7595603982739119282

`or(1, A063946(A043004(n+1)))`
-/

namespace A043005.P7595603982739119282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063946 (A043004 (n + 1)).toNat)

end

end A043005.P7595603982739119282

/-! ## A043005.P6679055333893245445

`eq[A055949(n), A199398(n+1)]`
-/

namespace A043005.P6679055333893245445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199398 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043005.P6679055333893245445

/-! ## A043005.P4544342294614115228

`∩[A014192(n+1), A004767(n)]`
-/

namespace A043005.P4544342294614115228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043005.P4544342294614115228

/-! ## A043005.P4861220998845751111

`A063946(A043004(n+1)-1)+2`
-/

namespace A043005.P4861220998845751111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A043004 (n + 1) - 1).toNat + 2

end

end A043005.P4861220998845751111

/-! ## A043005.P13912812635136883000

`∩[A014192(n+1), A016825(n)+1]`
-/

namespace A043005.P13912812635136883000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043005.P13912812635136883000

/-! ## A043005.P15799321619250642073

`∩[A014192(n+1), A047543(n+1)]`
-/

namespace A043005.P15799321619250642073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043005.P15799321619250642073

/-! ## A043005.P4971856055307939477

`∩[A014192(n+1), A055050(n+1)]`
-/

namespace A043005.P4971856055307939477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043005.P4971856055307939477

/-! ## A043005.P17618900081264924927

`∩[A014192(n+1), A154708(n+1)]`
-/

namespace A043005.P17618900081264924927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043005.P17618900081264924927

/-! ## A043005.P1461617042812552097

`∩[A014192(n+1), A016813(n)+2]`
-/

namespace A043005.P1461617042812552097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043005.P1461617042812552097

/-!
# A043006: Base-5 palindromes that start with 1.

The programs for A043006, there is no canonical definition to state claims against.
-/

/-! ## A043006.P66806422457291406

`5*A043050(n+1)-4`
-/

namespace A043006.P66806422457291406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A043050 (n + 1) - 4

end

end A043006.P66806422457291406

/-! ## A043006.P7244607323124548232

`2*A043007(n+1)-A043008(n+1)`
-/

namespace A043006.P7244607323124548232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043007 (n + 1) - A043008 (n + 1)

end

end A043006.P7244607323124548232

/-! ## A043006.P1081067954905146309

`(3*A043008(n+1))%A043009(n+1)`
-/

namespace A043006.P1081067954905146309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A043008 (n + 1)) (A043009 (n + 1))

end

end A043006.P1081067954905146309

/-! ## A043006.P3543194061844906677

`2*A043007(n+1)-(5*A043052(n+1)-2)`
-/

namespace A043006.P3543194061844906677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043007 (n + 1) - (5 * A043052 (n + 1) - 2)

end

end A043006.P3543194061844906677

/-! ## A043006.P3862916652039608922

`A043007(n+1)+A043008(n+1)-A043009(n+1)`
-/

namespace A043006.P3862916652039608922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043007 (n + 1) + (A043008 (n + 1) - A043009 (n + 1))

end

end A043006.P3862916652039608922

/-! ## A043006.P17736151749189382480

`∩[5*n+1, A029952(n+2)]`
-/

namespace A043006.P17736151749189382480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043006.P17736151749189382480

/-! ## A043006.P15989460569172844342

`A016861(A043050(n+1)-1)`
-/

namespace A043006.P15989460569172844342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A043050 (n + 1) - 1).toNat

end

end A043006.P15989460569172844342

/-! ## A043006.P14458699845389424078

`∩[A029952(n+1), A016861(n)]`
-/

namespace A043006.P14458699845389424078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043006.P14458699845389424078

/-! ## A043006.P6548248901580712141

`∩[A029952(n+1), A277550(n+1)]`
-/

namespace A043006.P6548248901580712141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043006.P6548248901580712141

/-! ## A043006.P13235561511095859645

`∩[A029952(n+1), A277597(n+1)]`
-/

namespace A043006.P13235561511095859645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043006.P13235561511095859645

/-! ## A043006.P15482399799718507809

`∩[A029952(n+1), A016873(n)-1]`
-/

namespace A043006.P15482399799718507809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043006.P15482399799718507809

/-! ## A043006.P9236068013721187098

`∩[A029952(n+1), A016885(n)-2]`
-/

namespace A043006.P9236068013721187098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043006.P9236068013721187098

/-!
# A043007: Base-5 palindromes that start with 2.

The programs for A043007, there is no canonical definition to state claims against.
-/

/-! ## A043007.P6125479512408159331

`5*A043051(n+1)-3`
-/

namespace A043007.P6125479512408159331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A043051 (n + 1) - 3

end

end A043007.P6125479512408159331

/-! ## A043007.P10771456921925632857

`2*A043008(n+1)-A043009(n+1)`
-/

namespace A043007.P10771456921925632857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043008 (n + 1) - A043009 (n + 1)

end

end A043007.P10771456921925632857

/-! ## A043007.P3954861126894197182

`(A043008(n+1)+A043006(n+1))/2`
-/

namespace A043007.P3954861126894197182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043008 (n + 1) + A043006 (n + 1) : ℚ) / 2

end

end A043007.P3954861126894197182

/-! ## A043007.P5718138842033231829

`3*A108086(gcd(n, n+1))+5*A043051(n+1)`
-/

namespace A043007.P5718138842033231829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108086 (Nat.gcd n (n + 1)) + 5 * A043051 (n + 1)

end

end A043007.P5718138842033231829

/-! ## A043007.P12136806338646867883

`A043006(n+1)+A043009(n+1)-A043008(n+1)`
-/

namespace A043007.P12136806338646867883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043006 (n + 1) + (A043009 (n + 1) - A043008 (n + 1))

end

end A043007.P12136806338646867883

/-! ## A043007.P8031285505645668906

`A008706(A043051(n+1))-3`
-/

namespace A043007.P8031285505645668906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A043051 (n + 1)).toNat - 3

end

end A043007.P8031285505645668906

/-! ## A043007.P13364364594097759462

`∩[A029952(n+1), A016873(n)]`
-/

namespace A043007.P13364364594097759462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043007.P13364364594097759462

/-! ## A043007.P3927418494615208020

`∩[A029952(n+1), A016861(n)+1]`
-/

namespace A043007.P3927418494615208020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043007.P3927418494615208020

/-! ## A043007.P7277557107937129932

`∩[A029952(n+1), A016885(n)-1]`
-/

namespace A043007.P7277557107937129932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043007.P7277557107937129932

/-! ## A043007.P17073433510439512600

`∩[A029952(n+1), A016897(n)-2]`
-/

namespace A043007.P17073433510439512600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043007.P17073433510439512600

/-! ## A043007.P17596256728950405170

`∩[A029952(n+1), A277598(n+1)]`
-/

namespace A043007.P17596256728950405170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043007.P17596256728950405170

/-! ## A043007.P16024133678143784894

`∩[A029952(n+1), A277551(n+1)]`
-/

namespace A043007.P16024133678143784894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043007.P16024133678143784894

/-!
# A043008: Base-5 palindromes that start with 3.

The programs for A043008, there is no canonical definition to state claims against.
-/

/-! ## A043008.P15737258333592938637

`5*A043052(n+1)-2`
-/

namespace A043008.P15737258333592938637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A043052 (n + 1) - 2

end

end A043008.P15737258333592938637

/-! ## A043008.P11875882037443372621

`2*A043007(n+1)-A043006(n+1)`
-/

namespace A043008.P11875882037443372621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043007 (n + 1) - A043006 (n + 1)

end

end A043008.P11875882037443372621

/-! ## A043008.P8644676985981611620

`(A043009(n+1)+A043007(n+1))/2`
-/

namespace A043008.P8644676985981611620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043009 (n + 1) + A043007 (n + 1) : ℚ) / 2

end

end A043008.P8644676985981611620

/-! ## A043008.P14695294919224020237

`2*A043007(n+1)-(5*A043050(n+1)-4)`
-/

namespace A043008.P14695294919224020237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043007 (n + 1) - (5 * A043050 (n + 1) - 4)

end

end A043008.P14695294919224020237

/-! ## A043008.P10821078362233593971

`A043006(n+1)+A043009(n+1)-A043007(n+1)`
-/

namespace A043008.P10821078362233593971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043006 (n + 1) + (A043009 (n + 1) - A043007 (n + 1))

end

end A043008.P10821078362233593971

/-! ## A043008.P12610358710977939687

`A016885(A043052(n+1)-1)`
-/

namespace A043008.P12610358710977939687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A043052 (n + 1) - 1).toNat

end

end A043008.P12610358710977939687

/-! ## A043008.P10792304551687515088

`∩[A029952(n+1), A016885(n)]`
-/

namespace A043008.P10792304551687515088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043008.P10792304551687515088

/-! ## A043008.P970363851568838694

`A016897(A043052(n+1)-1)-1`
-/

namespace A043008.P970363851568838694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A043052 (n + 1) - 1).toNat - 1

end

end A043008.P970363851568838694

/-! ## A043008.P6835784498377329981

`∩[A029952(n+1), A016873(n)+1]`
-/

namespace A043008.P6835784498377329981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043008.P6835784498377329981

/-! ## A043008.P3962383434140726059

`∩[A029952(n+1), A016861(n)+2]`
-/

namespace A043008.P3962383434140726059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043008.P3962383434140726059

/-!
# A043009: Base-5 palindromes that start with 4.

The programs for A043009, there is no canonical definition to state claims against.
-/

/-! ## A043009.P5922687929840285585

`5*A043053(n+1)-1`
-/

namespace A043009.P5922687929840285585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A043053 (n + 1) - 1

end

end A043009.P5922687929840285585

/-! ## A043009.P14470836162675111206

`2*A043008(n+1)-A043007(n+1)`
-/

namespace A043009.P14470836162675111206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043008 (n + 1) - A043007 (n + 1)

end

end A043009.P14470836162675111206

/-! ## A043009.P2150339599602555648

`A008683(A037126(n+1))+5*A043053(n+1)`
-/

namespace A043009.P2150339599602555648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A037126 (n + 1)).toNat + 5 * A043053 (n + 1)

end

end A043009.P2150339599602555648

/-! ## A043009.P9825844650896127680

`A008683(A064740(n+2))+5*A043053(n+1)`
-/

namespace A043009.P9825844650896127680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A064740 (n + 2)).toNat + 5 * A043053 (n + 1)

end

end A043009.P9825844650896127680

/-! ## A043009.P16420988075744468576

`A043007(n+1)+A043008(n+1)-A043006(n+1)`
-/

namespace A043009.P16420988075744468576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043007 (n + 1) + (A043008 (n + 1) - A043006 (n + 1))

end

end A043009.P16420988075744468576

/-! ## A043009.P10690699375904326484

`A008683(A161504(n+1))+5*A043053(n+1)`
-/

namespace A043009.P10690699375904326484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A161504 (n + 1)).toNat + 5 * A043053 (n + 1)

end

end A043009.P10690699375904326484

/-! ## A043009.P6137964644023439733

`A008706(A043053(n+1))-1`
-/

namespace A043009.P6137964644023439733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A043053 (n + 1)).toNat - 1

end

end A043009.P6137964644023439733

/-! ## A043009.P15515337250444798786

`A008854(3*A043053(n+1))`
-/

namespace A043009.P15515337250444798786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (3 * A043053 (n + 1)).toNat

end

end A043009.P15515337250444798786

/-! ## A043009.P7301945106961519209

`A032793(3*A043053(n+1))`
-/

namespace A043009.P7301945106961519209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (3 * A043053 (n + 1)).toNat

end

end A043009.P7301945106961519209

/-! ## A043009.P11294934990438677275

`A047202(3*A043053(n+1))`
-/

namespace A043009.P11294934990438677275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (3 * A043053 (n + 1)).toNat

end

end A043009.P11294934990438677275

/-!
# A043010: Base-6 palindromes that start with 1.

The programs for A043010, there is no canonical definition to state claims against.
-/

/-! ## A043010.P8175315027198479032

`6*A043054(n+1)-5`
-/

namespace A043010.P8175315027198479032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A043054 (n + 1) - 5

end

end A043010.P8175315027198479032

/-! ## A043010.P18075555281929456039

`2*A043011(n+1)-A043012(n+1)`
-/

namespace A043010.P18075555281929456039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043011 (n + 1) - A043012 (n + 1)

end

end A043010.P18075555281929456039

/-! ## A043010.P14226671405901837925

`2*A043012(n+1)-A043014(n+1)`
-/

namespace A043010.P14226671405901837925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043012 (n + 1) - A043014 (n + 1)

end

end A043010.P14226671405901837925

/-! ## A043010.P13023179005845305797

`(3*A043012(n+1))%A043013(n+1)`
-/

namespace A043010.P13023179005845305797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A043012 (n + 1)) (A043013 (n + 1))

end

end A043010.P13023179005845305797

/-! ## A043010.P11125288028367955096

`(4*A043013(n+1))%A043014(n+1)`
-/

namespace A043010.P11125288028367955096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A043013 (n + 1)) (A043014 (n + 1))

end

end A043010.P11125288028367955096

/-! ## A043010.P15840352891664564185

`A043011(n+1)+A043012(n+1)-A043013(n+1)`
-/

namespace A043010.P15840352891664564185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043011 (n + 1) + (A043012 (n + 1) - A043013 (n + 1))

end

end A043010.P15840352891664564185

/-! ## A043010.P4775825387477784202

`A043011(n+1)+A043013(n+1)-A043014(n+1)`
-/

namespace A043010.P4775825387477784202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043011 (n + 1) + (A043013 (n + 1) - A043014 (n + 1))

end

end A043010.P4775825387477784202

/-! ## A043010.P12084519670381609717

`A016921(A043054(n+1)-1)`
-/

namespace A043010.P12084519670381609717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A043054 (n + 1) - 1).toNat

end

end A043010.P12084519670381609717

/-! ## A043010.P9962083076001318543

`∩[A029953(n+1), A016921(n)]`
-/

namespace A043010.P9962083076001318543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043010.P9962083076001318543

/-! ## A043010.P13398151280711815980

`∩[A029953(n+1), A016933(n)-1]`
-/

namespace A043010.P13398151280711815980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043010.P13398151280711815980

/-! ## A043010.P6249374228838142419

`∩[A029953(n+1), A016945(n)-2]`
-/

namespace A043010.P6249374228838142419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043010.P6249374228838142419

/-! ## A043010.P7635702774922814497

`∩[A029953(n+1), A277567(n+1)]`
-/

namespace A043010.P7635702774922814497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043010.P7635702774922814497

/-!
# A043011: Base-6 palindromes that start with 2.

The programs for A043011, there is no canonical definition to state claims against.
-/

/-! ## A043011.P16169714320948477210

`6*A043055(n+1)-4`
-/

namespace A043011.P16169714320948477210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A043055 (n + 1) - 4

end

end A043011.P16169714320948477210

/-! ## A043011.P2576447494786179571

`2*A043012(n+1)-A043013(n+1)`
-/

namespace A043011.P2576447494786179571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043012 (n + 1) - A043013 (n + 1)

end

end A043011.P2576447494786179571

/-! ## A043011.P14138167828678717224

`(A043012(n+1)+A043010(n+1))/2`
-/

namespace A043011.P14138167828678717224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043012 (n + 1) + A043010 (n + 1) : ℚ) / 2

end

end A043011.P14138167828678717224

/-! ## A043011.P8147341324698980848

`A043010(n+1)+A043013(n+1)-A043012(n+1)`
-/

namespace A043011.P8147341324698980848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043010 (n + 1) + (A043013 (n + 1) - A043012 (n + 1))

end

end A043011.P8147341324698980848

/-! ## A043011.P3312402308262680283

`A043010(n+1)+A043014(n+1)-A043013(n+1)`
-/

namespace A043011.P3312402308262680283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043010 (n + 1) + (A043014 (n + 1) - A043013 (n + 1))

end

end A043011.P3312402308262680283

/-! ## A043011.P18209020875929157749

`A043012(n+1)+A043013(n+1)-A043014(n+1)`
-/

namespace A043011.P18209020875929157749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043012 (n + 1) + (A043013 (n + 1) - A043014 (n + 1))

end

end A043011.P18209020875929157749

/-! ## A043011.P5003303739487767029

`A008458(A043055(n+1))-4`
-/

namespace A043011.P5003303739487767029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A043055 (n + 1)).toNat - 4

end

end A043011.P5003303739487767029

/-! ## A043011.P14226825818902697968

`∩[A029953(n+1), A016933(n)]`
-/

namespace A043011.P14226825818902697968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043011.P14226825818902697968

/-! ## A043011.P3045619055960486052

`∩[A029953(n+1), A016921(n)+1]`
-/

namespace A043011.P3045619055960486052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043011.P3045619055960486052

/-! ## A043011.P15504691604914175518

`∩[A029953(n+1), A213638(n+1)]`
-/

namespace A043011.P15504691604914175518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043011.P15504691604914175518

/-!
# A043012: Base-6 palindromes that start with 3.

The programs for A043012, there is no canonical definition to state claims against.
-/

/-! ## A043012.P3032647897699015067

`6*A043056(n+1)-3`
-/

namespace A043012.P3032647897699015067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A043056 (n + 1) - 3

end

end A043012.P3032647897699015067

/-! ## A043012.P8149343523621949312

`2*A043011(n+1)-A043010(n+1)`
-/

namespace A043012.P8149343523621949312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043011 (n + 1) - A043010 (n + 1)

end

end A043012.P8149343523621949312

/-! ## A043012.P730114522345635500

`2*A043013(n+1)-A043014(n+1)`
-/

namespace A043012.P730114522345635500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043013 (n + 1) - A043014 (n + 1)

end

end A043012.P730114522345635500

/-! ## A043012.P13714411949651558763

`(A043013(n+1)+A043011(n+1))/2`
-/

namespace A043012.P13714411949651558763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043013 (n + 1) + A043011 (n + 1) : ℚ) / 2

end

end A043012.P13714411949651558763

/-! ## A043012.P3266681045021463559

`(A043014(n+1)+A043010(n+1))/2`
-/

namespace A043012.P3266681045021463559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043014 (n + 1) + A043010 (n + 1) : ℚ) / 2

end

end A043012.P3266681045021463559

/-! ## A043012.P3743557889192018494

`A043010(n+1)+A043013(n+1)-A043011(n+1)`
-/

namespace A043012.P3743557889192018494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043010 (n + 1) + (A043013 (n + 1) - A043011 (n + 1))

end

end A043012.P3743557889192018494

/-! ## A043012.P16682763079603625977

`A043011(n+1)+A043014(n+1)-A043013(n+1)`
-/

namespace A043012.P16682763079603625977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043011 (n + 1) + (A043014 (n + 1) - A043013 (n + 1))

end

end A043012.P16682763079603625977

/-! ## A043012.P13316701124958917653

`A016945(A043056(n+1)-1)`
-/

namespace A043012.P13316701124958917653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A043056 (n + 1) - 1).toNat

end

end A043012.P13316701124958917653

/-! ## A043012.P18218008905803819036

`A269379(2*A043056(n+1))`
-/

namespace A043012.P18218008905803819036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (2 * A043056 (n + 1)).toNat

end

end A043012.P18218008905803819036

/-! ## A043012.P7154566355093592313

`∩[A029953(n+1), A016945(n)]`
-/

namespace A043012.P7154566355093592313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043012.P7154566355093592313

/-!
# A043013: Base-6 palindromes that start with 4.

The programs for A043013, there is no canonical definition to state claims against.
-/

/-! ## A043013.P6020142861860201156

`6*A043057(n+1)-2`
-/

namespace A043013.P6020142861860201156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A043057 (n + 1) - 2

end

end A043013.P6020142861860201156

/-! ## A043013.P3882490664985885630

`2*A043012(n+1)-A043011(n+1)`
-/

namespace A043013.P3882490664985885630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043012 (n + 1) - A043011 (n + 1)

end

end A043013.P3882490664985885630

/-! ## A043013.P6585451030538014701

`(A043014(n+1)+A043012(n+1))/2`
-/

namespace A043013.P6585451030538014701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043014 (n + 1) + A043012 (n + 1) : ℚ) / 2

end

end A043013.P6585451030538014701

/-! ## A043013.P6340107081297112558

`A061347(A124518(n+1))+6*A043057(n+1)`
-/

namespace A043013.P6340107081297112558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A124518 (n + 1)).toNat + 6 * A043057 (n + 1)

end

end A043013.P6340107081297112558

/-! ## A043013.P16490468538664314932

`A061347(A124520(n+1))+6*A043057(n+1)`
-/

namespace A043013.P16490468538664314932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A124520 (n + 1)).toNat + 6 * A043057 (n + 1)

end

end A043013.P16490468538664314932

/-! ## A043013.P16322652402937397500

`A061347(A124065(n+1))+6*A043057(n+1)`
-/

namespace A043013.P16322652402937397500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A124065 (n + 1)).toNat + 6 * A043057 (n + 1)

end

end A043013.P16322652402937397500

/-! ## A043013.P303138072505079707

`A061347(A124521(n+1))+6*A043057(n+1)`
-/

namespace A043013.P303138072505079707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A124521 (n + 1)).toNat + 6 * A043057 (n + 1)

end

end A043013.P303138072505079707

/-! ## A043013.P10010499583207824385

`A008458(A043057(n+1))-2`
-/

namespace A043013.P10010499583207824385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A043057 (n + 1)).toNat - 2

end

end A043013.P10010499583207824385

/-! ## A043013.P13550849596340233169

`∩[A029953(n+1), A016957(n)]`
-/

namespace A043013.P13550849596340233169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043013.P13550849596340233169

/-! ## A043013.P13503399582904026213

`∩[A029953(n+1), A016945(n)+1]`
-/

namespace A043013.P13503399582904026213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043013.P13503399582904026213

/-!
# A043014: Base-6 palindromes that start with 5.

The programs for A043014, there is no canonical definition to state claims against.
-/

/-! ## A043014.P8399521233405947748

`6*A043058(n+1)-1`
-/

namespace A043014.P8399521233405947748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A043058 (n + 1) - 1

end

end A043014.P8399521233405947748

/-! ## A043014.P14003161514528887040

`2*A043012(n+1)-A043010(n+1)`
-/

namespace A043014.P14003161514528887040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043012 (n + 1) - A043010 (n + 1)

end

end A043014.P14003161514528887040

/-! ## A043014.P932149579639091014

`2*A043013(n+1)-A043012(n+1)`
-/

namespace A043014.P932149579639091014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043013 (n + 1) - A043012 (n + 1)

end

end A043014.P932149579639091014

/-! ## A043014.P6211798747420444340

`A008683(A007918(n))+6*A043058(n+1)`
-/

namespace A043014.P6211798747420444340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 6 * A043058 (n + 1)

end

end A043014.P6211798747420444340

/-! ## A043014.P1533604394370292336

`A008683(A218255(n))+6*A043058(n+1)`
-/

namespace A043014.P1533604394370292336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A218255 n).toNat + 6 * A043058 (n + 1)

end

end A043014.P1533604394370292336

/-! ## A043014.P2444458700365895397

`A043011(n+1)+A043013(n+1)-A043010(n+1)`
-/

namespace A043014.P2444458700365895397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043011 (n + 1) + (A043013 (n + 1) - A043010 (n + 1))

end

end A043014.P2444458700365895397

/-! ## A043014.P10627996958690776974

`A043012(n+1)+A043013(n+1)-A043011(n+1)`
-/

namespace A043014.P10627996958690776974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043012 (n + 1) + (A043013 (n + 1) - A043011 (n + 1))

end

end A043014.P10627996958690776974

/-! ## A043014.P5138103526535630283

`A008683(A078494(n+1))+6*A043058(n+1)`
-/

namespace A043014.P5138103526535630283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A078494 (n + 1)).toNat + 6 * A043058 (n + 1)

end

end A043014.P5138103526535630283

/-! ## A043014.P7798475894890006470

`A008683(A006450(n+1))+6*A043058(n+1)`
-/

namespace A043014.P7798475894890006470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006450 (n + 1)).toNat + 6 * A043058 (n + 1)

end

end A043014.P7798475894890006470

/-! ## A043014.P4065876175111449405

`A008458(A043058(n+1))-1`
-/

namespace A043014.P4065876175111449405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A043058 (n + 1)).toNat - 1

end

end A043014.P4065876175111449405

/-!
# A043015: Base-7 palindromes that start with 1.

The programs for A043015, there is no canonical definition to state claims against.
-/

/-! ## A043015.P15016230971850019829

`7*A043059(n+1)-6`
-/

namespace A043015.P15016230971850019829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A043059 (n + 1) - 6

end

end A043015.P15016230971850019829

/-! ## A043015.P6375369673406141108

`2*A043016(n+1)-A043017(n+1)`
-/

namespace A043015.P6375369673406141108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043016 (n + 1) - A043017 (n + 1)

end

end A043015.P6375369673406141108

/-! ## A043015.P5999591918153799577

`2*A043017(n+1)-A043019(n+1)`
-/

namespace A043015.P5999591918153799577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043017 (n + 1) - A043019 (n + 1)

end

end A043015.P5999591918153799577

/-! ## A043015.P5135928437308584214

`(4*A043018(n+1))%A043019(n+1)`
-/

namespace A043015.P5135928437308584214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A043018 (n + 1)) (A043019 (n + 1))

end

end A043015.P5135928437308584214

/-! ## A043015.P16593323793413014133

`A043016(n+1)+A043017(n+1)-A043018(n+1)`
-/

namespace A043015.P16593323793413014133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043016 (n + 1) + (A043017 (n + 1) - A043018 (n + 1))

end

end A043015.P16593323793413014133

/-! ## A043015.P16463512949068353523

`A043016(n+1)+A043018(n+1)-A043019(n+1)`
-/

namespace A043015.P16463512949068353523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043016 (n + 1) + (A043018 (n + 1) - A043019 (n + 1))

end

end A043015.P16463512949068353523

/-! ## A043015.P18134672007100545948

`A043017(n+1)+A043018(n+1)-A043020(n+1)`
-/

namespace A043015.P18134672007100545948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043017 (n + 1) + (A043018 (n + 1) - A043020 (n + 1))

end

end A043015.P18134672007100545948

/-! ## A043015.P16208623501556096581

`∩[7*n+1, A029954(n+2)]`
-/

namespace A043015.P16208623501556096581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043015.P16208623501556096581

/-! ## A043015.P11343616512479726732

`A016993(A043059(n+1)-1)`
-/

namespace A043015.P11343616512479726732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043059 (n + 1) - 1).toNat

end

end A043015.P11343616512479726732

/-! ## A043015.P2231455880856129588

`∩[A029954(n+1), A016993(n)]`
-/

namespace A043015.P2231455880856129588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043015.P2231455880856129588

/-! ## A043015.P16204161240473225999

`∩[A029954(n+1), A017005(n)-1]`
-/

namespace A043015.P16204161240473225999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043015.P16204161240473225999

/-! ## A043015.P13000821493970309089

`∩[A029954(n+1), A017017(n)-2]`
-/

namespace A043015.P13000821493970309089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043015.P13000821493970309089

/-! ## A043015.P14683736827319268624

`A043016(n+1)-A014682(A043018(n+1)-A043016(n+1))`
-/

namespace A043015.P14683736827319268624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043016 (n + 1) - A014682 (A043018 (n + 1) - A043016 (n + 1)).toNat

end

end A043015.P14683736827319268624

/-!
# A043016: Base-7 palindromes that start with 2.

The programs for A043016, there is no canonical definition to state claims against.
-/

/-! ## A043016.P10503211941296561168

`7*A043060(n+1)-5`
-/

namespace A043016.P10503211941296561168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A043060 (n + 1) - 5

end

end A043016.P10503211941296561168

/-! ## A043016.P4404461934895460869

`2*A043017(n+1)-A043018(n+1)`
-/

namespace A043016.P4404461934895460869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043017 (n + 1) - A043018 (n + 1)

end

end A043016.P4404461934895460869

/-! ## A043016.P10045917837636812372

`2*A043018(n+1)-A043020(n+1)`
-/

namespace A043016.P10045917837636812372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043018 (n + 1) - A043020 (n + 1)

end

end A043016.P10045917837636812372

/-! ## A043016.P5017509616300594548

`(A043017(n+1)+A043015(n+1))/2`
-/

namespace A043016.P5017509616300594548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043017 (n + 1) + A043015 (n + 1) : ℚ) / 2

end

end A043016.P5017509616300594548

/-! ## A043016.P14480659372981754495

`A043015(n+1)+A043018(n+1)-A043017(n+1)`
-/

namespace A043016.P14480659372981754495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043015 (n + 1) + (A043018 (n + 1) - A043017 (n + 1))

end

end A043016.P14480659372981754495

/-! ## A043016.P16175768026465951894

`A043015(n+1)+A043020(n+1)-A043019(n+1)`
-/

namespace A043016.P16175768026465951894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043015 (n + 1) + (A043020 (n + 1) - A043019 (n + 1))

end

end A043016.P16175768026465951894

/-! ## A043016.P16739684876287061383

`A043017(n+1)+A043018(n+1)-A043019(n+1)`
-/

namespace A043016.P16739684876287061383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043017 (n + 1) + (A043018 (n + 1) - A043019 (n + 1))

end

end A043016.P16739684876287061383

/-! ## A043016.P12186498152382616014

`A017005(A043060(n+1)-1)`
-/

namespace A043016.P12186498152382616014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (A043060 (n + 1) - 1).toNat

end

end A043016.P12186498152382616014

/-! ## A043016.P17144981551159629807

`∩[A029954(n+1), A017005(n)]`
-/

namespace A043016.P17144981551159629807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043016.P17144981551159629807

/-! ## A043016.P1925758289456398720

`∩[A029954(n+1), A016993(n)+1]`
-/

namespace A043016.P1925758289456398720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043016.P1925758289456398720

/-! ## A043016.P1368305080056131267

`∩[A029954(n+1), A017017(n)-1]`
-/

namespace A043016.P1368305080056131267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043016.P1368305080056131267

/-! ## A043016.P13599817140686492519

`∩[A029954(n+1), A017029(n)-2]`
-/

namespace A043016.P13599817140686492519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043016.P13599817140686492519

/-! ## A043016.P3784469393864206496

`A043015(n+1)+A014682(A043017(n+1)-A043015(n+1))`
-/

namespace A043016.P3784469393864206496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043015 (n + 1) + A014682 (A043017 (n + 1) - A043015 (n + 1)).toNat

end

end A043016.P3784469393864206496

/-! ## A043016.P13729734169628722073

`A043017(n+1)-A014682(A043019(n+1)-A043017(n+1))`
-/

namespace A043016.P13729734169628722073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043017 (n + 1) - A014682 (A043019 (n + 1) - A043017 (n + 1)).toNat

end

end A043016.P13729734169628722073

/-! ## A043016.P8758675199404438871

`A014682(A043017(n+1)+A043015(n+1))`
-/

namespace A043016.P8758675199404438871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043017 (n + 1) + A043015 (n + 1)).toNat

end

end A043016.P8758675199404438871

/-!
# A043017: Base-7 palindromes that start with 3.

The programs for A043017, there is no canonical definition to state claims against.
-/

/-! ## A043017.P3188071992162082101

`7*A043061(n+1)-4`
-/

namespace A043017.P3188071992162082101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A043061 (n + 1) - 4

end

end A043017.P3188071992162082101

/-! ## A043017.P5899754666186229504

`2*A043016(n+1)-A043015(n+1)`
-/

namespace A043017.P5899754666186229504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043016 (n + 1) - A043015 (n + 1)

end

end A043017.P5899754666186229504

/-! ## A043017.P11134676694954964426

`2*A043018(n+1)-A043019(n+1)`
-/

namespace A043017.P11134676694954964426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043018 (n + 1) - A043019 (n + 1)

end

end A043017.P11134676694954964426

/-! ## A043017.P10551917823844341754

`(A043018(n+1)+A043016(n+1))/2`
-/

namespace A043017.P10551917823844341754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043018 (n + 1) + A043016 (n + 1) : ℚ) / 2

end

end A043017.P10551917823844341754

/-! ## A043017.P452025136561728042

`(A043019(n+1)+A043015(n+1))/2`
-/

namespace A043017.P452025136561728042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043019 (n + 1) + A043015 (n + 1) : ℚ) / 2

end

end A043017.P452025136561728042

/-! ## A043017.P2744336929755688123

`A043015(n+1)+A043018(n+1)-A043016(n+1)`
-/

namespace A043017.P2744336929755688123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043015 (n + 1) + (A043018 (n + 1) - A043016 (n + 1))

end

end A043017.P2744336929755688123

/-! ## A043017.P6143487765942857592

`A043016(n+1)+A043019(n+1)-A043018(n+1)`
-/

namespace A043017.P6143487765942857592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043016 (n + 1) + (A043019 (n + 1) - A043018 (n + 1))

end

end A043017.P6143487765942857592

/-! ## A043017.P2456861343177224049

`A017017(A043061(n+1)-1)`
-/

namespace A043017.P2456861343177224049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (A043061 (n + 1) - 1).toNat

end

end A043017.P2456861343177224049

/-! ## A043017.P2908971408610081029

`∩[A029954(n+1), A017017(n)]`
-/

namespace A043017.P2908971408610081029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043017.P2908971408610081029

/-! ## A043017.P10728442854140531861

`∩[A029954(n+1), A017005(n)+1]`
-/

namespace A043017.P10728442854140531861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043017.P10728442854140531861

/-! ## A043017.P17742771165942934184

`∩[A029954(n+1), A016993(n)+2]`
-/

namespace A043017.P17742771165942934184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043017.P17742771165942934184

/-! ## A043017.P770768306517774303

`∩[A029954(n+1), A017029(n)-1]`
-/

namespace A043017.P770768306517774303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043017.P770768306517774303

/-! ## A043017.P1759223121890924574

`∩[A029954(n+1), A017041(n)-2]`
-/

namespace A043017.P1759223121890924574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043017.P1759223121890924574

/-! ## A043017.P1790168039827924689

`A043015(n+1)+A014682(A043019(n+1)-A043015(n+1))`
-/

namespace A043017.P1790168039827924689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043015 (n + 1) + A014682 (A043019 (n + 1) - A043015 (n + 1)).toNat

end

end A043017.P1790168039827924689

/-! ## A043017.P15999154318611889336

`A043016(n+1)+A014682(A043018(n+1)-A043016(n+1))`
-/

namespace A043017.P15999154318611889336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043016 (n + 1) + A014682 (A043018 (n + 1) - A043016 (n + 1)).toNat

end

end A043017.P15999154318611889336

/-!
# A043018: Base-7 palindromes that start with 4.

The programs for A043018, there is no canonical definition to state claims against.
-/

/-! ## A043018.P2170133283695068569

`7*A043062(n+1)-3`
-/

namespace A043018.P2170133283695068569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A043062 (n + 1) - 3

end

end A043018.P2170133283695068569

/-! ## A043018.P3171968886215622171

`2*A043017(n+1)-A043016(n+1)`
-/

namespace A043018.P3171968886215622171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043017 (n + 1) - A043016 (n + 1)

end

end A043018.P3171968886215622171

/-! ## A043018.P8218025547928808104

`2*A043019(n+1)-A043020(n+1)`
-/

namespace A043018.P8218025547928808104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043019 (n + 1) - A043020 (n + 1)

end

end A043018.P8218025547928808104

/-! ## A043018.P13545264047293667668

`(A043019(n+1)+A043017(n+1))/2`
-/

namespace A043018.P13545264047293667668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043019 (n + 1) + A043017 (n + 1) : ℚ) / 2

end

end A043018.P13545264047293667668

/-! ## A043018.P13259296293398876186

`(A043020(n+1)+A043016(n+1))/2`
-/

namespace A043018.P13259296293398876186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043020 (n + 1) + A043016 (n + 1) : ℚ) / 2

end

end A043018.P13259296293398876186

/-! ## A043018.P6485492427585741196

`A043016(n+1)+A043017(n+1)-A043015(n+1)`
-/

namespace A043018.P6485492427585741196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043016 (n + 1) + (A043017 (n + 1) - A043015 (n + 1))

end

end A043018.P6485492427585741196

/-! ## A043018.P11057914821223427042

`A043017(n+1)+A014682(A043017(n+1)-A043015(n+1))`
-/

namespace A043018.P11057914821223427042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043017 (n + 1) + A014682 (A043017 (n + 1) - A043015 (n + 1)).toNat

end

end A043018.P11057914821223427042

/-! ## A043018.P8320884649420821819

`A043017(n+1)+A014682(A043019(n+1)-A043017(n+1))`
-/

namespace A043018.P8320884649420821819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043017 (n + 1) + A014682 (A043019 (n + 1) - A043017 (n + 1)).toNat

end

end A043018.P8320884649420821819

/-! ## A043018.P9219650573511996639

`A017029(A043062(n+1)-1)`
-/

namespace A043018.P9219650573511996639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (A043062 (n + 1) - 1).toNat

end

end A043018.P9219650573511996639

/-! ## A043018.P10963150832584936593

`∩[A029954(n+1), A017029(n)]`
-/

namespace A043018.P10963150832584936593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043018.P10963150832584936593

/-!
# A043019: Base-7 palindromes that start with 5.

The programs for A043019, there is no canonical definition to state claims against.
-/

/-! ## A043019.P10420097280045897698

`7*A043063(n+1)-2`
-/

namespace A043019.P10420097280045897698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A043063 (n + 1) - 2

end

end A043019.P10420097280045897698

/-! ## A043019.P8725248736092321418

`2*A043017(n+1)-A043015(n+1)`
-/

namespace A043019.P8725248736092321418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043017 (n + 1) - A043015 (n + 1)

end

end A043019.P8725248736092321418

/-! ## A043019.P12726591546482424422

`2*A043018(n+1)-A043017(n+1)`
-/

namespace A043019.P12726591546482424422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043018 (n + 1) - A043017 (n + 1)

end

end A043019.P12726591546482424422

/-! ## A043019.P7921359679453276742

`(A043020(n+1)+A043018(n+1))/2`
-/

namespace A043019.P7921359679453276742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043020 (n + 1) + A043018 (n + 1) : ℚ) / 2

end

end A043019.P7921359679453276742

/-! ## A043019.P1525246616568509545

`A043015(n+1)+A043020(n+1)-A043016(n+1)`
-/

namespace A043019.P1525246616568509545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043015 (n + 1) + (A043020 (n + 1) - A043016 (n + 1))

end

end A043019.P1525246616568509545

/-! ## A043019.P6390450401998064083

`A043016(n+1)+A043018(n+1)-A043015(n+1)`
-/

namespace A043019.P6390450401998064083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043016 (n + 1) + (A043018 (n + 1) - A043015 (n + 1))

end

end A043019.P6390450401998064083

/-! ## A043019.P16776850739441489368

`A043017(n+1)+A043018(n+1)-A043016(n+1)`
-/

namespace A043019.P16776850739441489368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043017 (n + 1) + (A043018 (n + 1) - A043016 (n + 1))

end

end A043019.P16776850739441489368

/-! ## A043019.P16690642374599324467

`A043017(n+1)+A043020(n+1)-A043018(n+1)`
-/

namespace A043019.P16690642374599324467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043017 (n + 1) + (A043020 (n + 1) - A043018 (n + 1))

end

end A043019.P16690642374599324467

/-! ## A043019.P948544155367178107

`A043018(n+1)+A014682(A043018(n+1)-A043016(n+1))`
-/

namespace A043019.P948544155367178107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043018 (n + 1) + A014682 (A043018 (n + 1) - A043016 (n + 1)).toNat

end

end A043019.P948544155367178107

/-! ## A043019.P14949713192913910558

`2*A033999(A268581(n))+7*A043063(n+1)`
-/

namespace A043019.P14949713192913910558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033999 (A268581 n).toNat + 7 * A043063 (n + 1)

end

end A043019.P14949713192913910558

/-!
# A043020: Base-7 palindromes that start with 6.

The programs for A043020, there is no canonical definition to state claims against.
-/

/-! ## A043020.P15369429503044846625

`7*A043064(n+1)-1`
-/

namespace A043020.P15369429503044846625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A043064 (n + 1) - 1

end

end A043020.P15369429503044846625

/-! ## A043020.P3875542425793960684

`2*A043018(n+1)-A043016(n+1)`
-/

namespace A043020.P3875542425793960684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043018 (n + 1) - A043016 (n + 1)

end

end A043020.P3875542425793960684

/-! ## A043020.P7209314166423295620

`2*A043019(n+1)-A043018(n+1)`
-/

namespace A043020.P7209314166423295620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043019 (n + 1) - A043018 (n + 1)

end

end A043020.P7209314166423295620

/-! ## A043020.P10583363411310125227

`A043017(n+1)+A043018(n+1)-A043015(n+1)`
-/

namespace A043020.P10583363411310125227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043017 (n + 1) + (A043018 (n + 1) - A043015 (n + 1))

end

end A043020.P10583363411310125227

/-! ## A043020.P5779221723640594494

`A043018(n+1)+A043019(n+1)-A043017(n+1)`
-/

namespace A043020.P5779221723640594494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043018 (n + 1) + (A043019 (n + 1) - A043017 (n + 1))

end

end A043020.P5779221723640594494

/-! ## A043020.P13162127183445921829

`A043019(n+1)+A014682(A043019(n+1)-A043017(n+1))`
-/

namespace A043020.P13162127183445921829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043019 (n + 1) + A014682 (A043019 (n + 1) - A043017 (n + 1)).toNat

end

end A043020.P13162127183445921829

/-! ## A043020.P8825448646571383114

`A017053(A043064(n+1)-1)`
-/

namespace A043020.P8825448646571383114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A043064 (n + 1) - 1).toNat

end

end A043020.P8825448646571383114

/-! ## A043020.P6929938773310007094

`A047276(2*A043064(n+1))`
-/

namespace A043020.P6929938773310007094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047276 (2 * A043064 (n + 1)).toNat

end

end A043020.P6929938773310007094

/-! ## A043020.P9011594756348601318

`A017029(A043064(n+1)-1)+2`
-/

namespace A043020.P9011594756348601318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (A043064 (n + 1) - 1).toNat + 2

end

end A043020.P9011594756348601318

/-! ## A043020.P11460189196409251190

`A043018(n+1)+A005843(A043018(n+1)-A043017(n+1))`
-/

namespace A043020.P11460189196409251190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043018 (n + 1) + A005843 (A043018 (n + 1) - A043017 (n + 1)).toNat

end

end A043020.P11460189196409251190

/-!
# A043021: Base-8 palindromes that start with 1.

The programs for A043021, there is no canonical definition to state claims against.
-/

/-! ## A043021.P11390033624180631970

`and(A043023(n+1), A043025(n+1))`
-/

namespace A043021.P11390033624180631970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043023 (n + 1)) (A043025 (n + 1))

end

end A043021.P11390033624180631970

/-! ## A043021.P8505182063275178343

`2*A043022(n+1)-A043023(n+1)`
-/

namespace A043021.P8505182063275178343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043022 (n + 1) - A043023 (n + 1)

end

end A043021.P8505182063275178343

/-! ## A043021.P8372543098069174370

`2*A043024(n+1)-A043027(n+1)`
-/

namespace A043021.P8372543098069174370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043024 (n + 1) - A043027 (n + 1)

end

end A043021.P8372543098069174370

/-! ## A043021.P15102249402415371595

`A043022(n+1)+A043023(n+1)-A043024(n+1)`
-/

namespace A043021.P15102249402415371595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043022 (n + 1) + (A043023 (n + 1) - A043024 (n + 1))

end

end A043021.P15102249402415371595

/-! ## A043021.P2857551723411302096

`A043022(n+1)+A043024(n+1)-A043025(n+1)`
-/

namespace A043021.P2857551723411302096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043022 (n + 1) + (A043024 (n + 1) - A043025 (n + 1))

end

end A043021.P2857551723411302096

/-! ## A043021.P9315731849039657953

`∩[8*n+1, A029803(n+2)]`
-/

namespace A043021.P9315731849039657953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043021.P9315731849039657953

/-! ## A043021.P8699360150971178167

`A017077(A043065(n+1)-1)`
-/

namespace A043021.P8699360150971178167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A043065 (n + 1) - 1).toNat

end

end A043021.P8699360150971178167

/-! ## A043021.P8321248337841371771

`∩[A029803(n+1), A017077(n)]`
-/

namespace A043021.P8321248337841371771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043021.P8321248337841371771

/-! ## A043021.P14221987055800740461

`∩[A029803(n+1), A017089(n)-1]`
-/

namespace A043021.P14221987055800740461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043021.P14221987055800740461

/-! ## A043021.P1418543090712915259

`∩[A029803(n+1), A017101(n)-2]`
-/

namespace A043021.P1418543090712915259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043021.P1418543090712915259

/-!
# A043022: Base-8 palindromes that start with 2.

The programs for A043022, there is no canonical definition to state claims against.
-/

/-! ## A043022.P9090067772247381532

`8*A043066(n+1)-6`
-/

namespace A043022.P9090067772247381532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A043066 (n + 1) - 6

end

end A043022.P9090067772247381532

/-! ## A043022.P7892950963758411883

`and(A043023(n+1), A043026(n+1))`
-/

namespace A043022.P7892950963758411883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043023 (n + 1)) (A043026 (n + 1))

end

end A043022.P7892950963758411883

/-! ## A043022.P14368406301371843370

`2*A043023(n+1)-A043024(n+1)`
-/

namespace A043022.P14368406301371843370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043023 (n + 1) - A043024 (n + 1)

end

end A043022.P14368406301371843370

/-! ## A043022.P6430363047693968232

`2*A043024(n+1)-A043026(n+1)`
-/

namespace A043022.P6430363047693968232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043024 (n + 1) - A043026 (n + 1)

end

end A043022.P6430363047693968232

/-! ## A043022.P9644873488869969976

`(A043023(n+1)+A043021(n+1))/2`
-/

namespace A043022.P9644873488869969976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043023 (n + 1) + A043021 (n + 1) : ℚ) / 2

end

end A043022.P9644873488869969976

/-! ## A043022.P16858992516769002595

`A043023(n+1)+A043024(n+1)-A043025(n+1)`
-/

namespace A043022.P16858992516769002595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043023 (n + 1) + (A043024 (n + 1) - A043025 (n + 1))

end

end A043022.P16858992516769002595

/-! ## A043022.P1504877994690315879

`A043024(n+1)+A043025(n+1)-A043027(n+1)`
-/

namespace A043022.P1504877994690315879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043024 (n + 1) + (A043025 (n + 1) - A043027 (n + 1))

end

end A043022.P1504877994690315879

/-! ## A043022.P8265063821501794777

`xor(A043024(n+1)-A043021(n+1), A043021(n+1))`
-/

namespace A043022.P8265063821501794777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043024 (n + 1) - A043021 (n + 1)) (A043021 (n + 1))

end

end A043022.P8265063821501794777

/-! ## A043022.P10142788041192503663

`A043021(n+1)+A014682(A043023(n+1)-A043021(n+1))`
-/

namespace A043022.P10142788041192503663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043021 (n + 1) + A014682 (A043023 (n + 1) - A043021 (n + 1)).toNat

end

end A043022.P10142788041192503663

/-! ## A043022.P17091996740747340407

`A017089(A043066(n+1)-1)`
-/

namespace A043022.P17091996740747340407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A043066 (n + 1) - 1).toNat

end

end A043022.P17091996740747340407

/-! ## A043022.P6612214141858223288

`∩[A029803(n+1), A017089(n)]`
-/

namespace A043022.P6612214141858223288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043022.P6612214141858223288

/-! ## A043022.P276627625032173111

`∩[A029803(n+1), A017077(n)+1]`
-/

namespace A043022.P276627625032173111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043022.P276627625032173111

/-! ## A043022.P6856278002583350540

`∩[A029803(n+1), A017101(n)-1]`
-/

namespace A043022.P6856278002583350540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043022.P6856278002583350540

/-!
# A043023: Base 8 palindromes that start with 3.

The programs for A043023, there is no canonical definition to state claims against.
-/

/-! ## A043023.P17221970315151756569

`or(A043021(n+1), A043022(n+1))`
-/

namespace A043023.P17221970315151756569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043021 (n + 1)) (A043022 (n + 1))

end

end A043023.P17221970315151756569

/-! ## A043023.P16150694052811202698

`2*A043024(n+1)-A043025(n+1)`
-/

namespace A043023.P16150694052811202698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043024 (n + 1) - A043025 (n + 1)

end

end A043023.P16150694052811202698

/-! ## A043023.P17557498278405400755

`2*A043025(n+1)-A043027(n+1)`
-/

namespace A043023.P17557498278405400755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043025 (n + 1) - A043027 (n + 1)

end

end A043023.P17557498278405400755

/-! ## A043023.P453916637789579739

`(A043024(n+1)+A043022(n+1))/2`
-/

namespace A043023.P453916637789579739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043024 (n + 1) + A043022 (n + 1) : ℚ) / 2

end

end A043023.P453916637789579739

/-! ## A043023.P8687529654555694353

`A043022(n+1)+A043025(n+1)-A043024(n+1)`
-/

namespace A043023.P8687529654555694353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043022 (n + 1) + (A043025 (n + 1) - A043024 (n + 1))

end

end A043023.P8687529654555694353

/-! ## A043023.P13471211553488769398

`or(A043024(n+1)-A043021(n+1), A043021(n+1))`
-/

namespace A043023.P13471211553488769398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043024 (n + 1) - A043021 (n + 1)) (A043021 (n + 1))

end

end A043023.P13471211553488769398

/-! ## A043023.P2164322514070767214

`A043024(n+1)-A000265(A043026(n+1)-A043024(n+1))`
-/

namespace A043023.P2164322514070767214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043024 (n + 1) - A000265 (A043026 (n + 1) - A043024 (n + 1)).toNat

end

end A043023.P2164322514070767214

/-! ## A043023.P5474323248795060660

`A017101(A043067(n+1)-1)`
-/

namespace A043023.P5474323248795060660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A043067 (n + 1) - 1).toNat

end

end A043023.P5474323248795060660

/-! ## A043023.P9641719096286989232

`A047470(2*A043067(n+1))`
-/

namespace A043023.P9641719096286989232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (2 * A043067 (n + 1)).toNat

end

end A043023.P9641719096286989232

/-! ## A043023.P9947191326825030189

`or(1, A063946(A043022(n+1)))`
-/

namespace A043023.P9947191326825030189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063946 (A043022 (n + 1)).toNat)

end

end A043023.P9947191326825030189

/-!
# A043024: Base-8 palindromes that start with 4.

The programs for A043024, there is no canonical definition to state claims against.
-/

/-! ## A043024.P16300260068776634109

`2*(4*A043068(n+1)-2)`
-/

namespace A043024.P16300260068776634109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A043068 (n + 1) - 2)

end

end A043024.P16300260068776634109

/-! ## A043024.P8606851201702119448

`and(A043025(n+1), A043026(n+1))`
-/

namespace A043024.P8606851201702119448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043025 (n + 1)) (A043026 (n + 1))

end

end A043024.P8606851201702119448

/-! ## A043024.P8745897576647575912

`2*A043023(n+1)-A043022(n+1)`
-/

namespace A043024.P8745897576647575912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043023 (n + 1) - A043022 (n + 1)

end

end A043024.P8745897576647575912

/-! ## A043024.P2812663873636657833

`(A043025(n+1)+A043023(n+1))/2`
-/

namespace A043024.P2812663873636657833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043025 (n + 1) + A043023 (n + 1) : ℚ) / 2

end

end A043024.P2812663873636657833

/-! ## A043024.P16338477497618024815

`(A043026(n+1)+A043022(n+1))/2`
-/

namespace A043024.P16338477497618024815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043026 (n + 1) + A043022 (n + 1) : ℚ) / 2

end

end A043024.P16338477497618024815

/-! ## A043024.P4133678971632204382

`A043022(n+1)+A043025(n+1)-A043023(n+1)`
-/

namespace A043024.P4133678971632204382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043022 (n + 1) + (A043025 (n + 1) - A043023 (n + 1))

end

end A043024.P4133678971632204382

/-! ## A043024.P3867450629226075168

`and(A043023(n+1)-A043026(n+1), A043026(n+1))`
-/

namespace A043024.P3867450629226075168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043023 (n + 1) - A043026 (n + 1)) (A043026 (n + 1))

end

end A043024.P3867450629226075168

/-! ## A043024.P1309932548436471080

`A043023(n+1)+A014682(A043023(n+1)-A043021(n+1))`
-/

namespace A043024.P1309932548436471080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043023 (n + 1) + A014682 (A043023 (n + 1) - A043021 (n + 1)).toNat

end

end A043024.P1309932548436471080

/-! ## A043024.P13164294271286068774

`A047461(2*A043068(n+1))`
-/

namespace A043024.P13164294271286068774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (2 * A043068 (n + 1)).toNat

end

end A043024.P13164294271286068774

/-! ## A043024.P13780445427385924841

`2*A004275(2*A043068(n+1))`
-/

namespace A043024.P13780445427385924841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004275 (2 * A043068 (n + 1)).toNat

end

end A043024.P13780445427385924841

/-!
# A043025: Base-8 palindromes that start with 5.

The programs for A043025, there is no canonical definition to state claims against.
-/

/-! ## A043025.P16455509578148042719

`8*A043069(n+1)-3`
-/

namespace A043025.P16455509578148042719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A043069 (n + 1) - 3

end

end A043025.P16455509578148042719

/-! ## A043025.P17121293907922178529

`or(A043021(n+1), A043024(n+1))`
-/

namespace A043025.P17121293907922178529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043021 (n + 1)) (A043024 (n + 1))

end

end A043025.P17121293907922178529

/-! ## A043025.P15249214220232236960

`2*A043023(n+1)-A043021(n+1)`
-/

namespace A043025.P15249214220232236960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043023 (n + 1) - A043021 (n + 1)

end

end A043025.P15249214220232236960

/-! ## A043025.P1536975085732595232

`2*A043024(n+1)-A043023(n+1)`
-/

namespace A043025.P1536975085732595232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043024 (n + 1) - A043023 (n + 1)

end

end A043025.P1536975085732595232

/-! ## A043025.P11325083938043506159

`2*A043026(n+1)-A043027(n+1)`
-/

namespace A043025.P11325083938043506159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043026 (n + 1) - A043027 (n + 1)

end

end A043025.P11325083938043506159

/-! ## A043025.P8445531969689454523

`(A043026(n+1)+A043024(n+1))/2`
-/

namespace A043025.P8445531969689454523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043026 (n + 1) + A043024 (n + 1) : ℚ) / 2

end

end A043025.P8445531969689454523

/-! ## A043025.P12893065276390163751

`(A043027(n+1)+A043023(n+1))/2`
-/

namespace A043025.P12893065276390163751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043027 (n + 1) + A043023 (n + 1) : ℚ) / 2

end

end A043025.P12893065276390163751

/-! ## A043025.P4417897744052238232

`A043023(n+1)+A043024(n+1)-A043022(n+1)`
-/

namespace A043025.P4417897744052238232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043023 (n + 1) + (A043024 (n + 1) - A043022 (n + 1))

end

end A043025.P4417897744052238232

/-! ## A043025.P3441704310077493985

`or(A043026(n+1)-A043021(n+1), A043021(n+1))`
-/

namespace A043025.P3441704310077493985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043026 (n + 1) - A043021 (n + 1)) (A043021 (n + 1))

end

end A043025.P3441704310077493985

/-! ## A043025.P17315673248504263901

`or(A004770(A043065(n+1)), A043024(n+1))`
-/

namespace A043025.P17315673248504263901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004770 (A043065 (n + 1)).toNat) (A043024 (n + 1))

end

end A043025.P17315673248504263901

/-! ## A043025.P4522759659531492419

`A043024(n+1)+A000265(A043026(n+1)-A043024(n+1))`
-/

namespace A043025.P4522759659531492419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043024 (n + 1) + A000265 (A043026 (n + 1) - A043024 (n + 1)).toNat

end

end A043025.P4522759659531492419

/-!
# A043026: Base-8 palindromes that start with 6.

The programs for A043026, there is no canonical definition to state claims against.
-/

/-! ## A043026.P1570221711433981909

`8*A043070(n+1)-2`
-/

namespace A043026.P1570221711433981909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A043070 (n + 1) - 2

end

end A043026.P1570221711433981909

/-! ## A043026.P17793545372435176621

`or(A043022(n+1), A043024(n+1))`
-/

namespace A043026.P17793545372435176621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043022 (n + 1)) (A043024 (n + 1))

end

end A043026.P17793545372435176621

/-! ## A043026.P16314478874273853162

`2*A043025(n+1)-A043024(n+1)`
-/

namespace A043026.P16314478874273853162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043025 (n + 1) - A043024 (n + 1)

end

end A043026.P16314478874273853162

/-! ## A043026.P7668637341619867981

`(A043027(n+1)+A043025(n+1))/2`
-/

namespace A043026.P7668637341619867981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043027 (n + 1) + A043025 (n + 1) : ℚ) / 2

end

end A043026.P7668637341619867981

/-! ## A043026.P3261953942119316066

`A043023(n+1)+A043025(n+1)-A043022(n+1)`
-/

namespace A043026.P3261953942119316066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043023 (n + 1) + (A043025 (n + 1) - A043022 (n + 1))

end

end A043026.P3261953942119316066

/-! ## A043026.P11631889607847729497

`A043024(n+1)+A043025(n+1)-A043023(n+1)`
-/

namespace A043026.P11631889607847729497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043024 (n + 1) + (A043025 (n + 1) - A043023 (n + 1))

end

end A043026.P11631889607847729497

/-! ## A043026.P3761881184972706729

`A043024(n+1)+A043027(n+1)-A043025(n+1)`
-/

namespace A043026.P3761881184972706729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043024 (n + 1) + (A043027 (n + 1) - A043025 (n + 1))

end

end A043026.P3761881184972706729

/-! ## A043026.P10473385605592589843

`A043021(n+1)+xor(A043021(n+1), A043024(n+1))`
-/

namespace A043026.P10473385605592589843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043021 (n + 1) + Int.xor (A043021 (n + 1)) (A043024 (n + 1))

end

end A043026.P10473385605592589843

/-! ## A043026.P8242650904177245384

`A017137(A043070(n+1)-1)`
-/

namespace A043026.P8242650904177245384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 (A043070 (n + 1) - 1).toNat

end

end A043026.P8242650904177245384

/-! ## A043026.P7876385339924149342

`A130824(2*A043070(n+1))`
-/

namespace A043026.P7876385339924149342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (2 * A043070 (n + 1)).toNat

end

end A043026.P7876385339924149342

/-!
# A043027: Base-8 palindromes that start with 7.

The programs for A043027, there is no canonical definition to state claims against.
-/

/-! ## A043027.P2916673442661445189

`or(A043021(n+1), A043026(n+1))`
-/

namespace A043027.P2916673442661445189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043021 (n + 1)) (A043026 (n + 1))

end

end A043027.P2916673442661445189

/-! ## A043027.P13661905790970259393

`or(A043022(n+1), A043025(n+1))`
-/

namespace A043027.P13661905790970259393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043022 (n + 1)) (A043025 (n + 1))

end

end A043027.P13661905790970259393

/-! ## A043027.P15826538051760439005

`or(A043023(n+1), A043024(n+1))`
-/

namespace A043027.P15826538051760439005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043023 (n + 1)) (A043024 (n + 1))

end

end A043027.P15826538051760439005

/-! ## A043027.P1298507951970603733

`or(A043023(n+1), A043025(n+1))`
-/

namespace A043027.P1298507951970603733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043023 (n + 1)) (A043025 (n + 1))

end

end A043027.P1298507951970603733

/-! ## A043027.P13245648358630389493

`or(A043023(n+1), A043026(n+1))`
-/

namespace A043027.P13245648358630389493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043023 (n + 1)) (A043026 (n + 1))

end

end A043027.P13245648358630389493

/-! ## A043027.P10524790881738659860

`or(A043025(n+1), A043026(n+1))`
-/

namespace A043027.P10524790881738659860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043025 (n + 1)) (A043026 (n + 1))

end

end A043027.P10524790881738659860

/-! ## A043027.P571929540747535552

`2*A043024(n+1)-A043021(n+1)`
-/

namespace A043027.P571929540747535552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043024 (n + 1) - A043021 (n + 1)

end

end A043027.P571929540747535552

/-! ## A043027.P6598886747248285013

`A043024(n+1)+A043025(n+1)-A043022(n+1)`
-/

namespace A043027.P6598886747248285013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043024 (n + 1) + (A043025 (n + 1) - A043022 (n + 1))

end

end A043027.P6598886747248285013

/-! ## A043027.P7865203327395019247

`A043026(n+1)+A000265(A043026(n+1)-A043024(n+1))`
-/

namespace A043027.P7865203327395019247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043026 (n + 1) + A000265 (A043026 (n + 1) - A043024 (n + 1)).toNat

end

end A043027.P7865203327395019247

/-! ## A043027.P15758498058336965812

`A133655(A043071(n+1))`
-/

namespace A043027.P15758498058336965812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (A043071 (n + 1)).toNat

end

end A043027.P15758498058336965812

/-!
# A043028: Base-9 palindromes that start with 1.

The programs for A043028, there is no canonical definition to state claims against.
-/

/-! ## A043028.P9531162609131029993

`2*A043029(n+1)-A043030(n+1)`
-/

namespace A043028.P9531162609131029993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043029 (n + 1) - A043030 (n + 1)

end

end A043028.P9531162609131029993

/-! ## A043028.P5630837114957877521

`2*A043030(n+1)-A043032(n+1)`
-/

namespace A043028.P5630837114957877521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043030 (n + 1) - A043032 (n + 1)

end

end A043028.P5630837114957877521

/-! ## A043028.P11624497960629625201

`2*A043031(n+1)-A043034(n+1)`
-/

namespace A043028.P11624497960629625201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043031 (n + 1) - A043034 (n + 1)

end

end A043028.P11624497960629625201

/-! ## A043028.P3762403013090913061

`(3*A043030(n+1))%A043031(n+1)`
-/

namespace A043028.P3762403013090913061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A043030 (n + 1)) (A043031 (n + 1))

end

end A043028.P3762403013090913061

/-! ## A043028.P13086049441418061313

`(4*A043031(n+1))%A043032(n+1)`
-/

namespace A043028.P13086049441418061313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A043031 (n + 1)) (A043032 (n + 1))

end

end A043028.P13086049441418061313

/-! ## A043028.P8398003415965796476

`A043029(n+1)+A043031(n+1)-A043032(n+1)`
-/

namespace A043028.P8398003415965796476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043029 (n + 1) + (A043031 (n + 1) - A043032 (n + 1))

end

end A043028.P8398003415965796476

/-! ## A043028.P10510413993811976437

`A043029(n+1)+A043033(n+1)-A043034(n+1)`
-/

namespace A043028.P10510413993811976437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043029 (n + 1) + (A043033 (n + 1) - A043034 (n + 1))

end

end A043028.P10510413993811976437

/-! ## A043028.P5231026997434176830

`A043031(n+1)+A043032(n+1)-A043035(n+1)`
-/

namespace A043028.P5231026997434176830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043031 (n + 1) + (A043032 (n + 1) - A043035 (n + 1))

end

end A043028.P5231026997434176830

/-! ## A043028.P1897626360626700797

`A043034(n+1)%(A043033(n+1)-A043035(n+1))`
-/

namespace A043028.P1897626360626700797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043034 (n + 1)) (A043033 (n + 1) - A043035 (n + 1))

end

end A043028.P1897626360626700797

/-! ## A043028.P5347919267031309065

`A029955(eq[1, A029955(n+1)%9]+1)`
-/

namespace A043028.P5347919267031309065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029955 (n + 1)) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A043028.P5347919267031309065

/-! ## A043028.P3678659051315395175

`∩[9*n+1, A029955(n+2)]`
-/

namespace A043028.P3678659051315395175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043028.P3678659051315395175

/-! ## A043028.P7743466581765704677

`A017197(A043072(n+1))-11`
-/

namespace A043028.P7743466581765704677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 (A043072 (n + 1)).toNat - 11

end

end A043028.P7743466581765704677

/-! ## A043028.P15543210847943397752

`∩[A029955(n+1), A017173(n)]`
-/

namespace A043028.P15543210847943397752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043028.P15543210847943397752

/-! ## A043028.P17825528416559269411

`∩[A029955(n+1), A017185(n)-1]`
-/

namespace A043028.P17825528416559269411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043028.P17825528416559269411

/-! ## A043028.P997060462237995134

`∩[A029955(n+1), A017197(n)-2]`
-/

namespace A043028.P997060462237995134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043028.P997060462237995134

/-! ## A043028.P14385272530699355247

`A043029(n+1)-A014682(A043031(n+1)-A043029(n+1))`
-/

namespace A043028.P14385272530699355247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043029 (n + 1) - A014682 (A043031 (n + 1) - A043029 (n + 1)).toNat

end

end A043028.P14385272530699355247

/-! ## A043028.P7146977923380020346

`A043030(n+1)-A014682(A043034(n+1)-A043030(n+1))`
-/

namespace A043028.P7146977923380020346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043030 (n + 1) - A014682 (A043034 (n + 1) - A043030 (n + 1)).toNat

end

end A043028.P7146977923380020346

/-! ## A043028.P12971558539177535490

`A043029(n+1)-A273943(A043031(n+1)-A043029(n+1))`
-/

namespace A043028.P12971558539177535490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043029 (n + 1) - A273943 (A043031 (n + 1) - A043029 (n + 1)).toNat

end

end A043028.P12971558539177535490

/-!
# A043029: Base-9 palindromes that start with 2.

The programs for A043029, there is no canonical definition to state claims against.
-/

/-! ## A043029.P10299115001921102

`9*A043073(n+1)-7`
-/

namespace A043029.P10299115001921102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A043073 (n + 1) - 7

end

end A043029.P10299115001921102

/-! ## A043029.P6420717953947199872

`2*A043030(n+1)-A043031(n+1)`
-/

namespace A043029.P6420717953947199872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043030 (n + 1) - A043031 (n + 1)

end

end A043029.P6420717953947199872

/-! ## A043029.P1049543285803196653

`2*A043031(n+1)-A043033(n+1)`
-/

namespace A043029.P1049543285803196653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043031 (n + 1) - A043033 (n + 1)

end

end A043029.P1049543285803196653

/-! ## A043029.P8967593508676183368

`(A043030(n+1)+A043028(n+1))/2`
-/

namespace A043029.P8967593508676183368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043030 (n + 1) + A043028 (n + 1) : ℚ) / 2

end

end A043029.P8967593508676183368

/-! ## A043029.P18217728040325734322

`2*A043032(n+1)-A043035(n+1)`
-/

namespace A043029.P18217728040325734322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043032 (n + 1) - A043035 (n + 1)

end

end A043029.P18217728040325734322

/-! ## A043029.P1683484021362198983

`A043028(n+1)+A043031(n+1)-A043030(n+1)`
-/

namespace A043029.P1683484021362198983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043028 (n + 1) + (A043031 (n + 1) - A043030 (n + 1))

end

end A043029.P1683484021362198983

/-! ## A043029.P8888358319977969928

`A043028(n+1)+A043035(n+1)-A043034(n+1)`
-/

namespace A043029.P8888358319977969928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043028 (n + 1) + (A043035 (n + 1) - A043034 (n + 1))

end

end A043029.P8888358319977969928

/-! ## A043029.P14552474892716999251

`A029955(eq[2, A029955(n+1)%9]+1)`
-/

namespace A043029.P14552474892716999251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029955 (n + 1)) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A043029.P14552474892716999251

/-! ## A043029.P10122904565410679528

`A017185(A043073(n+1)-1)`
-/

namespace A043029.P10122904565410679528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (A043073 (n + 1) - 1).toNat

end

end A043029.P10122904565410679528

/-! ## A043029.P4803713107809021169

`∩[A029955(n+1), A017185(n)]`
-/

namespace A043029.P4803713107809021169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043029.P4803713107809021169

/-! ## A043029.P547899320128227854

`∩[A029955(n+1), A017173(n)+1]`
-/

namespace A043029.P547899320128227854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043029.P547899320128227854

/-! ## A043029.P2551473192632429718

`∩[A029955(n+1), A017197(n)-1]`
-/

namespace A043029.P2551473192632429718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043029.P2551473192632429718

/-! ## A043029.P11611473664195879106

`A014682(A043030(n+1)+A043028(n+1))`
-/

namespace A043029.P11611473664195879106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043030 (n + 1) + A043028 (n + 1)).toNat

end

end A043029.P11611473664195879106

/-! ## A043029.P6410004952806582528

`A043030(n+1)-A014682(A043032(n+1)-A043030(n+1))`
-/

namespace A043029.P6410004952806582528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043030 (n + 1) - A014682 (A043032 (n + 1) - A043030 (n + 1)).toNat

end

end A043029.P6410004952806582528

/-! ## A043029.P5668107110164958213

`A043031(n+1)-A014682(A043035(n+1)-A043031(n+1))`
-/

namespace A043029.P5668107110164958213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043031 (n + 1) - A014682 (A043035 (n + 1) - A043031 (n + 1)).toNat

end

end A043029.P5668107110164958213

/-! ## A043029.P9989437794005473074

`A043030(n+1)-A273943(A043032(n+1)-A043030(n+1))`
-/

namespace A043029.P9989437794005473074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043030 (n + 1) - A273943 (A043032 (n + 1) - A043030 (n + 1)).toNat

end

end A043029.P9989437794005473074

/-!
# A043030: Base-9 palindromes that start with 3.

The programs for A043030, there is no canonical definition to state claims against.
-/

/-! ## A043030.P375919642192802695

`9*A043074(n+1)-6`
-/

namespace A043030.P375919642192802695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A043074 (n + 1) - 6

end

end A043030.P375919642192802695

/-! ## A043030.P16883344777181778340

`2*A043029(n+1)-A043028(n+1)`
-/

namespace A043030.P16883344777181778340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043029 (n + 1) - A043028 (n + 1)

end

end A043030.P16883344777181778340

/-! ## A043030.P9413730422245322737

`2*A043031(n+1)-A043032(n+1)`
-/

namespace A043030.P9413730422245322737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043031 (n + 1) - A043032 (n + 1)

end

end A043030.P9413730422245322737

/-! ## A043030.P3134312272016167504

`2*A043032(n+1)-A043034(n+1)`
-/

namespace A043030.P3134312272016167504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043032 (n + 1) - A043034 (n + 1)

end

end A043030.P3134312272016167504

/-! ## A043030.P6871683244409484691

`(A043031(n+1)+A043029(n+1))/2`
-/

namespace A043030.P6871683244409484691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043031 (n + 1) + A043029 (n + 1) : ℚ) / 2

end

end A043030.P6871683244409484691

/-! ## A043030.P10308933982560108278

`(A043032(n+1)+A043028(n+1))/2`
-/

namespace A043030.P10308933982560108278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043032 (n + 1) + A043028 (n + 1) : ℚ) / 2

end

end A043030.P10308933982560108278

/-! ## A043030.P8114604879565296024

`A043029(n+1)+A043032(n+1)-A043031(n+1)`
-/

namespace A043030.P8114604879565296024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043029 (n + 1) + (A043032 (n + 1) - A043031 (n + 1))

end

end A043030.P8114604879565296024

/-! ## A043030.P9711966460834697960

`A043029(n+1)+A043034(n+1)-A043033(n+1)`
-/

namespace A043030.P9711966460834697960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043029 (n + 1) + (A043034 (n + 1) - A043033 (n + 1))

end

end A043030.P9711966460834697960

/-! ## A043030.P16051119812072246589

`A043031(n+1)+A043033(n+1)-A043034(n+1)`
-/

namespace A043030.P16051119812072246589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043031 (n + 1) + (A043033 (n + 1) - A043034 (n + 1))

end

end A043030.P16051119812072246589

/-! ## A043030.P3303146190247061157

`∩[A029955(n+1), A017197(n)]`
-/

namespace A043030.P3303146190247061157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043030.P3303146190247061157

/-! ## A043030.P16800697797646169211

`∩[A029955(n+1), A017185(n)+1]`
-/

namespace A043030.P16800697797646169211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043030.P16800697797646169211

/-! ## A043030.P10380971778719203598

`∩[A029955(n+1), A017173(n)+2]`
-/

namespace A043030.P10380971778719203598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043030.P10380971778719203598

/-! ## A043030.P3110897987348946116

`A014682(A043031(n+1)+A043029(n+1))`
-/

namespace A043030.P3110897987348946116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043031 (n + 1) + A043029 (n + 1)).toNat

end

end A043030.P3110897987348946116

/-! ## A043030.P730881674455373699

`A014682(A043032(n+1)+A043028(n+1))`
-/

namespace A043030.P730881674455373699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043032 (n + 1) + A043028 (n + 1)).toNat

end

end A043030.P730881674455373699

/-! ## A043030.P15269696065946682823

`A273943(A043031(n+1)+A043029(n+1))`
-/

namespace A043030.P15269696065946682823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A043031 (n + 1) + A043029 (n + 1)).toNat

end

end A043030.P15269696065946682823

/-! ## A043030.P473018780831551899

`A273943(A043032(n+1)+A043028(n+1))`
-/

namespace A043030.P473018780831551899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A043032 (n + 1) + A043028 (n + 1)).toNat

end

end A043030.P473018780831551899

/-! ## A043030.P11761454232990764958

`A043031(n+1)-A014682(A043033(n+1)-A043031(n+1))`
-/

namespace A043030.P11761454232990764958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043031 (n + 1) - A014682 (A043033 (n + 1) - A043031 (n + 1)).toNat

end

end A043030.P11761454232990764958

/-!
# A043031: Base-9 palindromes that start with 4.

The programs for A043031, there is no canonical definition to state claims against.
-/

/-! ## A043031.P5756072799528423586

`9*A043075(n+1)-5`
-/

namespace A043031.P5756072799528423586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A043075 (n + 1) - 5

end

end A043031.P5756072799528423586

/-! ## A043031.P15933920660252307608

`2*A043030(n+1)-A043029(n+1)`
-/

namespace A043031.P15933920660252307608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043030 (n + 1) - A043029 (n + 1)

end

end A043031.P15933920660252307608

/-! ## A043031.P15105950491566385693

`2*A043033(n+1)-A043035(n+1)`
-/

namespace A043031.P15105950491566385693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043033 (n + 1) - A043035 (n + 1)

end

end A043031.P15105950491566385693

/-! ## A043031.P15604951239227703724

`(A043032(n+1)+A043030(n+1))/2`
-/

namespace A043031.P15604951239227703724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043032 (n + 1) + A043030 (n + 1) : ℚ) / 2

end

end A043031.P15604951239227703724

/-! ## A043031.P3305627847070380743

`(A043033(n+1)+A043029(n+1))/2`
-/

namespace A043031.P3305627847070380743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043033 (n + 1) + A043029 (n + 1) : ℚ) / 2

end

end A043031.P3305627847070380743

/-! ## A043031.P10574546210417001640

`(A043034(n+1)+A043028(n+1))/2`
-/

namespace A043031.P10574546210417001640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043034 (n + 1) + A043028 (n + 1) : ℚ) / 2

end

end A043031.P10574546210417001640

/-! ## A043031.P13980187874451088728

`A043028(n+1)+A043032(n+1)-A043029(n+1)`
-/

namespace A043031.P13980187874451088728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043028 (n + 1) + (A043032 (n + 1) - A043029 (n + 1))

end

end A043031.P13980187874451088728

/-! ## A043031.P335043846669886208

`A043028(n+1)+A043035(n+1)-A043032(n+1)`
-/

namespace A043031.P335043846669886208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043028 (n + 1) + (A043035 (n + 1) - A043032 (n + 1))

end

end A043031.P335043846669886208

/-! ## A043031.P12233359282205044260

`A014682(A043032(n+1)+A043030(n+1))`
-/

namespace A043031.P12233359282205044260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043032 (n + 1) + A043030 (n + 1)).toNat

end

end A043031.P12233359282205044260

/-! ## A043031.P18034823807525823262

`A014682(A043033(n+1)+A043029(n+1))`
-/

namespace A043031.P18034823807525823262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043033 (n + 1) + A043029 (n + 1)).toNat

end

end A043031.P18034823807525823262

/-! ## A043031.P15548122933626843385

`A014682(A043034(n+1)+A043028(n+1))`
-/

namespace A043031.P15548122933626843385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043034 (n + 1) + A043028 (n + 1)).toNat

end

end A043031.P15548122933626843385

/-! ## A043031.P16299194158886906576

`A273943(A043032(n+1)+A043030(n+1))`
-/

namespace A043031.P16299194158886906576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A043032 (n + 1) + A043030 (n + 1)).toNat

end

end A043031.P16299194158886906576

/-! ## A043031.P5563217949539311955

`A043030(n+1)+A014682(A043030(n+1)-A043028(n+1))`
-/

namespace A043031.P5563217949539311955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043030 (n + 1) + A014682 (A043030 (n + 1) - A043028 (n + 1)).toNat

end

end A043031.P5563217949539311955

/-! ## A043031.P9668526344226074865

`A043032(n+1)-A014682(A043034(n+1)-A043032(n+1))`
-/

namespace A043031.P9668526344226074865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043032 (n + 1) - A014682 (A043034 (n + 1) - A043032 (n + 1)).toNat

end

end A043031.P9668526344226074865

/-!
# A043032: Base-9 palindromes that start with 5.

The programs for A043032, there is no canonical definition to state claims against.
-/

/-! ## A043032.P1615635683273028745

`2*A043030(n+1)-A043028(n+1)`
-/

namespace A043032.P1615635683273028745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043030 (n + 1) - A043028 (n + 1)

end

end A043032.P1615635683273028745

/-! ## A043032.P14778162882043807052

`2*A043031(n+1)-A043030(n+1)`
-/

namespace A043032.P14778162882043807052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043031 (n + 1) - A043030 (n + 1)

end

end A043032.P14778162882043807052

/-! ## A043032.P16326955696663664600

`2*A043033(n+1)-A043034(n+1)`
-/

namespace A043032.P16326955696663664600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043033 (n + 1) - A043034 (n + 1)

end

end A043032.P16326955696663664600

/-! ## A043032.P1161275165772574419

`(A043033(n+1)+A043031(n+1))/2`
-/

namespace A043032.P1161275165772574419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043033 (n + 1) + A043031 (n + 1) : ℚ) / 2

end

end A043032.P1161275165772574419

/-! ## A043032.P7977721238648079106

`(A043034(n+1)+A043030(n+1))/2`
-/

namespace A043032.P7977721238648079106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043034 (n + 1) + A043030 (n + 1) : ℚ) / 2

end

end A043032.P7977721238648079106

/-! ## A043032.P7910607089453868642

`(A043035(n+1)+A043029(n+1))/2`
-/

namespace A043032.P7910607089453868642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043035 (n + 1) + A043029 (n + 1) : ℚ) / 2

end

end A043032.P7910607089453868642

/-! ## A043032.P2572092417131656365

`A043031(n+1)+A043034(n+1)-A043033(n+1)`
-/

namespace A043032.P2572092417131656365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043031 (n + 1) + (A043034 (n + 1) - A043033 (n + 1))

end

end A043032.P2572092417131656365

/-! ## A043032.P10364621148504898565

`A017221(A043076(n+1)-1)`
-/

namespace A043032.P10364621148504898565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (A043076 (n + 1) - 1).toNat

end

end A043032.P10364621148504898565

/-! ## A043032.P14703753021308856179

`A014682(A043033(n+1)+A043031(n+1))`
-/

namespace A043032.P14703753021308856179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043033 (n + 1) + A043031 (n + 1)).toNat

end

end A043032.P14703753021308856179

/-! ## A043032.P14509555908303576995

`A014682(A043034(n+1)+A043030(n+1))`
-/

namespace A043032.P14509555908303576995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043034 (n + 1) + A043030 (n + 1)).toNat

end

end A043032.P14509555908303576995

/-! ## A043032.P4623637036110982765

`A014682(A043035(n+1)+A043029(n+1))`
-/

namespace A043032.P4623637036110982765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043035 (n + 1) + A043029 (n + 1)).toNat

end

end A043032.P4623637036110982765

/-! ## A043032.P7686323363217802065

`A043031(n+1)+A014682(A043031(n+1)-A043029(n+1))`
-/

namespace A043032.P7686323363217802065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043031 (n + 1) + A014682 (A043031 (n + 1) - A043029 (n + 1)).toNat

end

end A043032.P7686323363217802065

/-! ## A043032.P6135988407090457946

`A273943(A043031(n+1)-A043029(n+1))+A043031(n+1)`
-/

namespace A043032.P6135988407090457946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A043031 (n + 1) - A043029 (n + 1)).toNat + A043031 (n + 1)

end

end A043032.P6135988407090457946

/-! ## A043032.P3536966560283993013

`A043033(n+1)-A014682(A043035(n+1)-A043033(n+1))`
-/

namespace A043032.P3536966560283993013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043033 (n + 1) - A014682 (A043035 (n + 1) - A043033 (n + 1)).toNat

end

end A043032.P3536966560283993013

/-! ## A043032.P11218969196029864275

`A043033(n+1)-A273943(A043035(n+1)-A043033(n+1))`
-/

namespace A043032.P11218969196029864275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043033 (n + 1) - A273943 (A043035 (n + 1) - A043033 (n + 1)).toNat

end

end A043032.P11218969196029864275

/-!
# A043033: Base-9 palindromes that start with 6.

The programs for A043033, there is no canonical definition to state claims against.
-/

/-! ## A043033.P1756506031705564354

`2*A043031(n+1)-A043029(n+1)`
-/

namespace A043033.P1756506031705564354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043031 (n + 1) - A043029 (n + 1)

end

end A043033.P1756506031705564354

/-! ## A043033.P15307546145522996452

`2*A043032(n+1)-A043031(n+1)`
-/

namespace A043033.P15307546145522996452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043032 (n + 1) - A043031 (n + 1)

end

end A043033.P15307546145522996452

/-! ## A043033.P2102428196369091795

`2*A043034(n+1)-A043035(n+1)`
-/

namespace A043033.P2102428196369091795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043034 (n + 1) - A043035 (n + 1)

end

end A043033.P2102428196369091795

/-! ## A043033.P6249863463562634093

`(A043034(n+1)+A043032(n+1))/2`
-/

namespace A043033.P6249863463562634093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043034 (n + 1) + A043032 (n + 1) : ℚ) / 2

end

end A043033.P6249863463562634093

/-! ## A043033.P7828412628095086920

`(A043035(n+1)+A043031(n+1))/2`
-/

namespace A043033.P7828412628095086920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043035 (n + 1) + A043031 (n + 1) : ℚ) / 2

end

end A043033.P7828412628095086920

/-! ## A043033.P8171396259840279251

`A043029(n+1)+A043032(n+1)-A043028(n+1)`
-/

namespace A043033.P8171396259840279251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043029 (n + 1) + (A043032 (n + 1) - A043028 (n + 1))

end

end A043033.P8171396259840279251

/-! ## A043033.P12971214731568762546

`A043030(n+1)+A043031(n+1)-A043028(n+1)`
-/

namespace A043033.P12971214731568762546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043030 (n + 1) + (A043031 (n + 1) - A043028 (n + 1))

end

end A043033.P12971214731568762546

/-! ## A043033.P4587475430187168679

`A122709(A043077(n+1))`
-/

namespace A043033.P4587475430187168679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 (A043077 (n + 1)).toNat

end

end A043033.P4587475430187168679

/-! ## A043033.P15263597356560323643

`A017233(A043077(n+1)-1)`
-/

namespace A043033.P15263597356560323643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (A043077 (n + 1) - 1).toNat

end

end A043033.P15263597356560323643

/-! ## A043033.P13235476591360308889

`3*A016789(A043077(n+1)-1)`
-/

namespace A043033.P13235476591360308889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A016789 (A043077 (n + 1) - 1).toNat

end

end A043033.P13235476591360308889

/-! ## A043033.P11623269019316276367

`A014682(A043034(n+1)+A043032(n+1))`
-/

namespace A043033.P11623269019316276367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043034 (n + 1) + A043032 (n + 1)).toNat

end

end A043033.P11623269019316276367

/-! ## A043033.P3877517055344728542

`A014682(A043035(n+1)+A043031(n+1))`
-/

namespace A043033.P3877517055344728542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043035 (n + 1) + A043031 (n + 1)).toNat

end

end A043033.P3877517055344728542

/-! ## A043033.P6484227167253966644

`A043032(n+1)+A014682(A043032(n+1)-A043030(n+1))`
-/

namespace A043033.P6484227167253966644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043032 (n + 1) + A014682 (A043032 (n + 1) - A043030 (n + 1)).toNat

end

end A043033.P6484227167253966644

/-! ## A043033.P15191358819728729547

`A273943(A043032(n+1)-A043030(n+1))+A043032(n+1)`
-/

namespace A043033.P15191358819728729547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A043032 (n + 1) - A043030 (n + 1)).toNat + A043032 (n + 1)

end

end A043033.P15191358819728729547

/-!
# A043034: Base-9 palindromes that start with 7.

The programs for A043034, there is no canonical definition to state claims against.
-/

/-! ## A043034.P712989035347541479

`9*A043078(n+1)-2`
-/

namespace A043034.P712989035347541479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A043078 (n + 1) - 2

end

end A043034.P712989035347541479

/-! ## A043034.P15793439988716023770

`2*A043031(n+1)-A043028(n+1)`
-/

namespace A043034.P15793439988716023770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043031 (n + 1) - A043028 (n + 1)

end

end A043034.P15793439988716023770

/-! ## A043034.P18360671616004563166

`2*A043032(n+1)-A043030(n+1)`
-/

namespace A043034.P18360671616004563166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043032 (n + 1) - A043030 (n + 1)

end

end A043034.P18360671616004563166

/-! ## A043034.P17729497024572613151

`(A043035(n+1)+A043033(n+1))/2`
-/

namespace A043034.P17729497024572613151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043035 (n + 1) + A043033 (n + 1) : ℚ) / 2

end

end A043034.P17729497024572613151

/-! ## A043034.P10762488232735166704

`A043030(n+1)+A043032(n+1)-A043028(n+1)`
-/

namespace A043034.P10762488232735166704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043030 (n + 1) + (A043032 (n + 1) - A043028 (n + 1))

end

end A043034.P10762488232735166704

/-! ## A043034.P4948816330063319273

`A043031(n+1)+A043032(n+1)-A043029(n+1)`
-/

namespace A043034.P4948816330063319273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043031 (n + 1) + (A043032 (n + 1) - A043029 (n + 1))

end

end A043034.P4948816330063319273

/-! ## A043034.P14147463598923475685

`A043031(n+1)+A043035(n+1)-A043032(n+1)`
-/

namespace A043034.P14147463598923475685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043031 (n + 1) + (A043035 (n + 1) - A043032 (n + 1))

end

end A043034.P14147463598923475685

/-! ## A043034.P1350467816675863436

`A273943(A043035(n+1)+A043033(n+1))`
-/

namespace A043034.P1350467816675863436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A043035 (n + 1) + A043033 (n + 1)).toNat

end

end A043034.P1350467816675863436

/-! ## A043034.P10893989511981819791

`A043032(n+1)+A014682(A043032(n+1)-A043028(n+1))`
-/

namespace A043034.P10893989511981819791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043032 (n + 1) + A014682 (A043032 (n + 1) - A043028 (n + 1)).toNat

end

end A043034.P10893989511981819791

/-! ## A043034.P11526046732083052976

`A043033(n+1)+A014682(A043033(n+1)-A043031(n+1))`
-/

namespace A043034.P11526046732083052976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043033 (n + 1) + A014682 (A043033 (n + 1) - A043031 (n + 1)).toNat

end

end A043034.P11526046732083052976

/-! ## A043034.P3461519027120900829

`A043033(n+1)+A014682(A043035(n+1)-A043033(n+1))`
-/

namespace A043034.P3461519027120900829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043033 (n + 1) + A014682 (A043035 (n + 1) - A043033 (n + 1)).toNat

end

end A043034.P3461519027120900829

/-! ## A043034.P1119892901337133616

`A273943(A043032(n+1)-A043028(n+1))+A043032(n+1)`
-/

namespace A043034.P1119892901337133616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A043032 (n + 1) - A043028 (n + 1)).toNat + A043032 (n + 1)

end

end A043034.P1119892901337133616

/-!
# A043035: Base-9 palindromes that start with 8.

The programs for A043035, there is no canonical definition to state claims against.
-/

/-! ## A043035.P4620842498930293187

`9*A043079(n+1)-1`
-/

namespace A043035.P4620842498930293187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A043079 (n + 1) - 1

end

end A043035.P4620842498930293187

/-! ## A043035.P14195936853691442194

`ratio[A033999(n)]+9*A043079(n+1)`
-/

namespace A043035.P14195936853691442194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + (9 * A043079 (n + 1) : ℚ)

end

end A043035.P14195936853691442194

/-! ## A043035.P303583041055199463

`2*A043032(n+1)-A043029(n+1)`
-/

namespace A043035.P303583041055199463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043032 (n + 1) - A043029 (n + 1)

end

end A043035.P303583041055199463

/-! ## A043035.P5573685748806883028

`2*A043033(n+1)-A043031(n+1)`
-/

namespace A043035.P5573685748806883028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043033 (n + 1) - A043031 (n + 1)

end

end A043035.P5573685748806883028

/-! ## A043035.P15818264414543477968

`2*A043034(n+1)-A043033(n+1)`
-/

namespace A043035.P15818264414543477968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043034 (n + 1) - A043033 (n + 1)

end

end A043035.P15818264414543477968

/-! ## A043035.P7426352861679853715

`A008683(A051698(n))+9*A043079(n+1)`
-/

namespace A043035.P7426352861679853715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051698 n).toNat + 9 * A043079 (n + 1)

end

end A043035.P7426352861679853715

/-! ## A043035.P5822074491346424059

`A033999(Δ[n²])+9*A043079(n+1)`
-/

namespace A043035.P5822074491346424059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 9 * A043079 (n + 1)

end

end A043035.P5822074491346424059

/-! ## A043035.P16288566753106755187

`A008683(A051886(n))+9*A043079(n+1)`
-/

namespace A043035.P16288566753106755187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051886 n).toNat + 9 * A043079 (n + 1)

end

end A043035.P16288566753106755187

/-! ## A043035.P5178912187137776461

`A008683(A038580(n+1))+9*A043079(n+1)`
-/

namespace A043035.P5178912187137776461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A038580 (n + 1)).toNat + 9 * A043079 (n + 1)

end

end A043035.P5178912187137776461

/-! ## A043035.P9807963450537539390

`A008683(A048059(n+1))+9*A043079(n+1)`
-/

namespace A043035.P9807963450537539390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A048059 (n + 1)).toNat + 9 * A043079 (n + 1)

end

end A043035.P9807963450537539390

/-! ## A043035.P5869549239264423127

`A043033(n+1)+A014682(A043033(n+1)-A043029(n+1))`
-/

namespace A043035.P5869549239264423127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043033 (n + 1) + A014682 (A043033 (n + 1) - A043029 (n + 1)).toNat

end

end A043035.P5869549239264423127

/-! ## A043035.P11982126593011580779

`A043034(n+1)+A014682(A043034(n+1)-A043032(n+1))`
-/

namespace A043035.P11982126593011580779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043034 (n + 1) + A014682 (A043034 (n + 1) - A043032 (n + 1)).toNat

end

end A043035.P11982126593011580779

/-!
# A043036: Base 10 palindromes that start with 1.

The programs for A043036, there is no canonical definition to state claims against.
-/

/-! ## A043036.P12896682372426719659

`2*A043037(n+1)-A043038(n+1)`
-/

namespace A043036.P12896682372426719659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043037 (n + 1) - A043038 (n + 1)

end

end A043036.P12896682372426719659

/-! ## A043036.P8849935832052678239

`2*A043039(n+1)-A043042(n+1)`
-/

namespace A043036.P8849935832052678239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043039 (n + 1) - A043042 (n + 1)

end

end A043036.P8849935832052678239

/-! ## A043036.P11249939396681455851

`(3*A043038(n+1))%A043039(n+1)`
-/

namespace A043036.P11249939396681455851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A043038 (n + 1)) (A043039 (n + 1))

end

end A043036.P11249939396681455851

/-! ## A043036.P1491317813291320243

`A043038(n+1)+A043039(n+1)-A043041(n+1)`
-/

namespace A043036.P1491317813291320243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1) + (A043039 (n + 1) - A043041 (n + 1))

end

end A043036.P1491317813291320243

/-! ## A043036.P2488120432717251168

`A043038(n+1)+A043042(n+1)-A043044(n+1)`
-/

namespace A043036.P2488120432717251168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1) + (A043042 (n + 1) - A043044 (n + 1))

end

end A043036.P2488120432717251168

/-! ## A043036.P9451600867962158746

`A002113(eq[1, A002113(n+1)%10]+1)`
-/

namespace A043036.P9451600867962158746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A043036.P9451600867962158746

/-! ## A043036.P17029649019454544620

`∩[A002113(n+1), A208259(n+1)]`
-/

namespace A043036.P17029649019454544620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P17029649019454544620

/-! ## A043036.P16175980983011476529

`∩[A029950(n+1), A208259(n+1)]`
-/

namespace A043036.P16175980983011476529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P16175980983011476529

/-! ## A043036.P5802157672071010370

`∩[A061379(n+1), A208259(n+1)]`
-/

namespace A043036.P5802157672071010370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P5802157672071010370

/-! ## A043036.P13388928569620911192

`∩[A061917(n+1), A208259(n+1)]`
-/

namespace A043036.P13388928569620911192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P13388928569620911192

/-! ## A043036.P3156296372268053483

`∩[A083970(n+1), A208259(n+1)]`
-/

namespace A043036.P3156296372268053483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P3156296372268053483

/-! ## A043036.P11556373158661172157

`∩[A169824(n+1), A208259(n+1)]`
-/

namespace A043036.P11556373158661172157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P11556373158661172157

/-! ## A043036.P12086136743612132543

`∩[A208259(n+1), A306273(n+1)]`
-/

namespace A043036.P12086136743612132543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P12086136743612132543

/-! ## A043036.P10016653316443866588

`∩[A002113(n+1), A017281(n)]`
-/

namespace A043036.P10016653316443866588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P10016653316443866588

/-! ## A043036.P515410482665076482

`∩[A029950(n+1), A016861(n)]`
-/

namespace A043036.P515410482665076482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P515410482665076482

/-! ## A043036.P14119834614088444747

`∩[A029950(n+1), A017281(n)]`
-/

namespace A043036.P14119834614088444747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P14119834614088444747

/-! ## A043036.P12289235610710426367

`∩[A061917(n+1), A017281(n)]`
-/

namespace A043036.P12289235610710426367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P12289235610710426367

/-! ## A043036.P6855827836386724841

`∩[A083970(n+1), A017281(n)]`
-/

namespace A043036.P6855827836386724841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P6855827836386724841

/-! ## A043036.P15346591464299731840

`∩[A098897(n+1), A017281(n)]`
-/

namespace A043036.P15346591464299731840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P15346591464299731840

/-! ## A043036.P18228809638089149580

`∩[A029950(n+1), A197652(n+1)]`
-/

namespace A043036.P18228809638089149580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043036.P18228809638089149580

/-!
# A043037: Base-10 palindromes that start with 2.

The programs for A043037, there is no canonical definition to state claims against.
-/

/-! ## A043037.P14702773242069873122

`2*A043038(n+1)-A043039(n+1)`
-/

namespace A043037.P14702773242069873122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043038 (n + 1) - A043039 (n + 1)

end

end A043037.P14702773242069873122

/-! ## A043037.P3235063663798041512

`2*A043039(n+1)-A043041(n+1)`
-/

namespace A043037.P3235063663798041512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043039 (n + 1) - A043041 (n + 1)

end

end A043037.P3235063663798041512

/-! ## A043037.P17354370488394930887

`(A043038(n+1)+A043036(n+1))/2`
-/

namespace A043037.P17354370488394930887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043038 (n + 1) + A043036 (n + 1) : ℚ) / 2

end

end A043037.P17354370488394930887

/-! ## A043037.P843628991492350271

`A043039(n+1)+A043042(n+1)-A043044(n+1)`
-/

namespace A043037.P843628991492350271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043039 (n + 1) + (A043042 (n + 1) - A043044 (n + 1))

end

end A043037.P843628991492350271

/-! ## A043037.P8421919823200293670

`∩[A002113(n+1), A017293(n)]`
-/

namespace A043037.P8421919823200293670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P8421919823200293670

/-! ## A043037.P15518718149799392499

`∩[A029951(n+1), A017293(n)]`
-/

namespace A043037.P15518718149799392499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P15518718149799392499

/-! ## A043037.P17509803645406859822

`∩[A061917(n+1), A017293(n)]`
-/

namespace A043037.P17509803645406859822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P17509803645406859822

/-! ## A043037.P17372254983557567655

`∩[A083158(n+1), A017293(n)]`
-/

namespace A043037.P17372254983557567655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P17372254983557567655

/-! ## A043037.P16385277123956199455

`∩[A002113(n+1), A017281(n)+1]`
-/

namespace A043037.P16385277123956199455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P16385277123956199455

/-! ## A043037.P6115378679712694284

`∩[A061917(n+1), A017281(n)+1]`
-/

namespace A043037.P6115378679712694284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P6115378679712694284

/-! ## A043037.P8779320936491550899

`∩[A002113(n+1), A130842(n+1)]`
-/

namespace A043037.P8779320936491550899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P8779320936491550899

/-! ## A043037.P16898983345323775344

`∩[A029951(n+1), A116727(n+1)]`
-/

namespace A043037.P16898983345323775344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P16898983345323775344

/-! ## A043037.P17945639894880532869

`∩[A029951(n+1), A130842(n+1)]`
-/

namespace A043037.P17945639894880532869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P17945639894880532869

/-! ## A043037.P6856785049533808023

`∩[A083158(n+1), A130842(n+1)]`
-/

namespace A043037.P6856785049533808023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P6856785049533808023

/-! ## A043037.P15994119268452882042

`∩[A002113(n+1), A277589(n+1)]`
-/

namespace A043037.P15994119268452882042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P15994119268452882042

/-! ## A043037.P3351885916264745098

`∩[A029951(n+1), A277589(n+1)]`
-/

namespace A043037.P3351885916264745098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P3351885916264745098

/-! ## A043037.P12125714718912401073

`∩[A083158(n+1), A277589(n+1)]`
-/

namespace A043037.P12125714718912401073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P12125714718912401073

/-! ## A043037.P13403328064030745563

`∩[A002113(n+1), A008592(n)+2]`
-/

namespace A043037.P13403328064030745563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043037.P13403328064030745563

/-!
# A043038: Base-10 palindromes that starts with 3.

The programs for A043038, there is no canonical definition to state claims against.
-/

/-! ## A043038.P6089468703616302576

`(A043039(n+1)+A043037(n+1))/2`
-/

namespace A043038.P6089468703616302576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043039 (n + 1) + A043037 (n + 1) : ℚ) / 2

end

end A043038.P6089468703616302576

/-! ## A043038.P17947939602211264406

`2*A043041(n+1)-A043044(n+1)`
-/

namespace A043038.P17947939602211264406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043041 (n + 1) - A043044 (n + 1)

end

end A043038.P17947939602211264406

/-! ## A043038.P11915046760234349273

`(3*A043042(n+1))%A043044(n+1)`
-/

namespace A043038.P11915046760234349273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A043042 (n + 1)) (A043044 (n + 1))

end

end A043038.P11915046760234349273

/-! ## A043038.P8555703917456463164

`A043036(n+1)+A043044(n+1)-A043042(n+1)`
-/

namespace A043038.P8555703917456463164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1) + (A043044 (n + 1) - A043042 (n + 1))

end

end A043038.P8555703917456463164

/-! ## A043038.P10073422657148307540

`A043039(n+1)+A043041(n+1)-A043042(n+1)`
-/

namespace A043038.P10073422657148307540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043039 (n + 1) + (A043041 (n + 1) - A043042 (n + 1))

end

end A043038.P10073422657148307540

/-! ## A043038.P11645181392831290183

`record[A055483(10*n+3)]`
-/

namespace A043038.P11645181392831290183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (10 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043038.P11645181392831290183

/-! ## A043038.P493822060960834172

`∩[A217395(2*n+1), A002113(n+2)]`
-/

namespace A043038.P493822060960834172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217395 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043038.P493822060960834172

/-! ## A043038.P2380548810445873567

`∩[A217395(2*n+1), A029950(n+2)]`
-/

namespace A043038.P2380548810445873567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217395 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043038.P2380548810445873567

/-! ## A043038.P5470540681972475496

`∩[A217395(2*n+1), A098897(n+2)]`
-/

namespace A043038.P5470540681972475496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217395 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043038.P5470540681972475496

/-!
# A043039: Palindromes that start with 4.

The programs for A043039, there is no canonical definition to state claims against.
-/

/-! ## A043039.P17934773278879469396

`2*A043038(n+1)-A043037(n+1)`
-/

namespace A043039.P17934773278879469396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043038 (n + 1) - A043037 (n + 1)

end

end A043039.P17934773278879469396

/-! ## A043039.P12249803455997429176

`(A043041(n+1)+A043037(n+1))/2`
-/

namespace A043039.P12249803455997429176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043041 (n + 1) + A043037 (n + 1) : ℚ) / 2

end

end A043039.P12249803455997429176

/-! ## A043039.P6550129765192699351

`(A043042(n+1)+A043036(n+1))/2`
-/

namespace A043039.P6550129765192699351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043042 (n + 1) + A043036 (n + 1) : ℚ) / 2

end

end A043039.P6550129765192699351

/-! ## A043039.P11722268301864230146

`(3*A043041(n+1))%A043042(n+1)`
-/

namespace A043039.P11722268301864230146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A043041 (n + 1)) (A043042 (n + 1))

end

end A043039.P11722268301864230146

/-! ## A043039.P13036172010108007158

`A043037(n+1)+A043044(n+1)-A043042(n+1)`
-/

namespace A043039.P13036172010108007158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043037 (n + 1) + (A043044 (n + 1) - A043042 (n + 1))

end

end A043039.P13036172010108007158

/-! ## A043039.P16440340663605449830

`A043040(n+2)+A043040(n+2)-A043041(n+1)`
-/

namespace A043039.P16440340663605449830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043040 (n + 2) + (A043040 (n + 2) - A043041 (n + 1))

end

end A043039.P16440340663605449830

/-! ## A043039.P3391834666492272173

`A014682(A043042(n+1)+A043036(n+1))`
-/

namespace A043039.P3391834666492272173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043042 (n + 1) + A043036 (n + 1)).toNat

end

end A043039.P3391834666492272173

/-! ## A043039.P17642556959820140442

`A273943(A043042(n+1)+A043036(n+1))`
-/

namespace A043039.P17642556959820140442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A043042 (n + 1) + A043036 (n + 1)).toNat

end

end A043039.P17642556959820140442

/-!
# A043040: Numbers that are palindromic and divisible by 5.

The programs for A043040, there is no canonical definition to state claims against.
-/

/-! ## A043040.P15556030994753105259

`∩[5*n, A002113(n+1)]`
-/

namespace A043040.P15556030994753105259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043040.P15556030994753105259

/-! ## A043040.P10329455569825536539

`∩[A002113(n+1), A008587(n)]`
-/

namespace A043040.P10329455569825536539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043040.P10329455569825536539

/-! ## A043040.P11309132214849155554

`∩[A002113(n+1), A002518(A002518(n))]`
-/

namespace A043040.P11309132214849155554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002518 (A002518 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043040.P11309132214849155554

/-! ## A043040.P8840203191004719516

`∩[A002113(n+1), A047215(A005843(n))]`
-/

namespace A043040.P8840203191004719516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 (A005843 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043040.P8840203191004719516

/-!
# A043041: Base-10 palindromes that start with 6.

The programs for A043041, there is no canonical definition to state claims against.
-/

/-! ## A043041.P16567802932798894651

`2*A043039(n+1)-A043037(n+1)`
-/

namespace A043041.P16567802932798894651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043039 (n + 1) - A043037 (n + 1)

end

end A043041.P16567802932798894651

/-! ## A043041.P18178961154002922109

`(A043044(n+1)+A043038(n+1))/2`
-/

namespace A043041.P18178961154002922109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043044 (n + 1) + A043038 (n + 1) : ℚ) / 2

end

end A043041.P18178961154002922109

/-! ## A043041.P10087638907016769741

`A043037(n+1)+A043042(n+1)-A043038(n+1)`
-/

namespace A043041.P10087638907016769741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043037 (n + 1) + (A043042 (n + 1) - A043038 (n + 1))

end

end A043041.P10087638907016769741

/-! ## A043041.P118672445088728023

`A043039(n+1)+A043044(n+1)-A043042(n+1)`
-/

namespace A043041.P118672445088728023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043039 (n + 1) + (A043044 (n + 1) - A043042 (n + 1))

end

end A043041.P118672445088728023

/-! ## A043041.P11625913721192953580

`∩[2*A217395(n+1), A002113(n+1)]`
-/

namespace A043041.P11625913721192953580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043041.P11625913721192953580

/-!
# A043042: Base-10 palindromes that start with 7.

The programs for A043042, there is no canonical definition to state claims against.
-/

/-! ## A043042.P319703756509838409

`2*A043039(n+1)-A043036(n+1)`
-/

namespace A043042.P319703756509838409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043039 (n + 1) - A043036 (n + 1)

end

end A043042.P319703756509838409

/-! ## A043042.P8297721450503267186

`A043036(n+1)+A043044(n+1)-A043038(n+1)`
-/

namespace A043042.P8297721450503267186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1) + (A043044 (n + 1) - A043038 (n + 1))

end

end A043042.P8297721450503267186

/-! ## A043042.P17238654240647548546

`A043037(n+1)+A043044(n+1)-A043039(n+1)`
-/

namespace A043042.P17238654240647548546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043037 (n + 1) + (A043044 (n + 1) - A043039 (n + 1))

end

end A043042.P17238654240647548546

/-! ## A043042.P2135076379691970778

`A043038(n+1)+A043041(n+1)-A043037(n+1)`
-/

namespace A043042.P2135076379691970778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1) + (A043041 (n + 1) - A043037 (n + 1))

end

end A043042.P2135076379691970778

/-! ## A043042.P8899414141798139523

`A043039(n+1)+A043041(n+1)-A043038(n+1)`
-/

namespace A043042.P8899414141798139523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043039 (n + 1) + (A043041 (n + 1) - A043038 (n + 1))

end

end A043042.P8899414141798139523

/-! ## A043042.P10034185090880912339

`A043041(n+1)+A043041(n+1)-A043040(n+2)`
-/

namespace A043042.P10034185090880912339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043041 (n + 1) + (A043041 (n + 1) - A043040 (n + 2))

end

end A043042.P10034185090880912339

/-! ## A043042.P17872846417552001542

`∩[A217400(2*n+1), A002113(n+2)]`
-/

namespace A043042.P17872846417552001542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217400 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043042.P17872846417552001542

/-! ## A043042.P13030336584833331018

`∩[A217400(2*n+1), A029950(n+2)]`
-/

namespace A043042.P13030336584833331018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217400 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043042.P13030336584833331018

/-! ## A043042.P14822162697569485805

`∩[A217400(2*n+1), A098897(n+2)]`
-/

namespace A043042.P14822162697569485805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217400 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043042.P14822162697569485805

/-!
# A043043: Base 10 palindromes that start with 8.

The programs for A043043, there is no canonical definition to state claims against.
-/

/-! ## A043043.P11485410288451256807

`2*A043041(n+1)-A043039(n+1)`
-/

namespace A043043.P11485410288451256807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043041 (n + 1) - A043039 (n + 1)

end

end A043043.P11485410288451256807

/-! ## A043043.P12644944719146506848

`2*A043042(n+1)-A043041(n+1)`
-/

namespace A043043.P12644944719146506848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043042 (n + 1) - A043041 (n + 1)

end

end A043043.P12644944719146506848

/-! ## A043043.P12760846688627409462

`(A043044(n+1)+A043042(n+1))/2`
-/

namespace A043043.P12760846688627409462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043044 (n + 1) + A043042 (n + 1) : ℚ) / 2

end

end A043043.P12760846688627409462

/-! ## A043043.P15421269510001013350

`A043038(n+1)+A043042(n+1)-A043037(n+1)`
-/

namespace A043043.P15421269510001013350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1) + (A043042 (n + 1) - A043037 (n + 1))

end

end A043043.P15421269510001013350

/-! ## A043043.P15053647589269887636

`A043038(n+1)+A043044(n+1)-A043039(n+1)`
-/

namespace A043043.P15053647589269887636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1) + (A043044 (n + 1) - A043039 (n + 1))

end

end A043043.P15053647589269887636

/-! ## A043043.P3783800531840416908

`A043040(n+2)+A043040(n+2)-A043037(n+1)`
-/

namespace A043043.P3783800531840416908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043040 (n + 2) + (A043040 (n + 2) - A043037 (n + 1))

end

end A043043.P3783800531840416908

/-! ## A043043.P5273861960645897100

`∩[2*A217397(n+1), A002113(n+1)]`
-/

namespace A043043.P5273861960645897100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043043.P5273861960645897100

/-! ## A043043.P7365072912170188982

`∩[2*A217397(n+1), A029951(n+1)]`
-/

namespace A043043.P7365072912170188982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043043.P7365072912170188982

/-! ## A043043.P13695675697429695901

`∩[2*A217397(n+1), A032350(n+1)]`
-/

namespace A043043.P13695675697429695901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043043.P13695675697429695901

/-! ## A043043.P4187215174304484852

`∩[A029951(n+1), A167621(n+1)]`
-/

namespace A043043.P4187215174304484852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043043.P4187215174304484852

/-! ## A043043.P4953162191056418773

`∩[A167621(2*(n+1)), A325322(n+2)]`
-/

namespace A043043.P4953162191056418773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167621 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043043.P4953162191056418773

/-!
# A043044: Palindromes that start with 9.

The programs for A043044, there is no canonical definition to state claims against.
-/

/-! ## A043044.P7007622486483419630

`2*A043041(n+1)-A043038(n+1)`
-/

namespace A043044.P7007622486483419630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043041 (n + 1) - A043038 (n + 1)

end

end A043044.P7007622486483419630

/-! ## A043044.P13646110934378177962

`A043038(n+1)+A043042(n+1)-A043036(n+1)`
-/

namespace A043044.P13646110934378177962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043038 (n + 1) + (A043042 (n + 1) - A043036 (n + 1))

end

end A043044.P13646110934378177962

/-! ## A043044.P15855361868948978276

`A043039(n+1)+A043042(n+1)-A043037(n+1)`
-/

namespace A043044.P15855361868948978276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043039 (n + 1) + (A043042 (n + 1) - A043037 (n + 1))

end

end A043044.P15855361868948978276

/-! ## A043044.P13426017705720132235

`A043041(n+1)+A043042(n+1)-A043039(n+1)`
-/

namespace A043044.P13426017705720132235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043041 (n + 1) + (A043042 (n + 1) - A043039 (n + 1))

end

end A043044.P13426017705720132235

/-! ## A043044.P674988465439767087

`A273943(A043042(n+1)-A043038(n+1))+A043042(n+1)`
-/

namespace A043044.P674988465439767087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A043042 (n + 1) - A043038 (n + 1)).toNat + A043042 (n + 1)

end

end A043044.P674988465439767087

/-! ## A043044.P7205580824783325281

`∩[A217402(2*n+1), A002113(n+2)]`
-/

namespace A043044.P7205580824783325281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217402 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043044.P7205580824783325281

/-! ## A043044.P4498131966021693063

`∩[A217402(2*n+1), A029950(n+2)]`
-/

namespace A043044.P4498131966021693063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217402 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043044.P4498131966021693063

/-! ## A043044.P17771928209587437339

`∩[A217402(2*n+1), A098897(n+2)]`
-/

namespace A043044.P17771928209587437339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217402 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043044.P17771928209587437339

/-!
# A043045: a(n)=(s(n)+2)/3, where s(n)=n-th base 3 palindrome that starts with 1.

The programs for A043045, there is no canonical definition to state claims against.
-/

/-! ## A043045.P5827377961400001165

`ceil(A043001(n+1)/3)`
-/

namespace A043045.P5827377961400001165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043001 (n + 1) : ℚ) / 3⌉

end

end A043045.P5827377961400001165

/-! ## A043045.P10492359065200189772

`floor(A043001(-xor(n, -1))/3)+1`
-/

namespace A043045.P10492359065200189772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043001 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 3⌋ + 1

end

end A043045.P10492359065200189772

/-! ## A043045.P7005959480715422631

`floor(A043001(abs(2*n+1-n))/3)+1`
-/

namespace A043045.P7005959480715422631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043001 |(2 * n + 1 : ℤ) - (n : ℤ)|.toNat : ℚ) / 3⌋ + 1

end

end A043045.P7005959480715422631

/-! ## A043045.P8980545417660077892

`floor(A043001(n+1)/3)%A000141(n)+1`
-/

namespace A043045.P8980545417660077892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A043001 (n + 1) : ℚ) / 3⌋ (A000141 n) + 1

end

end A043045.P8980545417660077892

/-! ## A043045.P17152385103960265063

`A000027(floor(A043001(n+1)/3)+1)`
-/

namespace A043045.P17152385103960265063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊(A043001 (n + 1) : ℚ) / 3⌋ + 1).toNat

end

end A043045.P17152385103960265063

/-! ## A043045.P2312943166554316085

`record[A265511(3*n+1)-2*n]`
-/

namespace A043045.P2312943166554316085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 (3 * n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043045.P2312943166554316085

/-! ## A043045.P15960701051460047321

`A008620(A043001(n+1))`
-/

namespace A043045.P15960701051460047321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A043001 (n + 1)).toNat

end

end A043045.P15960701051460047321

/-! ## A043045.P6528953282733771953

`record[A117910(A014190(n+1))]`
-/

namespace A043045.P6528953282733771953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A014190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043045.P6528953282733771953

/-! ## A043045.P3878365270460225186

`A002264(A043001(n+1)+2)`
-/

namespace A043045.P3878365270460225186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A043001 (n + 1) + 2).toNat

end

end A043045.P3878365270460225186

/-! ## A043045.P15051241865158779786

`A175676(A043001(n+1)+2)`
-/

namespace A043045.P15051241865158779786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A043001 (n + 1) + 2).toNat

end

end A043045.P15051241865158779786

/-! ## A043045.P6239830983814441224

`A008620(record[A265511(A016777(n))])`
-/

namespace A043045.P6239830983814441224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043045.P6239830983814441224

/-!
# A043046: a(n) = (s(n)+1)/3, where s(n) = n-th base 3 palindrome that starts with 2.

The programs for A043046, there is no canonical definition to state claims against.
-/

/-! ## A043046.P12848377907310234025

`ceil(A043002(n+1)/3)`
-/

namespace A043046.P12848377907310234025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043002 (n + 1) : ℚ) / 3⌉

end

end A043046.P12848377907310234025

/-! ## A043046.P3372068910389955157

`round(A043002(n+1)/3)%A157446(n+1)`
-/

namespace A043046.P3372068910389955157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A043002 (n + 1) : ℚ) / 3)) (A157446 (n + 1))

end

end A043046.P3372068910389955157

/-! ## A043046.P7837304225046367700

`round(A043002(A000007(n+1)+n+1)/3)`
-/

namespace A043046.P7837304225046367700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043002 (A000007 (n + 1) + (n + 1 : ℤ)).toNat : ℚ) / 3)

end

end A043046.P7837304225046367700

/-! ## A043046.P14804947874655754844

`floor(tanh(A086436(n+6))+A043002(n+1)/3)`
-/

namespace A043046.P14804947874655754844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (A086436 (n + 6) : ℝ) + ((A043002 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A043046.P14804947874655754844

/-! ## A043046.P17086457248010454875

`round(A043002(A014135(3*n+1)+n+1)/3)`
-/

namespace A043046.P17086457248010454875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043002 (A014135 (3 * n + 1) + (n + 1 : ℤ)).toNat : ℚ) / 3)

end

end A043046.P17086457248010454875

/-! ## A043046.P14952323547543968226

`floor(A014963(A000010(33*(n+1)))+A043002(n+1)/3)`
-/

namespace A043046.P14952323547543968226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (A000010 (33 * (n + 1))).toNat : ℚ) + (A043002 (n + 1) : ℚ) / 3⌋

end

end A043046.P14952323547543968226

/-! ## A043046.P14583183366489377821

`(A043002(n+1)+A001222(A054824(n+1)))/3`
-/

namespace A043046.P14583183366489377821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043002 (n + 1) + A001222 (A054824 (n + 1)).toNat : ℚ) / 3

end

end A043046.P14583183366489377821

/-! ## A043046.P16938499951103074854

`A080722(A043045(n+1))`
-/

namespace A043046.P16938499951103074854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 (A043045 (n + 1)).toNat

end

end A043046.P16938499951103074854

/-! ## A043046.P2950291754020241664

`ceil(A157671(A134027(n+2))/3)`
-/

namespace A043046.P2950291754020241664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157671 (A134027 (n + 2)).toNat : ℚ) / 3⌉

end

end A043046.P2950291754020241664

/-! ## A043046.P8030024220983645012

`floor(A014963(A053743(n))+A043002(n+1)/3)`
-/

namespace A043046.P8030024220983645012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (A053743 n).toNat : ℚ) + (A043002 (n + 1) : ℚ) / 3⌋

end

end A043046.P8030024220983645012

/-!
# A043047: a(n) = (s(n)+3)/4, where s(n) is the n-th base-4 palindrome that starts with 1 (A043003).

The programs for A043047, there is no canonical definition to state claims against.
-/

/-! ## A043047.P2572825750149841347

`ceil(A043003(n+1)/4)`
-/

namespace A043047.P2572825750149841347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043003 (n + 1) : ℚ) / 4⌉

end

end A043047.P2572825750149841347

/-! ## A043047.P11267374265476592689

`2*A043048(n+1)-A043049(n+1)`
-/

namespace A043047.P11267374265476592689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043048 (n + 1) - A043049 (n + 1)

end

end A043047.P11267374265476592689

/-! ## A043047.P205523556534926403

`(A043003(n+1)+3)/A176170(A176170(n+1))²`
-/

namespace A043047.P205523556534926403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043003 (n + 1) + 3 : ℚ) / (A176170 (A176170 (n + 1)).toNat ^ 2 : ℚ)

end

end A043047.P205523556534926403

/-! ## A043047.P9579934932600977560

`round(A043003(n+1)/4-A008683(A106904(n+1)))`
-/

namespace A043047.P9579934932600977560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043003 (n + 1) : ℚ) / 4 - (A008683 (A106904 (n + 1)).toNat : ℚ))

end

end A043047.P9579934932600977560

/-! ## A043047.P17502279296865764280

`A166079(A043049(n+1))`
-/

namespace A043047.P17502279296865764280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (A043049 (n + 1)).toNat

end

end A043047.P17502279296865764280

/-! ## A043047.P7087210629422440932

`A006165(A043048(n+1))`
-/

namespace A043047.P7087210629422440932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A043048 (n + 1)).toNat

end

end A043047.P7087210629422440932

/-! ## A043047.P9360977530163785235

`A004277(A043048(n+1))-A043049(n+1)`
-/

namespace A043047.P9360977530163785235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043048 (n + 1)).toNat - A043049 (n + 1)

end

end A043047.P9360977530163785235

/-! ## A043047.P12634592352209335989

`A003602((A043003(n+1)+1)/2)`
-/

namespace A043047.P12634592352209335989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.roundAway ((A043003 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A043047.P12634592352209335989

/-! ## A043047.P17924424967255135393

`A008619((A043003(n+1)+1)/2)`
-/

namespace A043047.P17924424967255135393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A043003 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A043047.P17924424967255135393

/-! ## A043047.P933143814873201962

`A008619(A043004(n+1)%A043049(n+1))`
-/

namespace A043047.P933143814873201962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A043004 (n + 1)) (A043049 (n + 1))).toNat

end

end A043047.P933143814873201962

/-! ## A043047.P14824606659763795275

`A008621(A043003(n+1))`
-/

namespace A043047.P14824606659763795275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A043003 (n + 1)).toNat

end

end A043047.P14824606659763795275

/-! ## A043047.P7969795604620544530

`A003602(A043003(n+1)+1)`
-/

namespace A043047.P7969795604620544530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A043003 (n + 1) + 1).toNat

end

end A043047.P7969795604620544530

/-! ## A043047.P4737196557579690477

`A002265(A043003(n+1)+3)`
-/

namespace A043047.P4737196557579690477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A043003 (n + 1) + 3).toNat

end

end A043047.P4737196557579690477

/-! ## A043047.P1478833516689420056

`A054576(A043003(n+1)+3)`
-/

namespace A043047.P1478833516689420056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A043003 (n + 1) + 3).toNat

end

end A043047.P1478833516689420056

/-! ## A043047.P1399192599972692186

`A131508(A043003(n+1)+3)`
-/

namespace A043047.P1399192599972692186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A043003 (n + 1) + 3).toNat

end

end A043047.P1399192599972692186

/-! ## A043047.P17737972396837637961

`A188134(A043003(n+1)+3)`
-/

namespace A043047.P17737972396837637961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A043003 (n + 1) + 3).toNat

end

end A043047.P17737972396837637961

/-! ## A043047.P2919022886518838874

`A025480(A043003(n+1)+4)`
-/

namespace A043047.P2919022886518838874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A043003 (n + 1) + 4).toNat

end

end A043047.P2919022886518838874

/-!
# A043048: a(n)=(s(n)+2)/4, where s(n)=n-th base 4 palindrome that starts with 2.

The programs for A043048, there is no canonical definition to state claims against.
-/

/-! ## A043048.P13839272155689251955

`ceil(A043004(n+1)/4)`
-/

namespace A043048.P13839272155689251955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043004 (n + 1) : ℚ) / 4⌉

end

end A043048.P13839272155689251955

/-! ## A043048.P365425888268327977

`(A043049(n+1)+A043047(n+1))/2`
-/

namespace A043048.P365425888268327977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043049 (n + 1) + A043047 (n + 1) : ℚ) / 2

end

end A043048.P365425888268327977

/-! ## A043048.P9379628381032755040

`ceil(A014192(eq[2, A014192(n+1)%4]+1)/4)`
-/

namespace A043048.P9379628381032755040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014192 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 4⌉

end

end A043048.P9379628381032755040

/-! ## A043048.P16595399471311537933

`A014682(A043049(n+1)+A043047(n+1))`
-/

namespace A043048.P16595399471311537933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043049 (n + 1) + A043047 (n + 1)).toNat

end

end A043048.P16595399471311537933

/-! ## A043048.P2949047706665284393

`A014682(A043049(n+1)+ceil(A043003(n+1)/4))`
-/

namespace A043048.P2949047706665284393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043049 (n + 1) + ⌈(A043003 (n + 1) : ℚ) / 4⌉).toNat

end

end A043048.P2949047706665284393

/-! ## A043048.P13387930477749133578

`A043047(n+1)+A004525(A043049(n+1)-A043047(n+1))`
-/

namespace A043048.P13387930477749133578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043047 (n + 1) + A004525 (A043049 (n + 1) - A043047 (n + 1)).toNat

end

end A043048.P13387930477749133578

/-! ## A043048.P3678799929229533027

`A394217(A043049(n+1))`
-/

namespace A043048.P3678799929229533027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394217 (A043049 (n + 1)).toNat

end

end A043048.P3678799929229533027

/-! ## A043048.P17320756725936407842

`A000463(A043004(n+1)/2)`
-/

namespace A043048.P17320756725936407842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.roundAway ((A043004 (n + 1) : ℚ) / 2)).toNat

end

end A043048.P17320756725936407842

/-! ## A043048.P10327002090844454344

`A001057(A043004(n+1)/2)`
-/

namespace A043048.P10327002090844454344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.roundAway ((A043004 (n + 1) : ℚ) / 2)).toNat

end

end A043048.P10327002090844454344

/-! ## A043048.P13887960307345329428

`A003602(A043004(n+1)/2)`
-/

namespace A043048.P13887960307345329428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.roundAway ((A043004 (n + 1) : ℚ) / 2)).toNat

end

end A043048.P13887960307345329428

/-! ## A043048.P4531962981477307083

`A008619(A043004(n+1)/2)`
-/

namespace A043048.P4531962981477307083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A043004 (n + 1) : ℚ) / 2)).toNat

end

end A043048.P4531962981477307083

/-! ## A043048.P12323535138127337846

`A004525(A043049(n+1)+A043047(n+1))`
-/

namespace A043048.P12323535138127337846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043049 (n + 1) + A043047 (n + 1)).toNat

end

end A043048.P12323535138127337846

/-!
# A043049: a(n)=(s(n)+1)/4, where s(n)=n-th base 4 palindrome that starts with 3.

The programs for A043049, there is no canonical definition to state claims against.
-/

/-! ## A043049.P5395549701591616714

`ceil(A043005(n+1)/4)`
-/

namespace A043049.P5395549701591616714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043005 (n + 1) : ℚ) / 4⌉

end

end A043049.P5395549701591616714

/-! ## A043049.P7190162839421979869

`2*A043048(n+1)-A043047(n+1)`
-/

namespace A043049.P7190162839421979869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043048 (n + 1) - A043047 (n + 1)

end

end A043049.P7190162839421979869

/-! ## A043049.P10969450187622429049

`ceil(4^A008683(A007304(n+1))*A043005(n+1))`
-/

namespace A043049.P10969450187622429049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) ^ (A008683 (A007304 (n + 1)).toNat : ℤ) * (A043005 (n + 1) : ℚ)⌉

end

end A043049.P10969450187622429049

/-! ## A043049.P6125622169178826962

`(A043004(n+1)+A043004(n+1)-A043003(n+1)+1)/4`
-/

namespace A043049.P6125622169178826962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043004 (n + 1) + (A043004 (n + 1) - A043003 (n + 1)) + 1 : ℚ) / 4

end

end A043049.P6125622169178826962

/-! ## A043049.P10117094276598350862

`floor(A267870(2*n)+A043005(n+1)/4)`
-/

namespace A043049.P10117094276598350862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267870 (2 * n) : ℚ) + (A043005 (n + 1) : ℚ) / 4⌋

end

end A043049.P10117094276598350862

/-! ## A043049.P4310273763471117587

`A014682((A043005(n+1)+1)/2)`
-/

namespace A043049.P4310273763471117587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A043005 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A043049.P4310273763471117587

/-! ## A043049.P15023762000571469015

`A080645(A043048(n+1))`
-/

namespace A043049.P15023762000571469015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080645 (A043048 (n + 1)).toNat

end

end A043049.P15023762000571469015

/-! ## A043049.P16787600132932823685

`A004277(A043048(n+1))-A043047(n+1)`
-/

namespace A043049.P16787600132932823685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043048 (n + 1)).toNat - A043047 (n + 1)

end

end A043049.P16787600132932823685

/-! ## A043049.P12905176201790187687

`A371092(A043005(n+1))`
-/

namespace A043049.P12905176201790187687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (A043005 (n + 1)).toNat

end

end A043049.P12905176201790187687

/-! ## A043049.P16109454980383299855

`ceil(A063946(A043004(n+1))/4)`
-/

namespace A043049.P16109454980383299855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063946 (A043004 (n + 1)).toNat : ℚ) / 4⌉

end

end A043049.P16109454980383299855

/-! ## A043049.P3045308182510554576

`A008619(A080542(A043003(n+1)))`
-/

namespace A043049.P3045308182510554576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A080542 (A043003 (n + 1)).toNat).toNat

end

end A043049.P3045308182510554576

/-!
# A043050: a(n)=(s(n)+4)/5, where s(n)=n-th base 5 palindrome that starts with 1.

The programs for A043050, there is no canonical definition to state claims against.
-/

/-! ## A043050.P3909341346808333160

`ceil(A043006(n+1)/5)`
-/

namespace A043050.P3909341346808333160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043006 (n + 1) : ℚ) / 5⌉

end

end A043050.P3909341346808333160

/-! ## A043050.P13129462070786729889

`2*A043051(n+1)-A043052(n+1)`
-/

namespace A043050.P13129462070786729889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043051 (n + 1) - A043052 (n + 1)

end

end A043050.P13129462070786729889

/-! ## A043050.P3812569489116347018

`(2*A043007(n+1)-A043008(n+1)+4)/5`
-/

namespace A043050.P3812569489116347018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A043007 (n + 1) - A043008 (n + 1) + 4 : ℚ) / 5

end

end A043050.P3812569489116347018

/-! ## A043050.P1033173282054852264

`((3*A043008(n+1))%A043009(n+1)+4)/5`
-/

namespace A043050.P1033173282054852264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (3 * A043008 (n + 1)) (A043009 (n + 1)) + 4 : ℚ) / 5

end

end A043050.P1033173282054852264

/-! ## A043050.P14221063763760531983

`A043051(n+1)+A043052(n+1)-A043053(n+1)`
-/

namespace A043050.P14221063763760531983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043051 (n + 1) + (A043052 (n + 1) - A043053 (n + 1))

end

end A043050.P14221063763760531983

/-! ## A043050.P15751856355649478775

`(A043007(n+1)+A043008(n+1)-A043009(n+1)+4)/5`
-/

namespace A043050.P15751856355649478775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043007 (n + 1) + (A043008 (n + 1) - A043009 (n + 1)) + 4 : ℚ) / 5

end

end A043050.P15751856355649478775

/-! ## A043050.P15411863207405472820

`A043051(n+1)-A014682(A043053(n+1)-A043051(n+1))`
-/

namespace A043050.P15411863207405472820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043051 (n + 1) - A014682 (A043053 (n + 1) - A043051 (n + 1)).toNat

end

end A043050.P15411863207405472820

/-! ## A043050.P1880710687021713996

`A004277(A043051(n+1))-A043052(n+1)`
-/

namespace A043050.P1880710687021713996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043051 (n + 1)).toNat - A043052 (n + 1)

end

end A043050.P1880710687021713996

/-! ## A043050.P3563224624062889071

`A004277(ceil(A043007(n+1)/5))-A043052(n+1)`
-/

namespace A043050.P3563224624062889071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌈(A043007 (n + 1) : ℚ) / 5⌉.toNat - A043052 (n + 1)

end

end A043050.P3563224624062889071

/-! ## A043050.P15936584465404413399

`A004277(A043051(n+1))-ceil(A043008(n+1)/5)`
-/

namespace A043050.P15936584465404413399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043051 (n + 1)).toNat - ⌈(A043008 (n + 1) : ℚ) / 5⌉

end

end A043050.P15936584465404413399

/-! ## A043050.P16079611024782948086

`A043051(n+1)-A004525(A043053(n+1)-A043051(n+1))`
-/

namespace A043050.P16079611024782948086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043051 (n + 1) - A004525 (A043053 (n + 1) - A043051 (n + 1)).toNat

end

end A043050.P16079611024782948086

/-! ## A043050.P3228936380069670844

`A043051(n+1)-A029578(A043053(n+1)-A043051(n+1))`
-/

namespace A043050.P3228936380069670844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043051 (n + 1) - A029578 (A043053 (n + 1) - A043051 (n + 1)).toNat

end

end A043050.P3228936380069670844

/-!
# A043051: a(n)=(s(n)+3)/5, where s(n)=n-th base 5 palindrome that starts with 2.

The programs for A043051, there is no canonical definition to state claims against.
-/

/-! ## A043051.P3419152505879354383

`ceil(A043007(n+1)/5)`
-/

namespace A043051.P3419152505879354383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043007 (n + 1) : ℚ) / 5⌉

end

end A043051.P3419152505879354383

/-! ## A043051.P4825839893971903690

`2*A043052(n+1)-A043053(n+1)`
-/

namespace A043051.P4825839893971903690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043052 (n + 1) - A043053 (n + 1)

end

end A043051.P4825839893971903690

/-! ## A043051.P13025610013913069127

`(A043052(n+1)+A043050(n+1))/2`
-/

namespace A043051.P13025610013913069127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043052 (n + 1) + A043050 (n + 1) : ℚ) / 2

end

end A043051.P13025610013913069127

/-! ## A043051.P17520380197331375465

`A043050(n+1)+A043053(n+1)-A043052(n+1)`
-/

namespace A043051.P17520380197331375465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043050 (n + 1) + (A043053 (n + 1) - A043052 (n + 1))

end

end A043051.P17520380197331375465

/-! ## A043051.P9893868479757200120

`A014682(A043052(n+1)+A043050(n+1))`
-/

namespace A043051.P9893868479757200120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043052 (n + 1) + A043050 (n + 1)).toNat

end

end A043051.P9893868479757200120

/-! ## A043051.P15148712584478542656

`A038572(A043052(n+1)+A043050(n+1))`
-/

namespace A043051.P15148712584478542656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A043052 (n + 1) + A043050 (n + 1)).toNat

end

end A043051.P15148712584478542656

/-! ## A043051.P13361856482088676998

`A043050(n+1)+A004525(A043052(n+1)-A043050(n+1))`
-/

namespace A043051.P13361856482088676998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043050 (n + 1) + A004525 (A043052 (n + 1) - A043050 (n + 1)).toNat

end

end A043051.P13361856482088676998

/-! ## A043051.P4762532893243945215

`A043050(n+1)+A029578(A043052(n+1)-A043050(n+1))`
-/

namespace A043051.P4762532893243945215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043050 (n + 1) + A029578 (A043052 (n + 1) - A043050 (n + 1)).toNat

end

end A043051.P4762532893243945215

/-! ## A043051.P17879137791437462178

`A004277(A043052(n+1))-A043053(n+1)`
-/

namespace A043051.P17879137791437462178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043052 (n + 1)).toNat - A043053 (n + 1)

end

end A043051.P17879137791437462178

/-! ## A043051.P13282024608343903008

`A138997(A043007(n+1))`
-/

namespace A043051.P13282024608343903008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A043007 (n + 1)).toNat

end

end A043051.P13282024608343903008

/-!
# A043052: a(n)=(s(n)+2)/5, where s(n)=n-th base 5 palindrome that starts with 3.

The programs for A043052, there is no canonical definition to state claims against.
-/

/-! ## A043052.P8707246340607577490

`ceil(A043008(n+1)/5)`
-/

namespace A043052.P8707246340607577490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043008 (n + 1) : ℚ) / 5⌉

end

end A043052.P8707246340607577490

/-! ## A043052.P14077748535139066518

`2*A043051(n+1)-A043050(n+1)`
-/

namespace A043052.P14077748535139066518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043051 (n + 1) - A043050 (n + 1)

end

end A043052.P14077748535139066518

/-! ## A043052.P8021754455816791320

`(A043053(n+1)+A043051(n+1))/2`
-/

namespace A043052.P8021754455816791320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043053 (n + 1) + A043051 (n + 1) : ℚ) / 2

end

end A043052.P8021754455816791320

/-! ## A043052.P3868379014546680412

`ceil((2*A043007(n+1)-A043006(n+1))/5)`
-/

namespace A043052.P3868379014546680412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A043007 (n + 1) - A043006 (n + 1) : ℚ) / 5⌉

end

end A043052.P3868379014546680412

/-! ## A043052.P2939888282081862802

`A043050(n+1)+A043053(n+1)-A043051(n+1)`
-/

namespace A043052.P2939888282081862802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043050 (n + 1) + (A043053 (n + 1) - A043051 (n + 1))

end

end A043052.P2939888282081862802

/-! ## A043052.P14887506979013314130

`floor(A043008(n+1)/5-A260196(3*(n+1)))`
-/

namespace A043052.P14887506979013314130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043008 (n + 1) : ℚ) / 5 - (A260196 (3 * (n + 1)) : ℚ)⌋

end

end A043052.P14887506979013314130

/-! ## A043052.P12926017175012196471

`A043051(n+1)+A014682(A043053(n+1)-A043051(n+1))`
-/

namespace A043052.P12926017175012196471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043051 (n + 1) + A014682 (A043053 (n + 1) - A043051 (n + 1)).toNat

end

end A043052.P12926017175012196471

/-! ## A043052.P7945419751572211194

`A014682(A043053(n+1)+A043051(n+1))`
-/

namespace A043052.P7945419751572211194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043053 (n + 1) + A043051 (n + 1)).toNat

end

end A043052.P7945419751572211194

/-! ## A043052.P11393824795572646503

`A004277(A043051(n+1))-A043050(n+1)`
-/

namespace A043052.P11393824795572646503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043051 (n + 1)).toNat - A043050 (n + 1)

end

end A043052.P11393824795572646503

/-! ## A043052.P1929469609696056089

`A043051(n+1)+A004525(A043053(n+1)-A043051(n+1))`
-/

namespace A043052.P1929469609696056089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043051 (n + 1) + A004525 (A043053 (n + 1) - A043051 (n + 1)).toNat

end

end A043052.P1929469609696056089

/-! ## A043052.P1994852767575050887

`A043051(n+1)+A029578(A043053(n+1)-A043051(n+1))`
-/

namespace A043052.P1994852767575050887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043051 (n + 1) + A029578 (A043053 (n + 1) - A043051 (n + 1)).toNat

end

end A043052.P1994852767575050887

/-!
# A043053: a(n) = (s(n) + 1)/5, where s(n) = n-th base-5 palindrome that starts with 4.

The programs for A043053, there is no canonical definition to state claims against.
-/

/-! ## A043053.P5842515056206812173

`ceil(A043009(n+1)/5)`
-/

namespace A043053.P5842515056206812173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043009 (n + 1) : ℚ) / 5⌉

end

end A043053.P5842515056206812173

/-! ## A043053.P18376163173903013883

`2*A043052(n+1)-A043051(n+1)`
-/

namespace A043053.P18376163173903013883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043052 (n + 1) - A043051 (n + 1)

end

end A043053.P18376163173903013883

/-! ## A043053.P13050963330543042155

`round(A043009(n+1)/5)%A076456(n+1)`
-/

namespace A043053.P13050963330543042155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A043009 (n + 1) : ℚ) / 5)) (A076456 (n + 1))

end

end A043053.P13050963330543042155

/-! ## A043053.P4407758632970848364

`A043051(n+1)+A043052(n+1)-A043050(n+1)`
-/

namespace A043053.P4407758632970848364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043051 (n + 1) + (A043052 (n + 1) - A043050 (n + 1))

end

end A043053.P4407758632970848364

/-! ## A043053.P8397522647610438100

`(A043009(n+1)-A057428(A190334(n+1)))/5`
-/

namespace A043053.P8397522647610438100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043009 (n + 1) - A057428 (A190334 (n + 1)).toNat : ℚ) / 5

end

end A043053.P8397522647610438100

/-! ## A043053.P7770946826152799859

`A043052(n+1)+A014682(A043052(n+1)-A043050(n+1))`
-/

namespace A043053.P7770946826152799859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043052 (n + 1) + A014682 (A043052 (n + 1) - A043050 (n + 1)).toNat

end

end A043053.P7770946826152799859

/-! ## A043053.P318426866353154894

`A043052(n+1)+A004525(A043052(n+1)-A043050(n+1))`
-/

namespace A043053.P318426866353154894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043052 (n + 1) + A004525 (A043052 (n + 1) - A043050 (n + 1)).toNat

end

end A043053.P318426866353154894

/-! ## A043053.P14991067433818133690

`A043052(n+1)+A029578(A043052(n+1)-A043050(n+1))`
-/

namespace A043053.P14991067433818133690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043052 (n + 1) + A029578 (A043052 (n + 1) - A043050 (n + 1)).toNat

end

end A043053.P14991067433818133690

/-! ## A043053.P10331091926373163264

`A043052(n+1)+A038572(A043052(n+1)-A043050(n+1))`
-/

namespace A043053.P10331091926373163264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043052 (n + 1) + A038572 (A043052 (n + 1) - A043050 (n + 1)).toNat

end

end A043053.P10331091926373163264

/-! ## A043053.P66865128668672892

`A004277(A043052(n+1))-A043051(n+1)`
-/

namespace A043053.P66865128668672892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043052 (n + 1)).toNat - A043051 (n + 1)

end

end A043053.P66865128668672892

/-!
# A043054: a(n)=(s(n)+5)/6, where s(n)=n-th base 6 palindrome that starts with 1.

The programs for A043054, there is no canonical definition to state claims against.
-/

/-! ## A043054.P11710891857331859031

`ceil(A043010(n+1)/6)`
-/

namespace A043054.P11710891857331859031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043010 (n + 1) : ℚ) / 6⌉

end

end A043054.P11710891857331859031

/-! ## A043054.P7423343925007359195

`2*A043055(n+1)-A043056(n+1)`
-/

namespace A043054.P7423343925007359195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043055 (n + 1) - A043056 (n + 1)

end

end A043054.P7423343925007359195

/-! ## A043054.P5466788904632483101

`2*A043056(n+1)-A043058(n+1)`
-/

namespace A043054.P5466788904632483101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043056 (n + 1) - A043058 (n + 1)

end

end A043054.P5466788904632483101

/-! ## A043054.P16061077473952031847

`A043055(n+1)+A043056(n+1)-A043057(n+1)`
-/

namespace A043054.P16061077473952031847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043055 (n + 1) + (A043056 (n + 1) - A043057 (n + 1))

end

end A043054.P16061077473952031847

/-! ## A043054.P7278325071721017961

`A043055(n+1)+A043057(n+1)-A043058(n+1)`
-/

namespace A043054.P7278325071721017961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043055 (n + 1) + (A043057 (n + 1) - A043058 (n + 1))

end

end A043054.P7278325071721017961

/-! ## A043054.P12852707379080648120

`A043056(n+1)-A005843(A043057(n+1)-A043056(n+1))`
-/

namespace A043054.P12852707379080648120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043056 (n + 1) - A005843 (A043057 (n + 1) - A043056 (n + 1)).toNat

end

end A043054.P12852707379080648120

/-! ## A043054.P3997288524075878598

`A004277(A043055(n+1))-A043056(n+1)`
-/

namespace A043054.P3997288524075878598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043055 (n + 1)).toNat - A043056 (n + 1)

end

end A043054.P3997288524075878598

/-! ## A043054.P17370487654319035132

`A004277(A043056(n+1))-A043058(n+1)`
-/

namespace A043054.P17370487654319035132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043056 (n + 1)).toNat - A043058 (n + 1)

end

end A043054.P17370487654319035132

/-! ## A043054.P16669375813782800048

`A008486(A043056(n+1))-2*A043057(n+1)`
-/

namespace A043054.P16669375813782800048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A043056 (n + 1)).toNat - 2 * A043057 (n + 1)

end

end A043054.P16669375813782800048

/-! ## A043054.P303032483097957686

`A008486(A043056(n+1))-A005843(A043057(n+1))`
-/

namespace A043054.P303032483097957686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A043056 (n + 1)).toNat - A005843 (A043057 (n + 1)).toNat

end

end A043054.P303032483097957686

/-!
# A043055: a(n)=(s(n)+4)/6, where s(n)=n-th base 6 palindrome that starts with 2.

The programs for A043055, there is no canonical definition to state claims against.
-/

/-! ## A043055.P18258059765234620196

`ceil(A043011(n+1)/6)`
-/

namespace A043055.P18258059765234620196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043011 (n + 1) : ℚ) / 6⌉

end

end A043055.P18258059765234620196

/-! ## A043055.P18347457646862096278

`2*A043056(n+1)-A043057(n+1)`
-/

namespace A043055.P18347457646862096278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043056 (n + 1) - A043057 (n + 1)

end

end A043055.P18347457646862096278

/-! ## A043055.P13476446125831023653

`(A043056(n+1)+A043054(n+1))/2`
-/

namespace A043055.P13476446125831023653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043056 (n + 1) + A043054 (n + 1) : ℚ) / 2

end

end A043055.P13476446125831023653

/-! ## A043055.P14447874599780332823

`round(A043011(n+1)/6)+A309873(n+1)²`
-/

namespace A043055.P14447874599780332823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043011 (n + 1) : ℚ) / 6) + A309873 (n + 1) ^ 2

end

end A043055.P14447874599780332823

/-! ## A043055.P9607015198933906343

`A043054(n+1)+A043057(n+1)-A043056(n+1)`
-/

namespace A043055.P9607015198933906343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043054 (n + 1) + (A043057 (n + 1) - A043056 (n + 1))

end

end A043055.P9607015198933906343

/-! ## A043055.P14864594163446016580

`A043054(n+1)+A043058(n+1)-A043057(n+1)`
-/

namespace A043055.P14864594163446016580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043054 (n + 1) + (A043058 (n + 1) - A043057 (n + 1))

end

end A043055.P14864594163446016580

/-! ## A043055.P5063678202219554470

`A043057(n+1)-A005843(A043057(n+1)-A043056(n+1))`
-/

namespace A043055.P5063678202219554470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043057 (n + 1) - A005843 (A043057 (n + 1) - A043056 (n + 1)).toNat

end

end A043055.P5063678202219554470

/-! ## A043055.P16626018989992824494

`A001281(A043056(n+1)+A043054(n+1))`
-/

namespace A043055.P16626018989992824494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A043056 (n + 1) + A043054 (n + 1)).toNat

end

end A043055.P16626018989992824494

/-! ## A043055.P3562585222872819981

`A004525(A043056(n+1)+A043054(n+1))`
-/

namespace A043055.P3562585222872819981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043056 (n + 1) + A043054 (n + 1)).toNat

end

end A043055.P3562585222872819981

/-! ## A043055.P7086537723539290794

`A004526(A043056(n+1)+A043054(n+1))`
-/

namespace A043055.P7086537723539290794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A043056 (n + 1) + A043054 (n + 1)).toNat

end

end A043055.P7086537723539290794

/-!
# A043056: a(n)=(s(n)+3)/6, where s(n)=n-th base 6 palindrome that starts with 3.

The programs for A043056, there is no canonical definition to state claims against.
-/

/-! ## A043056.P8792561370295294599

`ceil(A043012(n+1)/6)`
-/

namespace A043056.P8792561370295294599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043012 (n + 1) : ℚ) / 6⌉

end

end A043056.P8792561370295294599

/-! ## A043056.P6014975028883672664

`2*A043055(n+1)-A043054(n+1)`
-/

namespace A043056.P6014975028883672664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043055 (n + 1) - A043054 (n + 1)

end

end A043056.P6014975028883672664

/-! ## A043056.P6044211120810186709

`2*A043057(n+1)-A043058(n+1)`
-/

namespace A043056.P6044211120810186709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043057 (n + 1) - A043058 (n + 1)

end

end A043056.P6044211120810186709

/-! ## A043056.P869606735070082407

`(A043057(n+1)+A043055(n+1))/2`
-/

namespace A043056.P869606735070082407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043057 (n + 1) + A043055 (n + 1) : ℚ) / 2

end

end A043056.P869606735070082407

/-! ## A043056.P4794115687319621885

`(A043058(n+1)+A043054(n+1))/2`
-/

namespace A043056.P4794115687319621885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043058 (n + 1) + A043054 (n + 1) : ℚ) / 2

end

end A043056.P4794115687319621885

/-! ## A043056.P11315873866102875993

`A043054(n+1)+A043057(n+1)-A043055(n+1)`
-/

namespace A043056.P11315873866102875993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043054 (n + 1) + (A043057 (n + 1) - A043055 (n + 1))

end

end A043056.P11315873866102875993

/-! ## A043056.P8469281052368678263

`A043055(n+1)+A043058(n+1)-A043057(n+1)`
-/

namespace A043056.P8469281052368678263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043055 (n + 1) + (A043058 (n + 1) - A043057 (n + 1))

end

end A043056.P8469281052368678263

/-! ## A043056.P15118063393301766042

`A004277(A043055(n+1))-A043054(n+1)`
-/

namespace A043056.P15118063393301766042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043055 (n + 1)).toNat - A043054 (n + 1)

end

end A043056.P15118063393301766042

/-! ## A043056.P15897136420203535910

`A004277(A043057(n+1))-A043058(n+1)`
-/

namespace A043056.P15897136420203535910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043057 (n + 1)).toNat - A043058 (n + 1)

end

end A043056.P15897136420203535910

/-! ## A043056.P10935092315599083101

`A000463(A043012(n+1)/3)`
-/

namespace A043056.P10935092315599083101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.roundAway ((A043012 (n + 1) : ℚ) / 3)).toNat

end

end A043056.P10935092315599083101

/-!
# A043057: a(n)=(s(n)+2)/6, where s(n)=n-th base 6 palindrome that starts with 4.

The programs for A043057, there is no canonical definition to state claims against.
-/

/-! ## A043057.P6158618224386771638

`ceil(A043013(n+1)/6)`
-/

namespace A043057.P6158618224386771638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043013 (n + 1) : ℚ) / 6⌉

end

end A043057.P6158618224386771638

/-! ## A043057.P5023249693226655250

`2*A043056(n+1)-A043055(n+1)`
-/

namespace A043057.P5023249693226655250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043056 (n + 1) - A043055 (n + 1)

end

end A043057.P5023249693226655250

/-! ## A043057.P16718577940525830744

`(A043058(n+1)+A043056(n+1))/2`
-/

namespace A043057.P16718577940525830744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043058 (n + 1) + A043056 (n + 1) : ℚ) / 2

end

end A043057.P16718577940525830744

/-! ## A043057.P12243790799484983035

`A043054(n+1)+A043058(n+1)-A043055(n+1)`
-/

namespace A043057.P12243790799484983035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043054 (n + 1) + (A043058 (n + 1) - A043055 (n + 1))

end

end A043057.P12243790799484983035

/-! ## A043057.P16752394677466288396

`A043055(n+1)+A043056(n+1)-A043054(n+1)`
-/

namespace A043057.P16752394677466288396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043055 (n + 1) + (A043056 (n + 1) - A043054 (n + 1))

end

end A043057.P16752394677466288396

/-! ## A043057.P8606117468858319745

`A043055(n+1)+A043058(n+1)-A043056(n+1)`
-/

namespace A043057.P8606117468858319745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043055 (n + 1) + (A043058 (n + 1) - A043056 (n + 1))

end

end A043057.P8606117468858319745

/-! ## A043057.P5970577066888044368

`A043055(n+1)+A005843(A043055(n+1)-A043054(n+1))`
-/

namespace A043057.P5970577066888044368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043055 (n + 1) + A005843 (A043055 (n + 1) - A043054 (n + 1)).toNat

end

end A043057.P5970577066888044368

/-! ## A043057.P14491799712041766603

`A004277(A043056(n+1))-A043055(n+1)`
-/

namespace A043057.P14491799712041766603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043056 (n + 1)).toNat - A043055 (n + 1)

end

end A043057.P14491799712041766603

/-! ## A043057.P2920936187490012618

`A008486(A043055(n+1))-2*A043054(n+1)`
-/

namespace A043057.P2920936187490012618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A043055 (n + 1)).toNat - 2 * A043054 (n + 1)

end

end A043057.P2920936187490012618

/-! ## A043057.P12497519213711441998

`A008486(A043055(n+1))-A005843(A043054(n+1))`
-/

namespace A043057.P12497519213711441998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A043055 (n + 1)).toNat - A005843 (A043054 (n + 1)).toNat

end

end A043057.P12497519213711441998

/-!
# A043058: a(n)=(s(n)+1)/6, where s(n)=n-th base 6 palindrome that starts with 5.

The programs for A043058, there is no canonical definition to state claims against.
-/

/-! ## A043058.P6836887376962600529

`ceil(A043014(n+1)/6)`
-/

namespace A043058.P6836887376962600529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043014 (n + 1) : ℚ) / 6⌉

end

end A043058.P6836887376962600529

/-! ## A043058.P355730482756143029

`2*A043056(n+1)-A043054(n+1)`
-/

namespace A043058.P355730482756143029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043056 (n + 1) - A043054 (n + 1)

end

end A043058.P355730482756143029

/-! ## A043058.P2343948734705346842

`2*A043057(n+1)-A043056(n+1)`
-/

namespace A043058.P2343948734705346842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043057 (n + 1) - A043056 (n + 1)

end

end A043058.P2343948734705346842

/-! ## A043058.P8052115721577572602

`A043055(n+1)+A043057(n+1)-A043054(n+1)`
-/

namespace A043058.P8052115721577572602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043055 (n + 1) + (A043057 (n + 1) - A043054 (n + 1))

end

end A043058.P8052115721577572602

/-! ## A043058.P12526923691478286246

`A043056(n+1)+A043057(n+1)-A043055(n+1)`
-/

namespace A043058.P12526923691478286246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043056 (n + 1) + (A043057 (n + 1) - A043055 (n + 1))

end

end A043058.P12526923691478286246

/-! ## A043058.P12587379364692333286

`A043056(n+1)+A005843(A043056(n+1)-A043055(n+1))`
-/

namespace A043058.P12587379364692333286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043056 (n + 1) + A005843 (A043056 (n + 1) - A043055 (n + 1)).toNat

end

end A043058.P12587379364692333286

/-! ## A043058.P13332004009801154746

`A004277(A043056(n+1))-A043054(n+1)`
-/

namespace A043058.P13332004009801154746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043056 (n + 1)).toNat - A043054 (n + 1)

end

end A043058.P13332004009801154746

/-! ## A043058.P418319226186391680

`A004277(A043057(n+1))-A043056(n+1)`
-/

namespace A043058.P418319226186391680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043057 (n + 1)).toNat - A043056 (n + 1)

end

end A043058.P418319226186391680

/-! ## A043058.P3232668163134130498

`A008486(A043056(n+1))-2*A043055(n+1)`
-/

namespace A043058.P3232668163134130498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A043056 (n + 1)).toNat - 2 * A043055 (n + 1)

end

end A043058.P3232668163134130498

/-! ## A043058.P11756864880015314296

`A008486(A043056(n+1))-A005843(A043055(n+1))`
-/

namespace A043058.P11756864880015314296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A043056 (n + 1)).toNat - A005843 (A043055 (n + 1)).toNat

end

end A043058.P11756864880015314296

/-!
# A043059: a(n)=(s(n)+6)/7, where s(n)=n-th base 7 palindrome that starts with 1.

The programs for A043059, there is no canonical definition to state claims against.
-/

/-! ## A043059.P7356372351680566689

`ceil(A043015(n+1)/7)`
-/

namespace A043059.P7356372351680566689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043015 (n + 1) : ℚ) / 7⌉

end

end A043059.P7356372351680566689

/-! ## A043059.P14720241802070126323

`2*A043060(n+1)-A043061(n+1)`
-/

namespace A043059.P14720241802070126323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043060 (n + 1) - A043061 (n + 1)

end

end A043059.P14720241802070126323

/-! ## A043059.P15865602237083452124

`2*A043061(n+1)-A043063(n+1)`
-/

namespace A043059.P15865602237083452124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043061 (n + 1) - A043063 (n + 1)

end

end A043059.P15865602237083452124

/-! ## A043059.P11975132215621773277

`A043060(n+1)+A043061(n+1)-A043062(n+1)`
-/

namespace A043059.P11975132215621773277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043060 (n + 1) + (A043061 (n + 1) - A043062 (n + 1))

end

end A043059.P11975132215621773277

/-! ## A043059.P11301365756297998116

`A043060(n+1)+A043062(n+1)-A043063(n+1)`
-/

namespace A043059.P11301365756297998116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043060 (n + 1) + (A043062 (n + 1) - A043063 (n + 1))

end

end A043059.P11301365756297998116

/-! ## A043059.P5401502489545903715

`A043060(n+1)+A043063(n+1)-A043064(n+1)`
-/

namespace A043059.P5401502489545903715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043060 (n + 1) + (A043063 (n + 1) - A043064 (n + 1))

end

end A043059.P5401502489545903715

/-! ## A043059.P10648423652405071684

`A005843(A043060(n+1))-A043061(n+1)`
-/

namespace A043059.P10648423652405071684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043060 (n + 1)).toNat - A043061 (n + 1)

end

end A043059.P10648423652405071684

/-! ## A043059.P2274359125262054886

`A005843(A043061(n+1))-A043063(n+1)`
-/

namespace A043059.P2274359125262054886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043061 (n + 1)).toNat - A043063 (n + 1)

end

end A043059.P2274359125262054886

/-! ## A043059.P17740570732000752136

`A043060(n+1)-A004525(A043062(n+1)-A043060(n+1))`
-/

namespace A043059.P17740570732000752136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043060 (n + 1) - A004525 (A043062 (n + 1) - A043060 (n + 1)).toNat

end

end A043059.P17740570732000752136

/-! ## A043059.P8072143931460793947

`A043061(n+1)-A005843(A043062(n+1)-A043061(n+1))`
-/

namespace A043059.P8072143931460793947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043061 (n + 1) - A005843 (A043062 (n + 1) - A043061 (n + 1)).toNat

end

end A043059.P8072143931460793947

/-!
# A043060: a(n)=(s(n)+5)/7, where s(n)=n-th base 7 palindrome that starts with 2.

The programs for A043060, there is no canonical definition to state claims against.
-/

/-! ## A043060.P13852820596230532763

`ceil(A043016(n+1)/7)`
-/

namespace A043060.P13852820596230532763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043016 (n + 1) : ℚ) / 7⌉

end

end A043060.P13852820596230532763

/-! ## A043060.P1170006588148189635

`2*A043061(n+1)-A043062(n+1)`
-/

namespace A043060.P1170006588148189635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043061 (n + 1) - A043062 (n + 1)

end

end A043060.P1170006588148189635

/-! ## A043060.P12381358577486568547

`2*A043062(n+1)-A043064(n+1)`
-/

namespace A043060.P12381358577486568547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043062 (n + 1) - A043064 (n + 1)

end

end A043060.P12381358577486568547

/-! ## A043060.P12805671807340095842

`(A043061(n+1)+A043059(n+1))/2`
-/

namespace A043060.P12805671807340095842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043061 (n + 1) + A043059 (n + 1) : ℚ) / 2

end

end A043060.P12805671807340095842

/-! ## A043060.P4597475388352239321

`A043059(n+1)+A043062(n+1)-A043061(n+1)`
-/

namespace A043060.P4597475388352239321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043059 (n + 1) + (A043062 (n + 1) - A043061 (n + 1))

end

end A043060.P4597475388352239321

/-! ## A043060.P16802307454232031770

`A043059(n+1)+A043063(n+1)-A043062(n+1)`
-/

namespace A043060.P16802307454232031770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043059 (n + 1) + (A043063 (n + 1) - A043062 (n + 1))

end

end A043060.P16802307454232031770

/-! ## A043060.P16533829704105922763

`A043059(n+1)+A043064(n+1)-A043063(n+1)`
-/

namespace A043060.P16533829704105922763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043059 (n + 1) + (A043064 (n + 1) - A043063 (n + 1))

end

end A043060.P16533829704105922763

/-! ## A043060.P15015604604440063131

`A043059(n+1)+A014682(A043061(n+1)-A043059(n+1))`
-/

namespace A043060.P15015604604440063131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043059 (n + 1) + A014682 (A043061 (n + 1) - A043059 (n + 1)).toNat

end

end A043060.P15015604604440063131

/-! ## A043060.P14985007817456853612

`A014682(A043061(n+1)+A043059(n+1))`
-/

namespace A043060.P14985007817456853612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043061 (n + 1) + A043059 (n + 1)).toNat

end

end A043060.P14985007817456853612

/-! ## A043060.P17261129319711397970

`A005843(A043061(n+1))-A043062(n+1)`
-/

namespace A043060.P17261129319711397970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043061 (n + 1)).toNat - A043062 (n + 1)

end

end A043060.P17261129319711397970

/-! ## A043060.P12302031627542333288

`A043059(n+1)+A004525(A043061(n+1)-A043059(n+1))`
-/

namespace A043060.P12302031627542333288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043059 (n + 1) + A004525 (A043061 (n + 1) - A043059 (n + 1)).toNat

end

end A043060.P12302031627542333288

/-! ## A043060.P14726143944713779360

`A043061(n+1)-A004525(A043063(n+1)-A043061(n+1))`
-/

namespace A043060.P14726143944713779360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043061 (n + 1) - A004525 (A043063 (n + 1) - A043061 (n + 1)).toNat

end

end A043060.P14726143944713779360

/-! ## A043060.P15890567964571646167

`A043062(n+1)-A005843(A043063(n+1)-A043062(n+1))`
-/

namespace A043060.P15890567964571646167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043062 (n + 1) - A005843 (A043063 (n + 1) - A043062 (n + 1)).toNat

end

end A043060.P15890567964571646167

/-!
# A043061: (s(n)+4)/7, where s(n)=n-th base 7 palindrome that starts with 3.

The programs for A043061, there is no canonical definition to state claims against.
-/

/-! ## A043061.P7349254351819226710

`ceil(A043017(n+1)/7)`
-/

namespace A043061.P7349254351819226710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043017 (n + 1) : ℚ) / 7⌉

end

end A043061.P7349254351819226710

/-! ## A043061.P3365192401659277710

`2*A043060(n+1)-A043059(n+1)`
-/

namespace A043061.P3365192401659277710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043060 (n + 1) - A043059 (n + 1)

end

end A043061.P3365192401659277710

/-! ## A043061.P6548603247647639402

`2*A043062(n+1)-A043063(n+1)`
-/

namespace A043061.P6548603247647639402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043062 (n + 1) - A043063 (n + 1)

end

end A043061.P6548603247647639402

/-! ## A043061.P15091249241073056325

`(A043062(n+1)+A043060(n+1))/2`
-/

namespace A043061.P15091249241073056325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043062 (n + 1) + A043060 (n + 1) : ℚ) / 2

end

end A043061.P15091249241073056325

/-! ## A043061.P16596645443121438829

`(A043063(n+1)+A043059(n+1))/2`
-/

namespace A043061.P16596645443121438829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043063 (n + 1) + A043059 (n + 1) : ℚ) / 2

end

end A043061.P16596645443121438829

/-! ## A043061.P2263062985228671176

`A043060(n+1)+A043063(n+1)-A043062(n+1)`
-/

namespace A043061.P2263062985228671176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043060 (n + 1) + (A043063 (n + 1) - A043062 (n + 1))

end

end A043061.P2263062985228671176

/-! ## A043061.P2071419043844391525

`A043060(n+1)+A043064(n+1)-A043063(n+1)`
-/

namespace A043061.P2071419043844391525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043060 (n + 1) + (A043064 (n + 1) - A043063 (n + 1))

end

end A043061.P2071419043844391525

/-! ## A043061.P14062388765575561649

`A043062(n+1)-A014682(A043064(n+1)-A043062(n+1))`
-/

namespace A043061.P14062388765575561649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043062 (n + 1) - A014682 (A043064 (n + 1) - A043062 (n + 1)).toNat

end

end A043061.P14062388765575561649

/-! ## A043061.P10150457023363487131

`A004277(A043060(n+1))-A043059(n+1)`
-/

namespace A043061.P10150457023363487131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043060 (n + 1)).toNat - A043059 (n + 1)

end

end A043061.P10150457023363487131

/-! ## A043061.P9885744763270971729

`A043059(n+1)+A004525(A043063(n+1)-A043059(n+1))`
-/

namespace A043061.P9885744763270971729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043059 (n + 1) + A004525 (A043063 (n + 1) - A043059 (n + 1)).toNat

end

end A043061.P9885744763270971729

/-! ## A043061.P13448449127567304626

`A043060(n+1)+A004525(A043062(n+1)-A043060(n+1))`
-/

namespace A043061.P13448449127567304626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043060 (n + 1) + A004525 (A043062 (n + 1) - A043060 (n + 1)).toNat

end

end A043061.P13448449127567304626

/-! ## A043061.P1005238057461697699

`A043062(n+1)-A004525(A043064(n+1)-A043062(n+1))`
-/

namespace A043061.P1005238057461697699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043062 (n + 1) - A004525 (A043064 (n + 1) - A043062 (n + 1)).toNat

end

end A043061.P1005238057461697699

/-! ## A043061.P8570530684660121694

`A043063(n+1)-A005843(A043064(n+1)-A043063(n+1))`
-/

namespace A043061.P8570530684660121694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043063 (n + 1) - A005843 (A043064 (n + 1) - A043063 (n + 1)).toNat

end

end A043061.P8570530684660121694

/-! ## A043061.P318178145140909485

`A043062(n+1)-A025480(A043064(n+1)-A043062(n+1))`
-/

namespace A043061.P318178145140909485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043062 (n + 1) - A025480 (A043064 (n + 1) - A043062 (n + 1)).toNat

end

end A043061.P318178145140909485

/-!
# A043062: a(n)=(s(n)+3)/7, where s(n)=n-th base 7 palindrome that starts with 4.

The programs for A043062, there is no canonical definition to state claims against.
-/

/-! ## A043062.P16702702853850226717

`ceil(A043018(n+1)/7)`
-/

namespace A043062.P16702702853850226717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043018 (n + 1) : ℚ) / 7⌉

end

end A043062.P16702702853850226717

/-! ## A043062.P17665294205731422429

`and(round(A043018(n+1)/7), A260196(n))`
-/

namespace A043062.P17665294205731422429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A043018 (n + 1) : ℚ) / 7)) (A260196 n)

end

end A043062.P17665294205731422429

/-! ## A043062.P13705022454160056406

`or(round(A043018(n+1)/7), A000007(n))`
-/

namespace A043062.P13705022454160056406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A043018 (n + 1) : ℚ) / 7)) (A000007 n)

end

end A043062.P13705022454160056406

/-! ## A043062.P5824700767526358490

`2*A043061(n+1)-A043060(n+1)`
-/

namespace A043062.P5824700767526358490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043061 (n + 1) - A043060 (n + 1)

end

end A043062.P5824700767526358490

/-! ## A043062.P3999310271494689965

`2*A043063(n+1)-A043064(n+1)`
-/

namespace A043062.P3999310271494689965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043063 (n + 1) - A043064 (n + 1)

end

end A043062.P3999310271494689965

/-! ## A043062.P7308559494910311180

`(A043063(n+1)+A043061(n+1))/2`
-/

namespace A043062.P7308559494910311180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043063 (n + 1) + A043061 (n + 1) : ℚ) / 2

end

end A043062.P7308559494910311180

/-! ## A043062.P593123628827940750

`(A043064(n+1)+A043060(n+1))/2`
-/

namespace A043062.P593123628827940750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043064 (n + 1) + A043060 (n + 1) : ℚ) / 2

end

end A043062.P593123628827940750

/-! ## A043062.P9516644846949577699

`A043059(n+1)+A043063(n+1)-A043060(n+1)`
-/

namespace A043062.P9516644846949577699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043059 (n + 1) + (A043063 (n + 1) - A043060 (n + 1))

end

end A043062.P9516644846949577699

/-! ## A043062.P4511751582529086328

`A043060(n+1)+A043063(n+1)-A043061(n+1)`
-/

namespace A043062.P4511751582529086328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043060 (n + 1) + (A043063 (n + 1) - A043061 (n + 1))

end

end A043062.P4511751582529086328

/-! ## A043062.P9493512266271693546

`A043061(n+1)+A014682(A043061(n+1)-A043059(n+1))`
-/

namespace A043062.P9493512266271693546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043061 (n + 1) + A014682 (A043061 (n + 1) - A043059 (n + 1)).toNat

end

end A043062.P9493512266271693546

/-! ## A043062.P2876112205407178994

`A005843(A043061(n+1))-A043060(n+1)`
-/

namespace A043062.P2876112205407178994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043061 (n + 1)).toNat - A043060 (n + 1)

end

end A043062.P2876112205407178994

/-! ## A043062.P8033664496147983491

`A043060(n+1)+A004525(A043064(n+1)-A043060(n+1))`
-/

namespace A043062.P8033664496147983491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043060 (n + 1) + A004525 (A043064 (n + 1) - A043060 (n + 1)).toNat

end

end A043062.P8033664496147983491

/-! ## A043062.P2563125060841698799

`A043061(n+1)+A004525(A043061(n+1)-A043059(n+1))`
-/

namespace A043062.P2563125060841698799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043061 (n + 1) + A004525 (A043061 (n + 1) - A043059 (n + 1)).toNat

end

end A043062.P2563125060841698799

/-! ## A043062.P14389351037087047818

`A043061(n+1)+A004525(A043063(n+1)-A043061(n+1))`
-/

namespace A043062.P14389351037087047818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043061 (n + 1) + A004525 (A043063 (n + 1) - A043061 (n + 1)).toNat

end

end A043062.P14389351037087047818

/-! ## A043062.P7634619943378071914

`A043064(n+1)-A005843(A043064(n+1)-A043063(n+1))`
-/

namespace A043062.P7634619943378071914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043064 (n + 1) - A005843 (A043064 (n + 1) - A043063 (n + 1)).toNat

end

end A043062.P7634619943378071914

/-!
# A043063: a(n)=(s(n)+2)/7, where s(n)=n-th base 7 palindrome that starts with 5.

The programs for A043063, there is no canonical definition to state claims against.
-/

/-! ## A043063.P15559312336118786372

`ceil(A043019(n+1)/7)`
-/

namespace A043063.P15559312336118786372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043019 (n + 1) : ℚ) / 7⌉

end

end A043063.P15559312336118786372

/-! ## A043063.P4814817635600024888

`2*A043061(n+1)-A043059(n+1)`
-/

namespace A043063.P4814817635600024888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043061 (n + 1) - A043059 (n + 1)

end

end A043063.P4814817635600024888

/-! ## A043063.P1727793726808746135

`2*A043062(n+1)-A043061(n+1)`
-/

namespace A043063.P1727793726808746135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043062 (n + 1) - A043061 (n + 1)

end

end A043063.P1727793726808746135

/-! ## A043063.P16981219519181258017

`(A043064(n+1)+A043062(n+1))/2`
-/

namespace A043063.P16981219519181258017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043064 (n + 1) + A043062 (n + 1) : ℚ) / 2

end

end A043063.P16981219519181258017

/-! ## A043063.P9061746372945037102

`A043059(n+1)+A043064(n+1)-A043060(n+1)`
-/

namespace A043063.P9061746372945037102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043059 (n + 1) + (A043064 (n + 1) - A043060 (n + 1))

end

end A043063.P9061746372945037102

/-! ## A043063.P5907698849148168958

`A043061(n+1)+A043062(n+1)-A043060(n+1)`
-/

namespace A043063.P5907698849148168958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043061 (n + 1) + (A043062 (n + 1) - A043060 (n + 1))

end

end A043063.P5907698849148168958

/-! ## A043063.P8197791260912335283

`A043062(n+1)+A014682(A043064(n+1)-A043062(n+1))`
-/

namespace A043063.P8197791260912335283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043062 (n + 1) + A014682 (A043064 (n + 1) - A043062 (n + 1)).toNat

end

end A043063.P8197791260912335283

/-! ## A043063.P11218121450788910910

`A014682(A043064(n+1)+A043062(n+1))`
-/

namespace A043063.P11218121450788910910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043064 (n + 1) + A043062 (n + 1)).toNat

end

end A043063.P11218121450788910910

/-! ## A043063.P7719384404064145925

`A005843(A043061(n+1))-A043059(n+1)`
-/

namespace A043063.P7719384404064145925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043061 (n + 1)).toNat - A043059 (n + 1)

end

end A043063.P7719384404064145925

/-! ## A043063.P12602634176975114100

`A043062(n+1)+A004525(A043062(n+1)-A043060(n+1))`
-/

namespace A043063.P12602634176975114100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043062 (n + 1) + A004525 (A043062 (n + 1) - A043060 (n + 1)).toNat

end

end A043063.P12602634176975114100

/-! ## A043063.P14583114832351530561

`A043062(n+1)+A004525(A043064(n+1)-A043062(n+1))`
-/

namespace A043063.P14583114832351530561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043062 (n + 1) + A004525 (A043064 (n + 1) - A043062 (n + 1)).toNat

end

end A043063.P14583114832351530561

/-! ## A043063.P5957153526591342998

`A043061(n+1)+A005843(A043061(n+1)-A043060(n+1))`
-/

namespace A043063.P5957153526591342998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043061 (n + 1) + A005843 (A043061 (n + 1) - A043060 (n + 1)).toNat

end

end A043063.P5957153526591342998

/-! ## A043063.P3600459998642453099

`A043061(n+1)+A005843(A043062(n+1)-A043061(n+1))`
-/

namespace A043063.P3600459998642453099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043061 (n + 1) + A005843 (A043062 (n + 1) - A043061 (n + 1)).toNat

end

end A043063.P3600459998642453099

/-! ## A043063.P14508007124530377957

`A043062(n+1)+A025480(A043064(n+1)-A043062(n+1))`
-/

namespace A043063.P14508007124530377957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043062 (n + 1) + A025480 (A043064 (n + 1) - A043062 (n + 1)).toNat

end

end A043063.P14508007124530377957

/-!
# A043064: a(n) = (s(n)+1)/7, where s(n) = n-th base 7 palindrome that starts with 6.

The programs for A043064, there is no canonical definition to state claims against.
-/

/-! ## A043064.P8218434684256020468

`ceil(A043020(n+1)/7)`
-/

namespace A043064.P8218434684256020468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043020 (n + 1) : ℚ) / 7⌉

end

end A043064.P8218434684256020468

/-! ## A043064.P7461149813189487020

`2*A043062(n+1)-A043060(n+1)`
-/

namespace A043064.P7461149813189487020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043062 (n + 1) - A043060 (n + 1)

end

end A043064.P7461149813189487020

/-! ## A043064.P6666919398863507769

`2*A043063(n+1)-A043062(n+1)`
-/

namespace A043064.P6666919398863507769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043063 (n + 1) - A043062 (n + 1)

end

end A043064.P6666919398863507769

/-! ## A043064.P4339442936827211492

`A043060(n+1)+A043063(n+1)-A043059(n+1)`
-/

namespace A043064.P4339442936827211492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043060 (n + 1) + (A043063 (n + 1) - A043059 (n + 1))

end

end A043064.P4339442936827211492

/-! ## A043064.P15314139963739204976

`A043061(n+1)+A043062(n+1)-A043059(n+1)`
-/

namespace A043064.P15314139963739204976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043061 (n + 1) + (A043062 (n + 1) - A043059 (n + 1))

end

end A043064.P15314139963739204976

/-! ## A043064.P16688154671915329494

`A043061(n+1)+A043063(n+1)-A043060(n+1)`
-/

namespace A043064.P16688154671915329494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043061 (n + 1) + (A043063 (n + 1) - A043060 (n + 1))

end

end A043064.P16688154671915329494

/-! ## A043064.P1905193455585808831

`A043063(n+1)+A004525(A043063(n+1)-A043061(n+1))`
-/

namespace A043064.P1905193455585808831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043063 (n + 1) + A004525 (A043063 (n + 1) - A043061 (n + 1)).toNat

end

end A043064.P1905193455585808831

/-! ## A043064.P18116568938577346434

`A043062(n+1)+A005843(A043062(n+1)-A043061(n+1))`
-/

namespace A043064.P18116568938577346434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043062 (n + 1) + A005843 (A043062 (n + 1) - A043061 (n + 1)).toNat

end

end A043064.P18116568938577346434

/-! ## A043064.P251414098469797053

`A043062(n+1)+A005843(A043063(n+1)-A043062(n+1))`
-/

namespace A043064.P251414098469797053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043062 (n + 1) + A005843 (A043063 (n + 1) - A043062 (n + 1)).toNat

end

end A043064.P251414098469797053

/-! ## A043064.P17757953824480557304

`A004277(A043062(n+1))-A043060(n+1)`
-/

namespace A043064.P17757953824480557304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043062 (n + 1)).toNat - A043060 (n + 1)

end

end A043064.P17757953824480557304

/-!
# A043065: a(n)=(s(n)+7)/8, where s(n)=n-th base 8 palindrome that starts with 1.

The programs for A043065, there is no canonical definition to state claims against.
-/

/-! ## A043065.P16359526850750417521

`ceil(A043021(n+1)/8)`
-/

namespace A043065.P16359526850750417521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043021 (n + 1) : ℚ) / 8⌉

end

end A043065.P16359526850750417521

/-! ## A043065.P9730286901556484706

`2*A043066(n+1)-A043067(n+1)`
-/

namespace A043065.P9730286901556484706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043066 (n + 1) - A043067 (n + 1)

end

end A043065.P9730286901556484706

/-! ## A043065.P15962104030585277431

`2*A043067(n+1)-A043069(n+1)`
-/

namespace A043065.P15962104030585277431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043067 (n + 1) - A043069 (n + 1)

end

end A043065.P15962104030585277431

/-! ## A043065.P6979477754123783261

`2*A043068(n+1)-A043071(n+1)`
-/

namespace A043065.P6979477754123783261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043068 (n + 1) - A043071 (n + 1)

end

end A043065.P6979477754123783261

/-! ## A043065.P17806672861319185614

`A043067(n+1)+A043068(n+1)-A043070(n+1)`
-/

namespace A043065.P17806672861319185614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + (A043068 (n + 1) - A043070 (n + 1))

end

end A043065.P17806672861319185614

/-! ## A043065.P581156950809263135

`A166079(A043067(n+1))`
-/

namespace A043065.P581156950809263135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (A043067 (n + 1)).toNat

end

end A043065.P581156950809263135

/-! ## A043065.P7621486260320518911

`A043066(n+1)-A004525(A043068(n+1)-A043066(n+1))`
-/

namespace A043065.P7621486260320518911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043066 (n + 1) - A004525 (A043068 (n + 1) - A043066 (n + 1)).toNat

end

end A043065.P7621486260320518911

/-! ## A043065.P13097576562285707870

`A043067(n+1)-A005843(A043068(n+1)-A043067(n+1))`
-/

namespace A043065.P13097576562285707870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) - A005843 (A043068 (n + 1) - A043067 (n + 1)).toNat

end

end A043065.P13097576562285707870

/-! ## A043065.P10150224163328959199

`A006165(A043066(n+1))`
-/

namespace A043065.P10150224163328959199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A043066 (n + 1)).toNat

end

end A043065.P10150224163328959199

/-! ## A043065.P9733062599551178787

`A005843(A043066(n+1))-A043067(n+1)`
-/

namespace A043065.P9733062599551178787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043066 (n + 1)).toNat - A043067 (n + 1)

end

end A043065.P9733062599551178787

/-!
# A043066: a(n) = (s(n)+6)/8, where s(n) = n-th base 8 palindrome that starts with 2.

The programs for A043066, there is no canonical definition to state claims against.
-/

/-! ## A043066.P3068834113254461582

`(A043022(n+1)+6)/8`
-/

namespace A043066.P3068834113254461582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043022 (n + 1) + 6 : ℚ) / 8

end

end A043066.P3068834113254461582

/-! ## A043066.P5597325237585803495

`ceil(A043022(n+1)/8)`
-/

namespace A043066.P5597325237585803495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043022 (n + 1) : ℚ) / 8⌉

end

end A043066.P5597325237585803495

/-! ## A043066.P3622264067349397641

`2*A043067(n+1)-A043068(n+1)`
-/

namespace A043066.P3622264067349397641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043067 (n + 1) - A043068 (n + 1)

end

end A043066.P3622264067349397641

/-! ## A043066.P3011900169737180901

`2*A043068(n+1)-A043070(n+1)`
-/

namespace A043066.P3011900169737180901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043068 (n + 1) - A043070 (n + 1)

end

end A043066.P3011900169737180901

/-! ## A043066.P3395254520119641141

`(A043067(n+1)+A043065(n+1))/2`
-/

namespace A043066.P3395254520119641141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043067 (n + 1) + A043065 (n + 1) : ℚ) / 2

end

end A043066.P3395254520119641141

/-! ## A043066.P5880043014069556977

`A043065(n+1)+A043071(n+1)-A043070(n+1)`
-/

namespace A043066.P5880043014069556977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043065 (n + 1) + (A043071 (n + 1) - A043070 (n + 1))

end

end A043066.P5880043014069556977

/-! ## A043066.P5282111219374420681

`A043067(n+1)+A043068(n+1)-A043069(n+1)`
-/

namespace A043066.P5282111219374420681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + (A043068 (n + 1) - A043069 (n + 1))

end

end A043066.P5282111219374420681

/-! ## A043066.P10211294677977416519

`A043065(n+1)+A014682(A043067(n+1)-A043065(n+1))`
-/

namespace A043066.P10211294677977416519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043065 (n + 1) + A014682 (A043067 (n + 1) - A043065 (n + 1)).toNat

end

end A043066.P10211294677977416519

/-! ## A043066.P8889989956872264304

`A014682(A043067(n+1)+A043065(n+1))`
-/

namespace A043066.P8889989956872264304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043067 (n + 1) + A043065 (n + 1)).toNat

end

end A043066.P8889989956872264304

/-! ## A043066.P12755203246951149122

`A043065(n+1)+A004525(A043067(n+1)-A043065(n+1))`
-/

namespace A043066.P12755203246951149122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043065 (n + 1) + A004525 (A043067 (n + 1) - A043065 (n + 1)).toNat

end

end A043066.P12755203246951149122

/-!
# A043067: a(n)=(s(n)+5)/8, where s(n)=n-th base 8 palindrome that starts with 3.

The programs for A043067, there is no canonical definition to state claims against.
-/

/-! ## A043067.P6315717416141459153

`ceil(A043023(n+1)/8)`
-/

namespace A043067.P6315717416141459153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043023 (n + 1) : ℚ) / 8⌉

end

end A043067.P6315717416141459153

/-! ## A043067.P16808414916750195580

`2*A043066(n+1)-A043065(n+1)`
-/

namespace A043067.P16808414916750195580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043066 (n + 1) - A043065 (n + 1)

end

end A043067.P16808414916750195580

/-! ## A043067.P1855594499958465108

`2*A043068(n+1)-A043069(n+1)`
-/

namespace A043067.P1855594499958465108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043068 (n + 1) - A043069 (n + 1)

end

end A043067.P1855594499958465108

/-! ## A043067.P17851750111840720353

`2*A043069(n+1)-A043071(n+1)`
-/

namespace A043067.P17851750111840720353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043069 (n + 1) - A043071 (n + 1)

end

end A043067.P17851750111840720353

/-! ## A043067.P7631303530511232197

`(A043068(n+1)+A043066(n+1))/2`
-/

namespace A043067.P7631303530511232197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043068 (n + 1) + A043066 (n + 1) : ℚ) / 2

end

end A043067.P7631303530511232197

/-! ## A043067.P14253656350448644229

`(A043069(n+1)+A043065(n+1))/2`
-/

namespace A043067.P14253656350448644229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043069 (n + 1) + A043065 (n + 1) : ℚ) / 2

end

end A043067.P14253656350448644229

/-! ## A043067.P13584700867562731265

`A043068(n+1)+A043069(n+1)-A043070(n+1)`
-/

namespace A043067.P13584700867562731265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043068 (n + 1) + (A043069 (n + 1) - A043070 (n + 1))

end

end A043067.P13584700867562731265

/-! ## A043067.P5789215894089945606

`A043066(n+1)+A004525(A043068(n+1)-A043066(n+1))`
-/

namespace A043067.P5789215894089945606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043066 (n + 1) + A004525 (A043068 (n + 1) - A043066 (n + 1)).toNat

end

end A043067.P5789215894089945606

/-! ## A043067.P17592259465248139223

`A043068(n+1)-A004525(A043070(n+1)-A043068(n+1))`
-/

namespace A043067.P17592259465248139223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043068 (n + 1) - A004525 (A043070 (n + 1) - A043068 (n + 1)).toNat

end

end A043067.P17592259465248139223

/-! ## A043067.P2776036751726240721

`A043069(n+1)-A005843(A043070(n+1)-A043069(n+1))`
-/

namespace A043067.P2776036751726240721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043069 (n + 1) - A005843 (A043070 (n + 1) - A043069 (n + 1)).toNat

end

end A043067.P2776036751726240721

/-! ## A043067.P172055840340477863

`A080645(A043066(n+1))`
-/

namespace A043067.P172055840340477863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080645 (A043066 (n + 1)).toNat

end

end A043067.P172055840340477863

/-! ## A043067.P1147289364092803861

`A005843(A043066(n+1))-A043065(n+1)`
-/

namespace A043067.P1147289364092803861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043066 (n + 1)).toNat - A043065 (n + 1)

end

end A043067.P1147289364092803861

/-!
# A043068: a(n)=(s(n)+4)/8, where s(n)=n-th base 8 palindrome that starts with 4.

The programs for A043068, there is no canonical definition to state claims against.
-/

/-! ## A043068.P12482079115117663004

`ceil(A043024(n+1)/8)`
-/

namespace A043068.P12482079115117663004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043024 (n + 1) : ℚ) / 8⌉

end

end A043068.P12482079115117663004

/-! ## A043068.P12152668461936515820

`gcd(round(A043024(n+1)/8), A000038(n))`
-/

namespace A043068.P12152668461936515820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A043024 (n + 1) : ℚ) / 8)) (A000038 n)

end

end A043068.P12152668461936515820

/-! ## A043068.P3702718680134714818

`2*A043067(n+1)-A043066(n+1)`
-/

namespace A043068.P3702718680134714818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043067 (n + 1) - A043066 (n + 1)

end

end A043068.P3702718680134714818

/-! ## A043068.P11460287003715228982

`2*A043069(n+1)-A043070(n+1)`
-/

namespace A043068.P11460287003715228982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043069 (n + 1) - A043070 (n + 1)

end

end A043068.P11460287003715228982

/-! ## A043068.P10953522996031450128

`(A043069(n+1)+A043067(n+1))/2`
-/

namespace A043068.P10953522996031450128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043069 (n + 1) + A043067 (n + 1) : ℚ) / 2

end

end A043068.P10953522996031450128

/-! ## A043068.P9374133525286655010

`(A043070(n+1)+A043066(n+1))/2`
-/

namespace A043068.P9374133525286655010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043070 (n + 1) + A043066 (n + 1) : ℚ) / 2

end

end A043068.P9374133525286655010

/-! ## A043068.P12768667102385222009

`(A043071(n+1)+A043065(n+1))/2`
-/

namespace A043068.P12768667102385222009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043071 (n + 1) + A043065 (n + 1) : ℚ) / 2

end

end A043068.P12768667102385222009

/-! ## A043068.P9397798951333299465

`A000041(C(2, n+2))*round(A043024(n+1)/8)`
-/

namespace A043068.P9397798951333299465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * SequenceMachineLib.roundAway ((A043024 (n + 1) : ℚ) / 8)

end

end A043068.P9397798951333299465

/-! ## A043068.P9223061458105964744

`A043066(n+1)+A043069(n+1)-A043067(n+1)`
-/

namespace A043068.P9223061458105964744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043066 (n + 1) + (A043069 (n + 1) - A043067 (n + 1))

end

end A043068.P9223061458105964744

/-! ## A043068.P771488552206381246

`round(A043024(n+1)/8)%∑[5*A000914(n+1)]`
-/

namespace A043068.P771488552206381246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A043024 (n + 1) : ℚ) / 8)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A043068.P771488552206381246

/-! ## A043068.P9868824685251674290

`A043067(n+1)+A014682(A043067(n+1)-A043065(n+1))`
-/

namespace A043068.P9868824685251674290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + A014682 (A043067 (n + 1) - A043065 (n + 1)).toNat

end

end A043068.P9868824685251674290

/-! ## A043068.P3892061939962193842

`A063946(A043070(n+1))`
-/

namespace A043068.P3892061939962193842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A043070 (n + 1)).toNat

end

end A043068.P3892061939962193842

/-! ## A043068.P9994326653830895532

`A043067(n+1)+A004525(A043067(n+1)-A043065(n+1))`
-/

namespace A043068.P9994326653830895532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + A004525 (A043067 (n + 1) - A043065 (n + 1)).toNat

end

end A043068.P9994326653830895532

/-! ## A043068.P11373389889170784154

`A043066(n+1)+A005843(A043066(n+1)-A043065(n+1))`
-/

namespace A043068.P11373389889170784154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043066 (n + 1) + A005843 (A043066 (n + 1) - A043065 (n + 1)).toNat

end

end A043068.P11373389889170784154

/-! ## A043068.P12532690994857569818

`A043069(n+1)-A004525(A043071(n+1)-A043069(n+1))`
-/

namespace A043068.P12532690994857569818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043069 (n + 1) - A004525 (A043071 (n + 1) - A043069 (n + 1)).toNat

end

end A043068.P12532690994857569818

/-!
# A043069: a(n)=(s(n)+3)/8, where s(n)=n-th base 8 palindrome that starts with 5.

The programs for A043069, there is no canonical definition to state claims against.
-/

/-! ## A043069.P4688810167853975768

`ceil(A043025(n+1)/8)`
-/

namespace A043069.P4688810167853975768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043025 (n + 1) : ℚ) / 8⌉

end

end A043069.P4688810167853975768

/-! ## A043069.P11268854346357063904

`2*A043067(n+1)-A043065(n+1)`
-/

namespace A043069.P11268854346357063904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043067 (n + 1) - A043065 (n + 1)

end

end A043069.P11268854346357063904

/-! ## A043069.P6537991246639374909

`2*A043068(n+1)-A043067(n+1)`
-/

namespace A043069.P6537991246639374909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043068 (n + 1) - A043067 (n + 1)

end

end A043069.P6537991246639374909

/-! ## A043069.P14787749053164879912

`2*A043070(n+1)-A043071(n+1)`
-/

namespace A043069.P14787749053164879912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043070 (n + 1) - A043071 (n + 1)

end

end A043069.P14787749053164879912

/-! ## A043069.P10093929703593973335

`(A043070(n+1)+A043068(n+1))/2`
-/

namespace A043069.P10093929703593973335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043070 (n + 1) + A043068 (n + 1) : ℚ) / 2

end

end A043069.P10093929703593973335

/-! ## A043069.P17422005061993138557

`(A043071(n+1)+A043067(n+1))/2`
-/

namespace A043069.P17422005061993138557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043071 (n + 1) + A043067 (n + 1) : ℚ) / 2

end

end A043069.P17422005061993138557

/-! ## A043069.P9546677110891206721

`A043065(n+1)+A043070(n+1)-A043066(n+1)`
-/

namespace A043069.P9546677110891206721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043065 (n + 1) + (A043070 (n + 1) - A043066 (n + 1))

end

end A043069.P9546677110891206721

/-! ## A043069.P2318770836889241644

`A043066(n+1)+A043071(n+1)-A043068(n+1)`
-/

namespace A043069.P2318770836889241644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043066 (n + 1) + (A043071 (n + 1) - A043068 (n + 1))

end

end A043069.P2318770836889241644

/-! ## A043069.P6013886655617158947

`A043067(n+1)+A043070(n+1)-A043068(n+1)`
-/

namespace A043069.P6013886655617158947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + (A043070 (n + 1) - A043068 (n + 1))

end

end A043069.P6013886655617158947

/-! ## A043069.P3992599202281572184

`A043068(n+1)+A004525(A043068(n+1)-A043066(n+1))`
-/

namespace A043069.P3992599202281572184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043068 (n + 1) + A004525 (A043068 (n + 1) - A043066 (n + 1)).toNat

end

end A043069.P3992599202281572184

/-! ## A043069.P18064253092116521300

`A043068(n+1)+A004525(A043070(n+1)-A043068(n+1))`
-/

namespace A043069.P18064253092116521300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043068 (n + 1) + A004525 (A043070 (n + 1) - A043068 (n + 1)).toNat

end

end A043069.P18064253092116521300

/-! ## A043069.P8606367062432692022

`A043065(n+1)+A005843(A043067(n+1)-A043065(n+1))`
-/

namespace A043069.P8606367062432692022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043065 (n + 1) + A005843 (A043067 (n + 1) - A043065 (n + 1)).toNat

end

end A043069.P8606367062432692022

/-! ## A043069.P11237564847207991974

`A043067(n+1)+A005843(A043067(n+1)-A043066(n+1))`
-/

namespace A043069.P11237564847207991974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + A005843 (A043067 (n + 1) - A043066 (n + 1)).toNat

end

end A043069.P11237564847207991974

/-! ## A043069.P11437011676685020643

`A043067(n+1)+A005843(A043068(n+1)-A043067(n+1))`
-/

namespace A043069.P11437011676685020643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + A005843 (A043068 (n + 1) - A043067 (n + 1)).toNat

end

end A043069.P11437011676685020643

/-!
# A043070: a(n)=(s(n)+2)/8, where s(n)=n-th base 8 palindrome that starts with 6 (in base 8), written in decimal digits.

The programs for A043070, there is no canonical definition to state claims against.
-/

/-! ## A043070.P14888148208657600059

`ceil(A043026(n+1)/8)`
-/

namespace A043070.P14888148208657600059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043026 (n + 1) : ℚ) / 8⌉

end

end A043070.P14888148208657600059

/-! ## A043070.P10374595834468099069

`or(A043066(n+1), A043068(n+1))`
-/

namespace A043070.P10374595834468099069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043066 (n + 1)) (A043068 (n + 1))

end

end A043070.P10374595834468099069

/-! ## A043070.P17360514383517429693

`2*A043069(n+1)-A043068(n+1)`
-/

namespace A043070.P17360514383517429693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043069 (n + 1) - A043068 (n + 1)

end

end A043070.P17360514383517429693

/-! ## A043070.P5310162889590720280

`(A043071(n+1)+A043069(n+1))/2`
-/

namespace A043070.P5310162889590720280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043071 (n + 1) + A043069 (n + 1) : ℚ) / 2

end

end A043070.P5310162889590720280

/-! ## A043070.P11369066713114145867

`A043065(n+1)+A043071(n+1)-A043066(n+1)`
-/

namespace A043070.P11369066713114145867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043065 (n + 1) + (A043071 (n + 1) - A043066 (n + 1))

end

end A043070.P11369066713114145867

/-! ## A043070.P17703512169304138902

`A043067(n+1)+A043069(n+1)-A043066(n+1)`
-/

namespace A043070.P17703512169304138902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + (A043069 (n + 1) - A043066 (n + 1))

end

end A043070.P17703512169304138902

/-! ## A043070.P15223452910632538052

`A043068(n+1)+A043069(n+1)-A043067(n+1)`
-/

namespace A043070.P15223452910632538052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043068 (n + 1) + (A043069 (n + 1) - A043067 (n + 1))

end

end A043070.P15223452910632538052

/-! ## A043070.P13750488950513602473

`A063946(A043068(n+1))`
-/

namespace A043070.P13750488950513602473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A043068 (n + 1)).toNat

end

end A043070.P13750488950513602473

/-! ## A043070.P11352936734800418920

`A063946(ceil(A043024(n+1)/8))`
-/

namespace A043070.P11352936734800418920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 ⌈(A043024 (n + 1) : ℚ) / 8⌉.toNat

end

end A043070.P11352936734800418920

/-! ## A043070.P8137629882830659068

`A043069(n+1)+A004525(A043071(n+1)-A043069(n+1))`
-/

namespace A043070.P8137629882830659068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043069 (n + 1) + A004525 (A043071 (n + 1) - A043069 (n + 1)).toNat

end

end A043070.P8137629882830659068

/-! ## A043070.P11053309370066348347

`A043068(n+1)+A005843(A043068(n+1)-A043067(n+1))`
-/

namespace A043070.P11053309370066348347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043068 (n + 1) + A005843 (A043068 (n + 1) - A043067 (n + 1)).toNat

end

end A043070.P11053309370066348347

/-!
# A043071: a(n)=(s(n)+1)/8, where s(n)=n-th base 8 palindrome that starts with 7.

The programs for A043071, there is no canonical definition to state claims against.
-/

/-! ## A043071.P8754254727588990912

`ceil(A043027(n+1)/8)`
-/

namespace A043071.P8754254727588990912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043027 (n + 1) : ℚ) / 8⌉

end

end A043071.P8754254727588990912

/-! ## A043071.P14799195694548686019

`2*A043068(n+1)-A043065(n+1)`
-/

namespace A043071.P14799195694548686019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043068 (n + 1) - A043065 (n + 1)

end

end A043071.P14799195694548686019

/-! ## A043071.P10343142337392923718

`2*A043069(n+1)-A043067(n+1)`
-/

namespace A043071.P10343142337392923718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043069 (n + 1) - A043067 (n + 1)

end

end A043071.P10343142337392923718

/-! ## A043071.P2843502552573762253

`2*A043070(n+1)-A043069(n+1)`
-/

namespace A043071.P2843502552573762253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043070 (n + 1) - A043069 (n + 1)

end

end A043071.P2843502552573762253

/-! ## A043071.P17187351821818516437

`A043066(n+1)+A043070(n+1)-A043065(n+1)`
-/

namespace A043071.P17187351821818516437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043066 (n + 1) + (A043070 (n + 1) - A043065 (n + 1))

end

end A043071.P17187351821818516437

/-! ## A043071.P4320159277303398625

`A043067(n+1)+A043069(n+1)-A043065(n+1)`
-/

namespace A043071.P4320159277303398625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + (A043069 (n + 1) - A043065 (n + 1))

end

end A043071.P4320159277303398625

/-! ## A043071.P8627235243363677963

`A043068(n+1)+A043070(n+1)-A043067(n+1)`
-/

namespace A043071.P8627235243363677963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043068 (n + 1) + (A043070 (n + 1) - A043067 (n + 1))

end

end A043071.P8627235243363677963

/-! ## A043071.P11339906120973811724

`A043069(n+1)+A043070(n+1)-A043068(n+1)`
-/

namespace A043071.P11339906120973811724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043069 (n + 1) + (A043070 (n + 1) - A043068 (n + 1))

end

end A043071.P11339906120973811724

/-! ## A043071.P16886886452938154676

`A043070(n+1)+A004525(A043070(n+1)-A043068(n+1))`
-/

namespace A043071.P16886886452938154676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043070 (n + 1) + A004525 (A043070 (n + 1) - A043068 (n + 1)).toNat

end

end A043071.P16886886452938154676

/-! ## A043071.P15181504020404020037

`A043067(n+1)+A005843(A043067(n+1)-A043065(n+1))`
-/

namespace A043071.P15181504020404020037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + A005843 (A043067 (n + 1) - A043065 (n + 1)).toNat

end

end A043071.P15181504020404020037

/-! ## A043071.P10024456414148723670

`A043067(n+1)+A005843(A043069(n+1)-A043067(n+1))`
-/

namespace A043071.P10024456414148723670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043067 (n + 1) + A005843 (A043069 (n + 1) - A043067 (n + 1)).toNat

end

end A043071.P10024456414148723670

/-! ## A043071.P11061899197115261472

`A043069(n+1)+A005843(A043070(n+1)-A043069(n+1))`
-/

namespace A043071.P11061899197115261472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043069 (n + 1) + A005843 (A043070 (n + 1) - A043069 (n + 1)).toNat

end

end A043071.P11061899197115261472

/-!
# A043072: a(n)=(s(n)+8)/9, where s(n)=n-th base 9 palindrome that starts with 1.

The programs for A043072, there is no canonical definition to state claims against.
-/

/-! ## A043072.P5383609865671082749

`ceil(A043028(n+1)/9)`
-/

namespace A043072.P5383609865671082749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043028 (n + 1) : ℚ) / 9⌉

end

end A043072.P5383609865671082749

/-! ## A043072.P8102975984746953272

`2*A043073(n+1)-A043074(n+1)`
-/

namespace A043072.P8102975984746953272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043073 (n + 1) - A043074 (n + 1)

end

end A043072.P8102975984746953272

/-! ## A043072.P2587637189432499217

`2*A043074(n+1)-A043076(n+1)`
-/

namespace A043072.P2587637189432499217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043074 (n + 1) - A043076 (n + 1)

end

end A043072.P2587637189432499217

/-! ## A043072.P3015139622090132294

`2*A043075(n+1)-A043078(n+1)`
-/

namespace A043072.P3015139622090132294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043075 (n + 1) - A043078 (n + 1)

end

end A043072.P3015139622090132294

/-! ## A043072.P8316669255658886160

`A043073(n+1)+A043076(n+1)-A043077(n+1)`
-/

namespace A043072.P8316669255658886160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043073 (n + 1) + (A043076 (n + 1) - A043077 (n + 1))

end

end A043072.P8316669255658886160

/-! ## A043072.P8539980815160752870

`A043073(n+1)+A043078(n+1)-A043079(n+1)`
-/

namespace A043072.P8539980815160752870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043073 (n + 1) + (A043078 (n + 1) - A043079 (n + 1))

end

end A043072.P8539980815160752870

/-! ## A043072.P11433840059297945039

`A043074(n+1)+A043075(n+1)-A043077(n+1)`
-/

namespace A043072.P11433840059297945039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043074 (n + 1) + (A043075 (n + 1) - A043077 (n + 1))

end

end A043072.P11433840059297945039

/-! ## A043072.P14957911304223231376

`A043074(n+1)+A043077(n+1)-A043079(n+1)`
-/

namespace A043072.P14957911304223231376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043074 (n + 1) + (A043077 (n + 1) - A043079 (n + 1))

end

end A043072.P14957911304223231376

/-! ## A043072.P18162128017191222098

`A043074(n+1)-A005843(A043075(n+1)-A043074(n+1))`
-/

namespace A043072.P18162128017191222098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043074 (n + 1) - A005843 (A043075 (n + 1) - A043074 (n + 1)).toNat

end

end A043072.P18162128017191222098

/-! ## A043072.P12249451106775293032

`A005843(A043073(n+1))-A043074(n+1)`
-/

namespace A043072.P12249451106775293032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043073 (n + 1)).toNat - A043074 (n + 1)

end

end A043072.P12249451106775293032

/-! ## A043072.P16946082931259657645

`A005843(A043074(n+1))-A043076(n+1)`
-/

namespace A043072.P16946082931259657645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043074 (n + 1)).toNat - A043076 (n + 1)

end

end A043072.P16946082931259657645

/-! ## A043072.P14582836095796355530

`A005843(A043075(n+1))-A043078(n+1)`
-/

namespace A043072.P14582836095796355530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043075 (n + 1)).toNat - A043078 (n + 1)

end

end A043072.P14582836095796355530

/-! ## A043072.P9057020320792564060

`A043074(n+1)-A004525(A043078(n+1)-A043074(n+1))`
-/

namespace A043072.P9057020320792564060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043074 (n + 1) - A004525 (A043078 (n + 1) - A043074 (n + 1)).toNat

end

end A043072.P9057020320792564060

/-!
# A043073: a(n)=(s(n)+7)/9, where s(n)=n-th base 9 palindrome that starts with 2.

The programs for A043073, there is no canonical definition to state claims against.
-/

/-! ## A043073.P706376195069708458

`2*A043074(n+1)-A043075(n+1)`
-/

namespace A043073.P706376195069708458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043074 (n + 1) - A043075 (n + 1)

end

end A043073.P706376195069708458

/-! ## A043073.P18063146478774421154

`2*A043075(n+1)-A043077(n+1)`
-/

namespace A043073.P18063146478774421154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043075 (n + 1) - A043077 (n + 1)

end

end A043073.P18063146478774421154

/-! ## A043073.P16096681524827451282

`(A043074(n+1)+A043072(n+1))/2`
-/

namespace A043073.P16096681524827451282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043074 (n + 1) + A043072 (n + 1) : ℚ) / 2

end

end A043073.P16096681524827451282

/-! ## A043073.P10976178138078249232

`2*A043076(n+1)-A043079(n+1)`
-/

namespace A043073.P10976178138078249232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043076 (n + 1) - A043079 (n + 1)

end

end A043073.P10976178138078249232

/-! ## A043073.P17658504570812323253

`A043072(n+1)+A043075(n+1)-A043074(n+1)`
-/

namespace A043073.P17658504570812323253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043072 (n + 1) + (A043075 (n + 1) - A043074 (n + 1))

end

end A043073.P17658504570812323253

/-! ## A043073.P9678309807747296276

`A043072(n+1)+A043078(n+1)-A043077(n+1)`
-/

namespace A043073.P9678309807747296276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043072 (n + 1) + (A043078 (n + 1) - A043077 (n + 1))

end

end A043073.P9678309807747296276

/-! ## A043073.P15922521263260102464

`A043075(n+1)+A043077(n+1)-A043079(n+1)`
-/

namespace A043073.P15922521263260102464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043075 (n + 1) + (A043077 (n + 1) - A043079 (n + 1))

end

end A043073.P15922521263260102464

/-! ## A043073.P1461584184545296350

`A080722(A043072(n+1))`
-/

namespace A043073.P1461584184545296350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 (A043072 (n + 1)).toNat

end

end A043073.P1461584184545296350

/-! ## A043073.P2527410198440878019

`A004525(A043074(n+1)+A043072(n+1))`
-/

namespace A043073.P2527410198440878019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043074 (n + 1) + A043072 (n + 1)).toNat

end

end A043073.P2527410198440878019

/-! ## A043073.P60692486606161534

`A005843(A043074(n+1))-A043075(n+1)`
-/

namespace A043073.P60692486606161534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043074 (n + 1)).toNat - A043075 (n + 1)

end

end A043073.P60692486606161534

/-! ## A043073.P5935635701512431447

`A005843(A043075(n+1))-A043077(n+1)`
-/

namespace A043073.P5935635701512431447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043075 (n + 1)).toNat - A043077 (n + 1)

end

end A043073.P5935635701512431447

/-! ## A043073.P15090711829019608058

`A043074(n+1)-A004525(A043076(n+1)-A043074(n+1))`
-/

namespace A043073.P15090711829019608058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043074 (n + 1) - A004525 (A043076 (n + 1) - A043074 (n + 1)).toNat

end

end A043073.P15090711829019608058

/-! ## A043073.P6626265633551024097

`A043075(n+1)-A004525(A043079(n+1)-A043075(n+1))`
-/

namespace A043073.P6626265633551024097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043075 (n + 1) - A004525 (A043079 (n + 1) - A043075 (n + 1)).toNat

end

end A043073.P6626265633551024097

/-!
# A043074: a(n)=(s(n)+6)/9, where s(n)=n-th base 9 palindrome that starts with 3.

The programs for A043074, there is no canonical definition to state claims against.
-/

/-! ## A043074.P1380373964218861609

`ceil(A043030(n+1)/9)`
-/

namespace A043074.P1380373964218861609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043030 (n + 1) : ℚ) / 9⌉

end

end A043074.P1380373964218861609

/-! ## A043074.P5768841372204277183

`2*A043073(n+1)-A043072(n+1)`
-/

namespace A043074.P5768841372204277183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043073 (n + 1) - A043072 (n + 1)

end

end A043074.P5768841372204277183

/-! ## A043074.P10807323186631905524

`2*A043075(n+1)-A043076(n+1)`
-/

namespace A043074.P10807323186631905524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043075 (n + 1) - A043076 (n + 1)

end

end A043074.P10807323186631905524

/-! ## A043074.P6726109033356343673

`2*A043076(n+1)-A043078(n+1)`
-/

namespace A043074.P6726109033356343673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043076 (n + 1) - A043078 (n + 1)

end

end A043074.P6726109033356343673

/-! ## A043074.P4768865085763052456

`(A043075(n+1)+A043073(n+1))/2`
-/

namespace A043074.P4768865085763052456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043075 (n + 1) + A043073 (n + 1) : ℚ) / 2

end

end A043074.P4768865085763052456

/-! ## A043074.P15939489473419338350

`(A043076(n+1)+A043072(n+1))/2`
-/

namespace A043074.P15939489473419338350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043076 (n + 1) + A043072 (n + 1) : ℚ) / 2

end

end A043074.P15939489473419338350

/-! ## A043074.P18042585350328960037

`floor(A043030(n+1)/9)-A008683(A204894(n+1))`
-/

namespace A043074.P18042585350328960037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043030 (n + 1) : ℚ) / 9⌋ - A008683 (A204894 (n + 1)).toNat

end

end A043074.P18042585350328960037

/-! ## A043074.P1477703148177033346

`floor(A043030(n+1)/9)+A059841(n)+A000035(n)`
-/

namespace A043074.P1477703148177033346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043030 (n + 1) : ℚ) / 9⌋ + (A059841 n + A000035 n)

end

end A043074.P1477703148177033346

/-! ## A043074.P5906180360350667206

`A043072(n+1)+A043077(n+1)-A043075(n+1)`
-/

namespace A043074.P5906180360350667206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043072 (n + 1) + (A043077 (n + 1) - A043075 (n + 1))

end

end A043074.P5906180360350667206

/-! ## A043074.P7281250617295541899

`A043072(n+1)+A043078(n+1)-A043076(n+1)`
-/

namespace A043074.P7281250617295541899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043072 (n + 1) + (A043078 (n + 1) - A043076 (n + 1))

end

end A043074.P7281250617295541899

/-! ## A043074.P5171650555748587837

`A043072(n+1)+A043079(n+1)-A043077(n+1)`
-/

namespace A043074.P5171650555748587837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043072 (n + 1) + (A043079 (n + 1) - A043077 (n + 1))

end

end A043074.P5171650555748587837

/-! ## A043074.P6357684728167411169

`A043073(n+1)+A043077(n+1)-A043076(n+1)`
-/

namespace A043074.P6357684728167411169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043073 (n + 1) + (A043077 (n + 1) - A043076 (n + 1))

end

end A043074.P6357684728167411169

/-! ## A043074.P9444204962091868776

`A043073(n+1)+A043079(n+1)-A043078(n+1)`
-/

namespace A043074.P9444204962091868776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043073 (n + 1) + (A043079 (n + 1) - A043078 (n + 1))

end

end A043074.P9444204962091868776

/-! ## A043074.P17683405293533875382

`A043076(n+1)+A043077(n+1)-A043079(n+1)`
-/

namespace A043074.P17683405293533875382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043076 (n + 1) + (A043077 (n + 1) - A043079 (n + 1))

end

end A043074.P17683405293533875382

/-! ## A043074.P13513848570458828970

`A008292(A020639(3*(n+2)))+floor(A043030(n+1)/9)`
-/

namespace A043074.P13513848570458828970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A020639 (3 * (n + 2))).toNat + ⌊(A043030 (n + 1) : ℚ) / 9⌋

end

end A043074.P13513848570458828970

/-! ## A043074.P13524575937673489239

`A054977(n+1)+floor(A043030(n+1)/9)`
-/

namespace A043074.P13524575937673489239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) + ⌊(A043030 (n + 1) : ℚ) / 9⌋

end

end A043074.P13524575937673489239

/-! ## A043074.P5577901113199898642

`A000120(2^∑{e}[2*n, #])+floor(A043030(n+1)/9)`
-/

namespace A043074.P5577901113199898642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + ⌊(A043030 (n + 1) : ℚ) / 9⌋

end

end A043074.P5577901113199898642

/-! ## A043074.P2358622371836180688

`A001222(A001359(n+1))+floor(A043030(n+1)/9)`
-/

namespace A043074.P2358622371836180688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001359 (n + 1)).toNat + ⌊(A043030 (n + 1) : ℚ) / 9⌋

end

end A043074.P2358622371836180688

/-! ## A043074.P18075284944814321802

`A043076(n+1)-A005843(A043077(n+1)-A043076(n+1))`
-/

namespace A043074.P18075284944814321802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043076 (n + 1) - A005843 (A043077 (n + 1) - A043076 (n + 1)).toNat

end

end A043074.P18075284944814321802

/-! ## A043074.P11922778520933867430

`floor(A043030(n+1)/9)+A007318(∑[n])`
-/

namespace A043074.P11922778520933867430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043030 (n + 1) : ℚ) / 9⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A043074.P11922778520933867430

/-!
# A043075: a(n)=(s(n)+5)/9, where s(n)=n-th base 9 palindrome that starts with 4.

The programs for A043075, there is no canonical definition to state claims against.
-/

/-! ## A043075.P13486238472309609023

`ceil(A043031(n+1)/9)`
-/

namespace A043075.P13486238472309609023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043031 (n + 1) : ℚ) / 9⌉

end

end A043075.P13486238472309609023

/-! ## A043075.P1668726985273509887

`2*A043074(n+1)-A043073(n+1)`
-/

namespace A043075.P1668726985273509887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043074 (n + 1) - A043073 (n + 1)

end

end A043075.P1668726985273509887

/-! ## A043075.P16345314278722237572

`2*A043076(n+1)-A043077(n+1)`
-/

namespace A043075.P16345314278722237572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043076 (n + 1) - A043077 (n + 1)

end

end A043075.P16345314278722237572

/-! ## A043075.P10804724277087606598

`2*A043077(n+1)-A043079(n+1)`
-/

namespace A043075.P10804724277087606598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043077 (n + 1) - A043079 (n + 1)

end

end A043075.P10804724277087606598

/-! ## A043075.P12685196132134162583

`(A043076(n+1)+A043074(n+1))/2`
-/

namespace A043075.P12685196132134162583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043076 (n + 1) + A043074 (n + 1) : ℚ) / 2

end

end A043075.P12685196132134162583

/-! ## A043075.P6610539185624498612

`(A043077(n+1)+A043073(n+1))/2`
-/

namespace A043075.P6610539185624498612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043077 (n + 1) + A043073 (n + 1) : ℚ) / 2

end

end A043075.P6610539185624498612

/-! ## A043075.P4698723650765550093

`(A043078(n+1)+A043072(n+1))/2`
-/

namespace A043075.P4698723650765550093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043078 (n + 1) + A043072 (n + 1) : ℚ) / 2

end

end A043075.P4698723650765550093

/-! ## A043075.P3419319410137712205

`A004525(A043076(n+1)+A043074(n+1))`
-/

namespace A043075.P3419319410137712205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043076 (n + 1) + A043074 (n + 1)).toNat

end

end A043075.P3419319410137712205

/-! ## A043075.P4428788324957423972

`A004525(A043077(n+1)+A043073(n+1))`
-/

namespace A043075.P4428788324957423972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043077 (n + 1) + A043073 (n + 1)).toNat

end

end A043075.P4428788324957423972

/-! ## A043075.P15417045349593804640

`A005843(A043074(n+1))-A043073(n+1)`
-/

namespace A043075.P15417045349593804640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043074 (n + 1)).toNat - A043073 (n + 1)

end

end A043075.P15417045349593804640

/-! ## A043075.P4997643513175386988

`A005843(A043076(n+1))-A043077(n+1)`
-/

namespace A043075.P4997643513175386988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043076 (n + 1)).toNat - A043077 (n + 1)

end

end A043075.P4997643513175386988

/-! ## A043075.P14850285803302658504

`A043074(n+1)+A004525(A043074(n+1)-A043072(n+1))`
-/

namespace A043075.P14850285803302658504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043074 (n + 1) + A004525 (A043074 (n + 1) - A043072 (n + 1)).toNat

end

end A043075.P14850285803302658504

/-! ## A043075.P1882504342592432911

`A043076(n+1)-A004525(A043078(n+1)-A043076(n+1))`
-/

namespace A043075.P1882504342592432911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043076 (n + 1) - A004525 (A043078 (n + 1) - A043076 (n + 1)).toNat

end

end A043075.P1882504342592432911

/-!
# A043076: a(n)=(s(n)+4)/9, where s(n)=n-th base 9 palindrome that starts with 5.

The programs for A043076, there is no canonical definition to state claims against.
-/

/-! ## A043076.P4930972079059498583

`2*A043074(n+1)-A043072(n+1)`
-/

namespace A043076.P4930972079059498583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043074 (n + 1) - A043072 (n + 1)

end

end A043076.P4930972079059498583

/-! ## A043076.P17135047434937049485

`2*A043075(n+1)-A043074(n+1)`
-/

namespace A043076.P17135047434937049485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043075 (n + 1) - A043074 (n + 1)

end

end A043076.P17135047434937049485

/-! ## A043076.P3471949392697046607

`2*A043077(n+1)-A043078(n+1)`
-/

namespace A043076.P3471949392697046607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043077 (n + 1) - A043078 (n + 1)

end

end A043076.P3471949392697046607

/-! ## A043076.P12275604385509656790

`(A043077(n+1)+A043075(n+1))/2`
-/

namespace A043076.P12275604385509656790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043077 (n + 1) + A043075 (n + 1) : ℚ) / 2

end

end A043076.P12275604385509656790

/-! ## A043076.P13175422448818054333

`(A043078(n+1)+A043074(n+1))/2`
-/

namespace A043076.P13175422448818054333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043078 (n + 1) + A043074 (n + 1) : ℚ) / 2

end

end A043076.P13175422448818054333

/-! ## A043076.P1413974338220114999

`(A043079(n+1)+A043073(n+1))/2`
-/

namespace A043076.P1413974338220114999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043079 (n + 1) + A043073 (n + 1) : ℚ) / 2

end

end A043076.P1413974338220114999

/-! ## A043076.P17408470460715108141

`A043072(n+1)+A043077(n+1)-A043073(n+1)`
-/

namespace A043076.P17408470460715108141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043072 (n + 1) + (A043077 (n + 1) - A043073 (n + 1))

end

end A043076.P17408470460715108141

/-! ## A043076.P12319279970650340420

`A043072(n+1)+A043078(n+1)-A043074(n+1)`
-/

namespace A043076.P12319279970650340420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043072 (n + 1) + (A043078 (n + 1) - A043074 (n + 1))

end

end A043076.P12319279970650340420

/-! ## A043076.P10555815553101495714

`A043074(n+1)+A043077(n+1)-A043075(n+1)`
-/

namespace A043076.P10555815553101495714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043074 (n + 1) + (A043077 (n + 1) - A043075 (n + 1))

end

end A043076.P10555815553101495714

/-! ## A043076.P11924969741882925616

`A043074(n+1)+A043079(n+1)-A043077(n+1)`
-/

namespace A043076.P11924969741882925616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043074 (n + 1) + (A043079 (n + 1) - A043077 (n + 1))

end

end A043076.P11924969741882925616

/-! ## A043076.P15738992803021765786

`A043074(n+1)+A005843(A043074(n+1)-A043073(n+1))`
-/

namespace A043076.P15738992803021765786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043074 (n + 1) + A005843 (A043074 (n + 1) - A043073 (n + 1)).toNat

end

end A043076.P15738992803021765786

/-! ## A043076.P14946161132899264045

`A043077(n+1)-A014682(A043079(n+1)-A043077(n+1))`
-/

namespace A043076.P14946161132899264045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043077 (n + 1) - A014682 (A043079 (n + 1) - A043077 (n + 1)).toNat

end

end A043076.P14946161132899264045

/-! ## A043076.P1273964593304240541

`A004525(A043077(n+1)+A043075(n+1))`
-/

namespace A043076.P1273964593304240541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043077 (n + 1) + A043075 (n + 1)).toNat

end

end A043076.P1273964593304240541

/-! ## A043076.P10609574891022339908

`A004525(A043078(n+1)+A043074(n+1))`
-/

namespace A043076.P10609574891022339908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043078 (n + 1) + A043074 (n + 1)).toNat

end

end A043076.P10609574891022339908

/-! ## A043076.P4088268162762168953

`A004525(A043079(n+1)+A043073(n+1))`
-/

namespace A043076.P4088268162762168953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043079 (n + 1) + A043073 (n + 1)).toNat

end

end A043076.P4088268162762168953

/-! ## A043076.P12959995078992221228

`A005843(A043075(n+1))-A043074(n+1)`
-/

namespace A043076.P12959995078992221228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043075 (n + 1)).toNat - A043074 (n + 1)

end

end A043076.P12959995078992221228

/-!
# A043077: a(n)=(s(n)+3)/9, where s(n)=n-th base 9 palindrome that starts with 6.

The programs for A043077, there is no canonical definition to state claims against.
-/

/-! ## A043077.P18014478005597801664

`ceil(A043033(n+1)/9)`
-/

namespace A043077.P18014478005597801664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043033 (n + 1) : ℚ) / 9⌉

end

end A043077.P18014478005597801664

/-! ## A043077.P6761872349044355051

`2*A043075(n+1)-A043073(n+1)`
-/

namespace A043077.P6761872349044355051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043075 (n + 1) - A043073 (n + 1)

end

end A043077.P6761872349044355051

/-! ## A043077.P278326831001961946

`2*A043076(n+1)-A043075(n+1)`
-/

namespace A043077.P278326831001961946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043076 (n + 1) - A043075 (n + 1)

end

end A043077.P278326831001961946

/-! ## A043077.P7904343120214690288

`2*A043078(n+1)-A043079(n+1)`
-/

namespace A043077.P7904343120214690288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043078 (n + 1) - A043079 (n + 1)

end

end A043077.P7904343120214690288

/-! ## A043077.P18406232129638570580

`(A043078(n+1)+A043076(n+1))/2`
-/

namespace A043077.P18406232129638570580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043078 (n + 1) + A043076 (n + 1) : ℚ) / 2

end

end A043077.P18406232129638570580

/-! ## A043077.P16659489463045921404

`(A043079(n+1)+A043075(n+1))/2`
-/

namespace A043077.P16659489463045921404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043079 (n + 1) + A043075 (n + 1) : ℚ) / 2

end

end A043077.P16659489463045921404

/-! ## A043077.P9684384849537256158

`A043074(n+1)+A043075(n+1)-A043072(n+1)`
-/

namespace A043077.P9684384849537256158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043074 (n + 1) + (A043075 (n + 1) - A043072 (n + 1))

end

end A043077.P9684384849537256158

/-! ## A043077.P12963733561495624366

`A043075(n+1)+A005843(A043075(n+1)-A043074(n+1))`
-/

namespace A043077.P12963733561495624366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043075 (n + 1) + A005843 (A043075 (n + 1) - A043074 (n + 1)).toNat

end

end A043077.P12963733561495624366

/-! ## A043077.P17243025733679947145

`A080722(A043074(n+1))`
-/

namespace A043077.P17243025733679947145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 (A043074 (n + 1)).toNat

end

end A043077.P17243025733679947145

/-! ## A043077.P3134248244673245326

`A005843(A043075(n+1))-A043073(n+1)`
-/

namespace A043077.P3134248244673245326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043075 (n + 1)).toNat - A043073 (n + 1)

end

end A043077.P3134248244673245326

/-! ## A043077.P14259370420568966629

`A043075(n+1)+A004525(A043079(n+1)-A043075(n+1))`
-/

namespace A043077.P14259370420568966629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043075 (n + 1) + A004525 (A043079 (n + 1) - A043075 (n + 1)).toNat

end

end A043077.P14259370420568966629

/-! ## A043077.P3229368670892101024

`A043076(n+1)+A004525(A043076(n+1)-A043074(n+1))`
-/

namespace A043077.P3229368670892101024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043076 (n + 1) + A004525 (A043076 (n + 1) - A043074 (n + 1)).toNat

end

end A043077.P3229368670892101024

/-! ## A043077.P12934753375790071337

`A043076(n+1)+A004525(A043078(n+1)-A043076(n+1))`
-/

namespace A043077.P12934753375790071337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043076 (n + 1) + A004525 (A043078 (n + 1) - A043076 (n + 1)).toNat

end

end A043077.P12934753375790071337

/-!
# A043078: a(n)=(s(n)+2)/9, where s(n)=n-th base 9 palindrome that starts with 7.

The programs for A043078, there is no canonical definition to state claims against.
-/

/-! ## A043078.P6456334836043376251

`ceil(A043034(n+1)/9)`
-/

namespace A043078.P6456334836043376251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043034 (n + 1) : ℚ) / 9⌉

end

end A043078.P6456334836043376251

/-! ## A043078.P16704534930446299763

`2*A043075(n+1)-A043072(n+1)`
-/

namespace A043078.P16704534930446299763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043075 (n + 1) - A043072 (n + 1)

end

end A043078.P16704534930446299763

/-! ## A043078.P2917486262321762861

`2*A043076(n+1)-A043074(n+1)`
-/

namespace A043078.P2917486262321762861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043076 (n + 1) - A043074 (n + 1)

end

end A043078.P2917486262321762861

/-! ## A043078.P17282920281412731008

`2*A043077(n+1)-A043076(n+1)`
-/

namespace A043078.P17282920281412731008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043077 (n + 1) - A043076 (n + 1)

end

end A043078.P17282920281412731008

/-! ## A043078.P3922740687216936241

`(A043079(n+1)+A043077(n+1))/2`
-/

namespace A043078.P3922740687216936241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043079 (n + 1) + A043077 (n + 1) : ℚ) / 2

end

end A043078.P3922740687216936241

/-! ## A043078.P11972864643229669153

`A043072(n+1)+A043079(n+1)-A043073(n+1)`
-/

namespace A043078.P11972864643229669153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043072 (n + 1) + (A043079 (n + 1) - A043073 (n + 1))

end

end A043078.P11972864643229669153

/-! ## A043078.P13453383497711142681

`A043073(n+1)+A043077(n+1)-A043072(n+1)`
-/

namespace A043078.P13453383497711142681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043073 (n + 1) + (A043077 (n + 1) - A043072 (n + 1))

end

end A043078.P13453383497711142681

/-! ## A043078.P6870164748460857693

`A043075(n+1)+A043077(n+1)-A043074(n+1)`
-/

namespace A043078.P6870164748460857693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043075 (n + 1) + (A043077 (n + 1) - A043074 (n + 1))

end

end A043078.P6870164748460857693

/-! ## A043078.P15633412388966280137

`A043076(n+1)+A043079(n+1)-A043077(n+1)`
-/

namespace A043078.P15633412388966280137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043076 (n + 1) + (A043079 (n + 1) - A043077 (n + 1))

end

end A043078.P15633412388966280137

/-! ## A043078.P13833232335650348758

`A043077(n+1)+A014682(A043079(n+1)-A043077(n+1))`
-/

namespace A043078.P13833232335650348758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043077 (n + 1) + A014682 (A043079 (n + 1) - A043077 (n + 1)).toNat

end

end A043078.P13833232335650348758

/-! ## A043078.P17479987353434138223

`A014682(A043079(n+1)+A043077(n+1))`
-/

namespace A043078.P17479987353434138223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A043079 (n + 1) + A043077 (n + 1)).toNat

end

end A043078.P17479987353434138223

/-! ## A043078.P11587038101384196842

`A080722(A043075(n+1))`
-/

namespace A043078.P11587038101384196842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 (A043075 (n + 1)).toNat

end

end A043078.P11587038101384196842

/-! ## A043078.P16972086877129306431

`A005843(A043075(n+1))-A043072(n+1)`
-/

namespace A043078.P16972086877129306431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043075 (n + 1)).toNat - A043072 (n + 1)

end

end A043078.P16972086877129306431

/-! ## A043078.P12365451554044597507

`A005843(A043076(n+1))-A043074(n+1)`
-/

namespace A043078.P12365451554044597507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043076 (n + 1)).toNat - A043074 (n + 1)

end

end A043078.P12365451554044597507

/-! ## A043078.P10016233865231373156

`A005843(A043077(n+1))-A043076(n+1)`
-/

namespace A043078.P10016233865231373156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043077 (n + 1)).toNat - A043076 (n + 1)

end

end A043078.P10016233865231373156

/-! ## A043078.P8057414364037636874

`A043077(n+1)+A004525(A043077(n+1)-A043075(n+1))`
-/

namespace A043078.P8057414364037636874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043077 (n + 1) + A004525 (A043077 (n + 1) - A043075 (n + 1)).toNat

end

end A043078.P8057414364037636874

/-!
# A043079: (s(n)+1)/9, where s(n)=n-th base 9 palindrome that starts with 8.

The programs for A043079, there is no canonical definition to state claims against.
-/

/-! ## A043079.P8523721074948284340

`ceil(A043035(n+1)/9)`
-/

namespace A043079.P8523721074948284340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043035 (n + 1) : ℚ) / 9⌉

end

end A043079.P8523721074948284340

/-! ## A043079.P10529033062454396895

`2*A043076(n+1)-A043073(n+1)`
-/

namespace A043079.P10529033062454396895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043076 (n + 1) - A043073 (n + 1)

end

end A043079.P10529033062454396895

/-! ## A043079.P16789843351768090295

`2*A043077(n+1)-A043075(n+1)`
-/

namespace A043079.P16789843351768090295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043077 (n + 1) - A043075 (n + 1)

end

end A043079.P16789843351768090295

/-! ## A043079.P11990254676944164480

`2*A043078(n+1)-A043077(n+1)`
-/

namespace A043079.P11990254676944164480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043078 (n + 1) - A043077 (n + 1)

end

end A043079.P11990254676944164480

/-! ## A043079.P10885403327024595066

`round(A043035(n+1)/9)%(A101098(n+2)-6)`
-/

namespace A043079.P10885403327024595066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A043035 (n + 1) : ℚ) / 9)) (A101098 (n + 2) - 6)

end

end A043079.P10885403327024595066

/-! ## A043079.P17176685039540957603

`A000027(round(A043035(n+1)/9))`
-/

namespace A043079.P17176685039540957603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A043035 (n + 1) : ℚ) / 9)).toNat

end

end A043079.P17176685039540957603

/-! ## A043079.P13133546336968930812

`A043077(n+1)+A005843(A043077(n+1)-A043076(n+1))`
-/

namespace A043079.P13133546336968930812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043077 (n + 1) + A005843 (A043077 (n + 1) - A043076 (n + 1)).toNat

end

end A043079.P13133546336968930812

/-! ## A043079.P8003257697248799093

`A080722(A043076(n+1))`
-/

namespace A043079.P8003257697248799093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 (A043076 (n + 1)).toNat

end

end A043079.P8003257697248799093

/-! ## A043079.P15788533061552619002

`A005843(A043076(n+1))-A043073(n+1)`
-/

namespace A043079.P15788533061552619002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043076 (n + 1)).toNat - A043073 (n + 1)

end

end A043079.P15788533061552619002

/-! ## A043079.P15494430136256601120

`A005843(A043077(n+1))-A043075(n+1)`
-/

namespace A043079.P15494430136256601120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043077 (n + 1)).toNat - A043075 (n + 1)

end

end A043079.P15494430136256601120

/-! ## A043079.P4668599648887628228

`A043077(n+1)+A004525(A043077(n+1)-A043073(n+1))`
-/

namespace A043079.P4668599648887628228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043077 (n + 1) + A004525 (A043077 (n + 1) - A043073 (n + 1)).toNat

end

end A043079.P4668599648887628228

/-! ## A043079.P5890733200758372483

`A043078(n+1)+A004525(A043078(n+1)-A043076(n+1))`
-/

namespace A043079.P5890733200758372483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043078 (n + 1) + A004525 (A043078 (n + 1) - A043076 (n + 1)).toNat

end

end A043079.P5890733200758372483

/-! ## A043079.P16410330048617828298

`A043075(n+1)+A005843(A043075(n+1)-A043073(n+1))`
-/

namespace A043079.P16410330048617828298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043075 (n + 1) + A005843 (A043075 (n + 1) - A043073 (n + 1)).toNat

end

end A043079.P16410330048617828298

/-!
# A043080: a(n) = (s(n) + 9)/10, where s(n) is the n-th base 10 palindrome that starts with 1.

The programs for A043080, there is no canonical definition to state claims against.
-/

/-! ## A043080.P15323918299768886800

`(A043036(n+1)+9)/10`
-/

namespace A043080.P15323918299768886800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043036 (n + 1) + 9 : ℚ) / 10

end

end A043080.P15323918299768886800

/-! ## A043080.P13281747766925145159

`ceil(A043036(n+1)/10)`
-/

namespace A043080.P13281747766925145159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043036 (n + 1) : ℚ) / 10⌉

end

end A043080.P13281747766925145159

/-! ## A043080.P9727285667224740528

`2*A043081(n+1)-A043082(n+1)`
-/

namespace A043080.P9727285667224740528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043081 (n + 1) - A043082 (n + 1)

end

end A043080.P9727285667224740528

/-! ## A043080.P11823654224203780660

`2*A043082(n+1)-A043084(n+1)`
-/

namespace A043080.P11823654224203780660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043082 (n + 1) - A043084 (n + 1)

end

end A043080.P11823654224203780660

/-! ## A043080.P13911481880378752328

`2*A043083(n+1)-A043086(n+1)`
-/

namespace A043080.P13911481880378752328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043083 (n + 1) - A043086 (n + 1)

end

end A043080.P13911481880378752328

/-! ## A043080.P12051345280095167139

`2*A043084(n+1)-A043088(n+1)`
-/

namespace A043080.P12051345280095167139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043084 (n + 1) - A043088 (n + 1)

end

end A043080.P12051345280095167139

/-! ## A043080.P8587165329696498583

`A043081(n+1)+A043082(n+1)-A043083(n+1)`
-/

namespace A043080.P8587165329696498583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043081 (n + 1) + (A043082 (n + 1) - A043083 (n + 1))

end

end A043080.P8587165329696498583

/-! ## A043080.P8420459460363285496

`A043081(n+1)+A043083(n+1)-A043084(n+1)`
-/

namespace A043080.P8420459460363285496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043081 (n + 1) + (A043083 (n + 1) - A043084 (n + 1))

end

end A043080.P8420459460363285496

/-! ## A043080.P8299868605554428418

`A043082(n+1)-A005843(A043083(n+1)-A043082(n+1))`
-/

namespace A043080.P8299868605554428418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043082 (n + 1) - A005843 (A043083 (n + 1) - A043082 (n + 1)).toNat

end

end A043080.P8299868605554428418

/-! ## A043080.P11538906002869020174

`A005843(A043081(n+1))-A043082(n+1)`
-/

namespace A043080.P11538906002869020174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043081 (n + 1)).toNat - A043082 (n + 1)

end

end A043080.P11538906002869020174

/-! ## A043080.P11121326182964667517

`A005843(A043082(n+1))-A043084(n+1)`
-/

namespace A043080.P11121326182964667517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043082 (n + 1)).toNat - A043084 (n + 1)

end

end A043080.P11121326182964667517

/-! ## A043080.P7215978338837727283

`A005843(A043083(n+1))-A043086(n+1)`
-/

namespace A043080.P7215978338837727283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043083 (n + 1)).toNat - A043086 (n + 1)

end

end A043080.P7215978338837727283

/-! ## A043080.P10573183213663693894

`A043081(n+1)-A004525(A043083(n+1)-A043081(n+1))`
-/

namespace A043080.P10573183213663693894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043081 (n + 1) - A004525 (A043083 (n + 1) - A043081 (n + 1)).toNat

end

end A043080.P10573183213663693894

/-!
# A043081: a(n)=(s(n)+8)/10, where s(n)=n-th base 10 palindrome that starts with 2.

The programs for A043081, there is no canonical definition to state claims against.
-/

/-! ## A043081.P7297181003897736524

`ceil(A043037(n+1)/10)`
-/

namespace A043081.P7297181003897736524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043037 (n + 1) : ℚ) / 10⌉

end

end A043081.P7297181003897736524

/-! ## A043081.P14213987253792197045

`2*A043082(n+1)-A043083(n+1)`
-/

namespace A043081.P14213987253792197045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043082 (n + 1) - A043083 (n + 1)

end

end A043081.P14213987253792197045

/-! ## A043081.P15544797620513796303

`2*A043083(n+1)-A043085(n+1)`
-/

namespace A043081.P15544797620513796303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043083 (n + 1) - A043085 (n + 1)

end

end A043081.P15544797620513796303

/-! ## A043081.P4526448941218750020

`(A043082(n+1)+A043080(n+1))/2`
-/

namespace A043081.P4526448941218750020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043082 (n + 1) + A043080 (n + 1) : ℚ) / 2

end

end A043081.P4526448941218750020

/-! ## A043081.P4552414754017925038

`2*A043084(n+1)-A043087(n+1)`
-/

namespace A043081.P4552414754017925038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043084 (n + 1) - A043087 (n + 1)

end

end A043081.P4552414754017925038

/-! ## A043081.P12050643003390784161

`A043080(n+1)+A043084(n+1)-A043083(n+1)`
-/

namespace A043081.P12050643003390784161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043080 (n + 1) + (A043084 (n + 1) - A043083 (n + 1))

end

end A043081.P12050643003390784161

/-! ## A043081.P16336595355008319254

`A043083(n+1)-A005843(A043084(n+1)-A043083(n+1))`
-/

namespace A043081.P16336595355008319254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043083 (n + 1) - A005843 (A043084 (n + 1) - A043083 (n + 1)).toNat

end

end A043081.P16336595355008319254

/-! ## A043081.P18054540096630611065

`A004525(A043082(n+1)+A043080(n+1))`
-/

namespace A043081.P18054540096630611065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043082 (n + 1) + A043080 (n + 1)).toNat

end

end A043081.P18054540096630611065

/-! ## A043081.P17212171616554466926

`A005843(A043082(n+1))-A043083(n+1)`
-/

namespace A043081.P17212171616554466926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043082 (n + 1)).toNat - A043083 (n + 1)

end

end A043081.P17212171616554466926

/-! ## A043081.P12036549522073339570

`A043082(n+1)-A004525(A043084(n+1)-A043082(n+1))`
-/

namespace A043081.P12036549522073339570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043082 (n + 1) - A004525 (A043084 (n + 1) - A043082 (n + 1)).toNat

end

end A043081.P12036549522073339570

/-!
# A043082: (s(n)+7)/10, where s(n)=n-th base 10 palindrome that starts with 3.

The programs for A043082, there is no canonical definition to state claims against.
-/

/-! ## A043082.P14469107205935546128

`ceil(A043038(n+1)/10)`
-/

namespace A043082.P14469107205935546128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043038 (n + 1) : ℚ) / 10⌉

end

end A043082.P14469107205935546128

/-! ## A043082.P17018198866259404014

`2*A043081(n+1)-A043080(n+1)`
-/

namespace A043082.P17018198866259404014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043081 (n + 1) - A043080 (n + 1)

end

end A043082.P17018198866259404014

/-! ## A043082.P13445990162798547874

`2*A043083(n+1)-A043084(n+1)`
-/

namespace A043082.P13445990162798547874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043083 (n + 1) - A043084 (n + 1)

end

end A043082.P13445990162798547874

/-! ## A043082.P4278668660712018322

`2*A043084(n+1)-A043086(n+1)`
-/

namespace A043082.P4278668660712018322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043084 (n + 1) - A043086 (n + 1)

end

end A043082.P4278668660712018322

/-! ## A043082.P14396431190840814904

`(A043083(n+1)+A043081(n+1))/2`
-/

namespace A043082.P14396431190840814904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043083 (n + 1) + A043081 (n + 1) : ℚ) / 2

end

end A043082.P14396431190840814904

/-! ## A043082.P13442088749332716356

`(A043084(n+1)+A043080(n+1))/2`
-/

namespace A043082.P13442088749332716356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043084 (n + 1) + A043080 (n + 1) : ℚ) / 2

end

end A043082.P13442088749332716356

/-! ## A043082.P13515671345917082056

`A043081(n+1)+A043084(n+1)-A043083(n+1)`
-/

namespace A043082.P13515671345917082056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043081 (n + 1) + (A043084 (n + 1) - A043083 (n + 1))

end

end A043082.P13515671345917082056

/-! ## A043082.P1876335318960535543

`A043084(n+1)-A005843(A043084(n+1)-A043083(n+1))`
-/

namespace A043082.P1876335318960535543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043084 (n + 1) - A005843 (A043084 (n + 1) - A043083 (n + 1)).toNat

end

end A043082.P1876335318960535543

/-! ## A043082.P4939532272591847606

`A004525(A043083(n+1)+A043081(n+1))`
-/

namespace A043082.P4939532272591847606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043083 (n + 1) + A043081 (n + 1)).toNat

end

end A043082.P4939532272591847606

/-! ## A043082.P15605634545545002301

`A004525(A043084(n+1)+A043080(n+1))`
-/

namespace A043082.P15605634545545002301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043084 (n + 1) + A043080 (n + 1)).toNat

end

end A043082.P15605634545545002301

/-! ## A043082.P13644941230841112526

`A005843(A043081(n+1))-A043080(n+1)`
-/

namespace A043082.P13644941230841112526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043081 (n + 1)).toNat - A043080 (n + 1)

end

end A043082.P13644941230841112526

/-! ## A043082.P6817651187975503325

`A005843(A043083(n+1))-A043084(n+1)`
-/

namespace A043082.P6817651187975503325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043083 (n + 1)).toNat - A043084 (n + 1)

end

end A043082.P6817651187975503325

/-!
# A043083: a(n)=(s(n)+6)/10, where s(n)=n-th base 10 palindrome that starts with 4.

The programs for A043083, there is no canonical definition to state claims against.
-/

/-! ## A043083.P16397417537381052960

`ceil(A043039(n+1)/10)`
-/

namespace A043083.P16397417537381052960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043039 (n + 1) : ℚ) / 10⌉

end

end A043083.P16397417537381052960

/-! ## A043083.P8210585039760322569

`2*A043082(n+1)-A043081(n+1)`
-/

namespace A043083.P8210585039760322569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043082 (n + 1) - A043081 (n + 1)

end

end A043083.P8210585039760322569

/-! ## A043083.P15247438228792388280

`2*A043084(n+1)-A043085(n+1)`
-/

namespace A043083.P15247438228792388280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043084 (n + 1) - A043085 (n + 1)

end

end A043083.P15247438228792388280

/-! ## A043083.P2918104704146462131

`2*A043085(n+1)-A043087(n+1)`
-/

namespace A043083.P2918104704146462131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043085 (n + 1) - A043087 (n + 1)

end

end A043083.P2918104704146462131

/-! ## A043083.P17418149881547491009

`(A043084(n+1)+A043082(n+1))/2`
-/

namespace A043083.P17418149881547491009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043084 (n + 1) + A043082 (n + 1) : ℚ) / 2

end

end A043083.P17418149881547491009

/-! ## A043083.P14927573087543173628

`(A043085(n+1)+A043081(n+1))/2`
-/

namespace A043083.P14927573087543173628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043085 (n + 1) + A043081 (n + 1) : ℚ) / 2

end

end A043083.P14927573087543173628

/-! ## A043083.P9340782939188962090

`(A043086(n+1)+A043080(n+1))/2`
-/

namespace A043083.P9340782939188962090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043086 (n + 1) + A043080 (n + 1) : ℚ) / 2

end

end A043083.P9340782939188962090

/-! ## A043083.P8510021464273556932

`A043081(n+1)+A005843(A043081(n+1)-A043080(n+1))`
-/

namespace A043083.P8510021464273556932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043081 (n + 1) + A005843 (A043081 (n + 1) - A043080 (n + 1)).toNat

end

end A043083.P8510021464273556932

/-! ## A043083.P678219235513481350

`A004525(A043084(n+1)+A043082(n+1))`
-/

namespace A043083.P678219235513481350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043084 (n + 1) + A043082 (n + 1)).toNat

end

end A043083.P678219235513481350

/-! ## A043083.P13913982421680668567

`A004525(A043085(n+1)+A043081(n+1))`
-/

namespace A043083.P13913982421680668567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043085 (n + 1) + A043081 (n + 1)).toNat

end

end A043083.P13913982421680668567

/-! ## A043083.P5448626588526285732

`A004525(A043086(n+1)+A043080(n+1))`
-/

namespace A043083.P5448626588526285732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A043086 (n + 1) + A043080 (n + 1)).toNat

end

end A043083.P5448626588526285732

/-! ## A043083.P11603403584693841269

`A005843(A043082(n+1))-A043081(n+1)`
-/

namespace A043083.P11603403584693841269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043082 (n + 1)).toNat - A043081 (n + 1)

end

end A043083.P11603403584693841269

/-! ## A043083.P17702846277563884873

`A043082(n+1)+A004525(A043082(n+1)-A043080(n+1))`
-/

namespace A043083.P17702846277563884873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043082 (n + 1) + A004525 (A043082 (n + 1) - A043080 (n + 1)).toNat

end

end A043083.P17702846277563884873

/-!
# A043084: a(n)=(s(n)+5)/10, where s(n)=n-th base 10 palindrome that starts with 5.

The programs for A043084, there is no canonical definition to state claims against.
-/

/-! ## A043084.P8238647384537862577

`2*A043082(n+1)-A043080(n+1)`
-/

namespace A043084.P8238647384537862577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043082 (n + 1) - A043080 (n + 1)

end

end A043084.P8238647384537862577

/-! ## A043084.P18202494066605208983

`2*A043083(n+1)-A043082(n+1)`
-/

namespace A043084.P18202494066605208983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043083 (n + 1) - A043082 (n + 1)

end

end A043084.P18202494066605208983

/-! ## A043084.P17378563127009815116

`2*A043085(n+1)-A043086(n+1)`
-/

namespace A043084.P17378563127009815116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043085 (n + 1) - A043086 (n + 1)

end

end A043084.P17378563127009815116

/-! ## A043084.P8540550114489110941

`(A043085(n+1)+A043083(n+1))/2`
-/

namespace A043084.P8540550114489110941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043085 (n + 1) + A043083 (n + 1) : ℚ) / 2

end

end A043084.P8540550114489110941

/-! ## A043084.P8948492162995798725

`(A043086(n+1)+A043082(n+1))/2`
-/

namespace A043084.P8948492162995798725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043086 (n + 1) + A043082 (n + 1) : ℚ) / 2

end

end A043084.P8948492162995798725

/-! ## A043084.P1299101597006288777

`(A043087(n+1)+A043081(n+1))/2`
-/

namespace A043084.P1299101597006288777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043087 (n + 1) + A043081 (n + 1) : ℚ) / 2

end

end A043084.P1299101597006288777

/-! ## A043084.P12598093317147259525

`A043080(n+1)+A043086(n+1)-A043082(n+1)`
-/

namespace A043084.P12598093317147259525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043080 (n + 1) + (A043086 (n + 1) - A043082 (n + 1))

end

end A043084.P12598093317147259525

/-! ## A043084.P11846404156036072171

`A043082(n+1)+A043083(n+1)-A043081(n+1)`
-/

namespace A043084.P11846404156036072171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043082 (n + 1) + (A043083 (n + 1) - A043081 (n + 1))

end

end A043084.P11846404156036072171

/-! ## A043084.P14975458487164212837

`A043082(n+1)+A005843(A043082(n+1)-A043081(n+1))`
-/

namespace A043084.P14975458487164212837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043082 (n + 1) + A005843 (A043082 (n + 1) - A043081 (n + 1)).toNat

end

end A043084.P14975458487164212837

/-! ## A043084.P17468173974520934881

`A043082(n+1)+A005843(A043083(n+1)-A043082(n+1))`
-/

namespace A043084.P17468173974520934881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043082 (n + 1) + A005843 (A043083 (n + 1) - A043082 (n + 1)).toNat

end

end A043084.P17468173974520934881

/-! ## A043084.P7841032875174590509

`A005843(A043082(n+1))-A043080(n+1)`
-/

namespace A043084.P7841032875174590509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043082 (n + 1)).toNat - A043080 (n + 1)

end

end A043084.P7841032875174590509

/-! ## A043084.P10199966935137230404

`A005843(A043083(n+1))-A043082(n+1)`
-/

namespace A043084.P10199966935137230404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043083 (n + 1)).toNat - A043082 (n + 1)

end

end A043084.P10199966935137230404

/-! ## A043084.P10082740302067883643

`A043083(n+1)+A004525(A043083(n+1)-A043081(n+1))`
-/

namespace A043084.P10082740302067883643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043083 (n + 1) + A004525 (A043083 (n + 1) - A043081 (n + 1)).toNat

end

end A043084.P10082740302067883643

/-!
# A043085: a(n)=(s(n)+4)/10, where s(n)=n-th base 10 palindrome that starts with 6.

The programs for A043085, there is no canonical definition to state claims against.
-/

/-! ## A043085.P1791811622339121364

`ceil(A043041(n+1)/10)`
-/

namespace A043085.P1791811622339121364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043041 (n + 1) : ℚ) / 10⌉

end

end A043085.P1791811622339121364

/-! ## A043085.P13320915361971628270

`or(round(A043041(n+1)/10), A000007(n))`
-/

namespace A043085.P13320915361971628270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10)) (A000007 n)

end

end A043085.P13320915361971628270

/-! ## A043085.P4454591691856753646

`or(round(A043041(n+1)/10), A130706(n))`
-/

namespace A043085.P4454591691856753646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10)) (A130706 n)

end

end A043085.P4454591691856753646

/-! ## A043085.P7456793297591870517

`2*A043083(n+1)-A043081(n+1)`
-/

namespace A043085.P7456793297591870517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043083 (n + 1) - A043081 (n + 1)

end

end A043085.P7456793297591870517

/-! ## A043085.P15887447215537331542

`2*A043084(n+1)-A043083(n+1)`
-/

namespace A043085.P15887447215537331542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043084 (n + 1) - A043083 (n + 1)

end

end A043085.P15887447215537331542

/-! ## A043085.P7691510607088388034

`2*A043086(n+1)-A043087(n+1)`
-/

namespace A043085.P7691510607088388034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043086 (n + 1) - A043087 (n + 1)

end

end A043085.P7691510607088388034

/-! ## A043085.P7278087224299789771

`(A043086(n+1)+A043084(n+1))/2`
-/

namespace A043085.P7278087224299789771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043086 (n + 1) + A043084 (n + 1) : ℚ) / 2

end

end A043085.P7278087224299789771

/-! ## A043085.P2974600930132567810

`round(A043041(n+1)/10)*char[A004442(n)]`
-/

namespace A043085.P2974600930132567810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A043085.P2974600930132567810

/-! ## A043085.P3447185813925804046

`round(A043041(n+1)/10)*A008683(A006881(n+1))`
-/

namespace A043085.P3447185813925804046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10) * A008683 (A006881 (n + 1)).toNat

end

end A043085.P3447185813925804046

/-! ## A043085.P11220865627243807663

`A007814(2*n+1)+round(A043041(n+1)/10)`
-/

namespace A043085.P11220865627243807663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10)

end

end A043085.P11220865627243807663

/-! ## A043085.P6452231196257696534

`round(A043041(n+1)/10)%A005995(2*n+1)`
-/

namespace A043085.P6452231196257696534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10)) (A005995 (2 * n + 1))

end

end A043085.P6452231196257696534

/-! ## A043085.P13333296885755039017

`round(A043041(n+1)/10)^A014963(A100484(n+1))`
-/

namespace A043085.P13333296885755039017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10) : ℚ) ^ (A014963 (A100484 (n + 1)).toNat : ℤ)

end

end A043085.P13333296885755039017

/-! ## A043085.P5746597726970318564

`A000027(round(A043041(n+1)/10))`
-/

namespace A043085.P5746597726970318564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10)).toNat

end

end A043085.P5746597726970318564

/-! ## A043085.P12977268481651618796

`∑{d}[round(A043041(n+1)/10), A000010(#)]`
-/

namespace A043085.P12977268481651618796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A043085.P12977268481651618796

/-! ## A043085.P11090165980931478429

`A043083(n+1)+A005843(A043083(n+1)-A043082(n+1))`
-/

namespace A043085.P11090165980931478429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043083 (n + 1) + A005843 (A043083 (n + 1) - A043082 (n + 1)).toNat

end

end A043085.P11090165980931478429

/-! ## A043085.P9819530483608332254

`A056965(A002113(n+1))+round(A043041(n+1)/10)`
-/

namespace A043085.P9819530483608332254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A002113 (n + 1)).toNat + SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10)

end

end A043085.P9819530483608332254

/-! ## A043085.P14159546825989681263

`A005843(round(A043041(n+1)/10))/2`
-/

namespace A043085.P14159546825989681263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway ((A043041 (n + 1) : ℚ) / 10)).toNat : ℚ) / 2

end

end A043085.P14159546825989681263

/-! ## A043085.P3251719944745983607

`A005843(A043084(n+1))-A043083(n+1)`
-/

namespace A043085.P3251719944745983607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043084 (n + 1)).toNat - A043083 (n + 1)

end

end A043085.P3251719944745983607

/-! ## A043085.P3340080382589956540

`A043084(n+1)+A004525(A043084(n+1)-A043082(n+1))`
-/

namespace A043085.P3340080382589956540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043084 (n + 1) + A004525 (A043084 (n + 1) - A043082 (n + 1)).toNat

end

end A043085.P3340080382589956540

/-!
# A043086: a(n)=(s(n)+3)/10, where s(n)=n-th base 10 palindrome that starts with 7.

The programs for A043086, there is no canonical definition to state claims against.
-/

/-! ## A043086.P17941143608095696024

`ceil(A043042(n+1)/10)`
-/

namespace A043086.P17941143608095696024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043042 (n + 1) : ℚ) / 10⌉

end

end A043086.P17941143608095696024

/-! ## A043086.P15874110030510846740

`round(A043042(n+1)/10)%A001535(n)`
-/

namespace A043086.P15874110030510846740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A043042 (n + 1) : ℚ) / 10)) (A001535 n)

end

end A043086.P15874110030510846740

/-! ## A043086.P3325842252442252965

`2*A043083(n+1)-A043080(n+1)`
-/

namespace A043086.P3325842252442252965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043083 (n + 1) - A043080 (n + 1)

end

end A043086.P3325842252442252965

/-! ## A043086.P2979226848739237936

`2*A043084(n+1)-A043082(n+1)`
-/

namespace A043086.P2979226848739237936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043084 (n + 1) - A043082 (n + 1)

end

end A043086.P2979226848739237936

/-! ## A043086.P16531548005210383239

`2*A043085(n+1)-A043084(n+1)`
-/

namespace A043086.P16531548005210383239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043085 (n + 1) - A043084 (n + 1)

end

end A043086.P16531548005210383239

/-! ## A043086.P16022365901293430788

`(A043087(n+1)+A043085(n+1))/2`
-/

namespace A043086.P16022365901293430788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043087 (n + 1) + A043085 (n + 1) : ℚ) / 2

end

end A043086.P16022365901293430788

/-! ## A043086.P6843177181484240466

`(A043088(n+1)+A043084(n+1))/2`
-/

namespace A043086.P6843177181484240466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043088 (n + 1) + A043084 (n + 1) : ℚ) / 2

end

end A043086.P6843177181484240466

/-! ## A043086.P2042635608758412005

`round(A043042(n+1)/10)^cos(A000007(n))`
-/

namespace A043086.P2042635608758412005
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A043042 (n + 1) : ℚ) / 10) : ℝ) ^ (Real.cos (A000007 n : ℝ))

end

end A043086.P2042635608758412005

/-! ## A043086.P12195592771707948649

`A000038(n+1)+round(A043042(n+1)/10)`
-/

namespace A043086.P12195592771707948649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + SequenceMachineLib.roundAway ((A043042 (n + 1) : ℚ) / 10)

end

end A043086.P12195592771707948649

/-! ## A043086.P1370099736989357586

`A043083(n+1)+A043084(n+1)-A043081(n+1)`
-/

namespace A043086.P1370099736989357586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043083 (n + 1) + (A043084 (n + 1) - A043081 (n + 1))

end

end A043086.P1370099736989357586

/-! ## A043086.P16168004452503188612

`A000007(n+1)+round(A043042(n+1)/10)`
-/

namespace A043086.P16168004452503188612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A043042 (n + 1) : ℚ) / 10)

end

end A043086.P16168004452503188612

/-! ## A043086.P16879925974703979949

`floor(A001511(xor(n, n+1))+A043042(n+1)/10)`
-/

namespace A043086.P16879925974703979949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001511 (Nat.xor n (n + 1)) : ℚ) + (A043042 (n + 1) : ℚ) / 10⌋

end

end A043086.P16879925974703979949

/-! ## A043086.P990796066666551814

`round(A043042(n+1)/10)*A000034(2*(n+1))`
-/

namespace A043086.P990796066666551814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043042 (n + 1) : ℚ) / 10) * A000034 (2 * (n + 1))

end

end A043086.P990796066666551814

/-! ## A043086.P10693873327284541285

`A000027(round(A043042(n+1)/10))`
-/

namespace A043086.P10693873327284541285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A043042 (n + 1) : ℚ) / 10)).toNat

end

end A043086.P10693873327284541285

/-! ## A043086.P3733556806506682173

`A043084(n+1)+A005843(A043084(n+1)-A043083(n+1))`
-/

namespace A043086.P3733556806506682173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043084 (n + 1) + A005843 (A043084 (n + 1) - A043083 (n + 1)).toNat

end

end A043086.P3733556806506682173

/-! ## A043086.P16777395311833669946

`∏{d}[round(A043042(n+1)/10), A014963(#)]`
-/

namespace A043086.P16777395311833669946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043042 (n + 1) : ℚ) / 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A043086.P16777395311833669946

/-! ## A043086.P16037289099987416112

`A005843(A043084(n+1))-A043082(n+1)`
-/

namespace A043086.P16037289099987416112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043084 (n + 1)).toNat - A043082 (n + 1)

end

end A043086.P16037289099987416112

/-! ## A043086.P14707246560552629342

`A043084(n+1)+A004525(A043084(n+1)-A043080(n+1))`
-/

namespace A043086.P14707246560552629342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043084 (n + 1) + A004525 (A043084 (n + 1) - A043080 (n + 1)).toNat

end

end A043086.P14707246560552629342

/-! ## A043086.P1142586903504610570

`A043082(n+1)+A005843(A043082(n+1)-A043080(n+1))`
-/

namespace A043086.P1142586903504610570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043082 (n + 1) + A005843 (A043082 (n + 1) - A043080 (n + 1)).toNat

end

end A043086.P1142586903504610570

/-!
# A043087: (s(n)+2)/10, where s(n)=n-th base 10 palindrome that starts with 8.

The programs for A043087, there is no canonical definition to state claims against.
-/

/-! ## A043087.P5065460331371434761

`ceil(A043043(n+1)/10)`
-/

namespace A043087.P5065460331371434761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043043 (n + 1) : ℚ) / 10⌉

end

end A043087.P5065460331371434761

/-! ## A043087.P7114329716917364400

`2*A043084(n+1)-A043081(n+1)`
-/

namespace A043087.P7114329716917364400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043084 (n + 1) - A043081 (n + 1)

end

end A043087.P7114329716917364400

/-! ## A043087.P12904160422732588388

`2*A043085(n+1)-A043083(n+1)`
-/

namespace A043087.P12904160422732588388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043085 (n + 1) - A043083 (n + 1)

end

end A043087.P12904160422732588388

/-! ## A043087.P1301290365766130208

`2*A043086(n+1)-A043085(n+1)`
-/

namespace A043087.P1301290365766130208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043086 (n + 1) - A043085 (n + 1)

end

end A043087.P1301290365766130208

/-! ## A043087.P12704508038081761322

`A043083(n+1)+A043084(n+1)-A043080(n+1)`
-/

namespace A043087.P12704508038081761322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043083 (n + 1) + (A043084 (n + 1) - A043080 (n + 1))

end

end A043087.P12704508038081761322

/-! ## A043087.P6144838390959386026

`round(A043043(n+1)/5)/A000034(2*n+1)`
-/

namespace A043087.P6144838390959386026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A043043 (n + 1) : ℚ) / 5) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A043087.P6144838390959386026

/-! ## A043087.P7789307342901833157

`A014682(round(A043043(n+1)/5))`
-/

namespace A043087.P7789307342901833157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A043043 (n + 1) : ℚ) / 5)).toNat

end

end A043087.P7789307342901833157

/-! ## A043087.P8465971581370624167

`A005843(A043084(n+1))-A043081(n+1)`
-/

namespace A043087.P8465971581370624167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043084 (n + 1)).toNat - A043081 (n + 1)

end

end A043087.P8465971581370624167

/-! ## A043087.P943188945402531018

`A043085(n+1)+A004525(A043085(n+1)-A043081(n+1))`
-/

namespace A043087.P943188945402531018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043085 (n + 1) + A004525 (A043085 (n + 1) - A043081 (n + 1)).toNat

end

end A043087.P943188945402531018

/-!
# A043088: (s(n)+1)/10, where s(n)=n-th base 10 palindrome that starts with 9.

The programs for A043088, there is no canonical definition to state claims against.
-/

/-! ## A043088.P11254515654924923612

`ceil(A043044(n+1)/10)`
-/

namespace A043088.P11254515654924923612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043044 (n + 1) : ℚ) / 10⌉

end

end A043088.P11254515654924923612

/-! ## A043088.P535934178635134967

`2*A043084(n+1)-A043080(n+1)`
-/

namespace A043088.P535934178635134967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043084 (n + 1) - A043080 (n + 1)

end

end A043088.P535934178635134967

/-! ## A043088.P6246802275969782122

`2*A043085(n+1)-A043082(n+1)`
-/

namespace A043088.P6246802275969782122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043085 (n + 1) - A043082 (n + 1)

end

end A043088.P6246802275969782122

/-! ## A043088.P11247259379676139675

`2*A043086(n+1)-A043084(n+1)`
-/

namespace A043088.P11247259379676139675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043086 (n + 1) - A043084 (n + 1)

end

end A043088.P11247259379676139675

/-! ## A043088.P1939931932644045406

`2*A043087(n+1)-A043086(n+1)`
-/

namespace A043088.P1939931932644045406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043087 (n + 1) - A043086 (n + 1)

end

end A043088.P1939931932644045406

/-! ## A043088.P9247221827124664763

`A043082(n+1)+A043086(n+1)-A043080(n+1)`
-/

namespace A043088.P9247221827124664763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043082 (n + 1) + (A043086 (n + 1) - A043080 (n + 1))

end

end A043088.P9247221827124664763

/-! ## A043088.P10841626554214188671

`A043084(n+1)+A043086(n+1)-A043082(n+1)`
-/

namespace A043088.P10841626554214188671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043084 (n + 1) + (A043086 (n + 1) - A043082 (n + 1))

end

end A043088.P10841626554214188671

/-! ## A043088.P327362928744249415

`A043084(n+1)+A005843(A043084(n+1)-A043082(n+1))`
-/

namespace A043088.P327362928744249415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043084 (n + 1) + A005843 (A043084 (n + 1) - A043082 (n + 1)).toNat

end

end A043088.P327362928744249415

/-!
# A043089: Every string of 2 consecutive base-3 digits contains exactly 2 distinct numbers.

The programs for A043089, there is no canonical definition to state claims against.
-/

/-! ## A043089.P15832851671269804043

`A031941(A028310(n))%(n+1)²`
-/

namespace A043089.P15832851671269804043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031941 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A043089.P15832851671269804043

/-! ## A043089.P5757851945675205506

`A031941(A000038(n)+n)%∑[n+1]`
-/

namespace A043089.P5757851945675205506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031941 (A000038 n + (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A043089.P5757851945675205506

/-! ## A043089.P7961255386070083047

`A031941(A028310(n))-A000007(n)`
-/

namespace A043089.P7961255386070083047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (A028310 n).toNat - A000007 n

end

end A043089.P7961255386070083047

/-! ## A043089.P9800335518425501083

`A031941(A000007(n)+n)-A000007(n)`
-/

namespace A043089.P9800335518425501083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A043089.P9800335518425501083

/-! ## A043089.P9364275310304976001

`A031941(A000038(n)+n)-A000038(n)`
-/

namespace A043089.P9364275310304976001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (A000038 n + (n : ℤ)).toNat - A000038 n

end

end A043089.P9364275310304976001

/-! ## A043089.P12248068036786174659

`record[A000035(n)*A031941(A008619(n))]`
-/

namespace A043089.P12248068036786174659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A031941 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043089.P12248068036786174659

/-! ## A043089.P2480221464924035611

`record[A031941(A008620(n))*A043545(n)]`
-/

namespace A043089.P2480221464924035611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (A008620 n).toNat * A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043089.P2480221464924035611

/-! ## A043089.P16239108411730654250

`eq[1, A043277(A028310(n))]`
-/

namespace A043089.P16239108411730654250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043089.P16239108411730654250

/-! ## A043089.P12872048403117174963

`eq[A043555(n), A081604(n)]`
-/

namespace A043089.P12872048403117174963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043089.P12872048403117174963

/-! ## A043089.P7003507835417021901

`eq[A043555(n)*A080342(n+1), A080342(n+1)²]`
-/

namespace A043089.P7003507835417021901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n * A080342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043089.P7003507835417021901

/-! ## A043089.P4302072376268972716

`eq[1, A043277(A065033(2*n))]`
-/

namespace A043089.P4302072376268972716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043089.P4302072376268972716

/-! ## A043089.P8925660385303026870

`eq[1, A043277(A123108(2*n))]`
-/

namespace A043089.P8925660385303026870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043089.P8925660385303026870

/-! ## A043089.P18082555603410777084

`A008620(A031941(2*n+1))-1`
-/

namespace A043089.P18082555603410777084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A031941 (2 * n + 1)).toNat - 1

end

end A043089.P18082555603410777084

/-! ## A043089.P15888681512261001219

`eq[1, A043277(A233583(n+1))]`
-/

namespace A043089.P15888681512261001219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043089.P15888681512261001219

/-!
# A043090: Every string of 2 consecutive base 4 digits contains exactly 2 distinct numbers.

The programs for A043090, there is no canonical definition to state claims against.
-/

/-! ## A043090.P1030755020649062041

`A031942(A028310(n))%(n+1)²`
-/

namespace A043090.P1030755020649062041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031942 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A043090.P1030755020649062041

/-! ## A043090.P13107455051173225302

`A031942(A028310(n))-A000007(n)`
-/

namespace A043090.P13107455051173225302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031942 (A028310 n).toNat - A000007 n

end

end A043090.P13107455051173225302

/-! ## A043090.P9839053269391648243

`A031942(A028310(n))*A057427(n)`
-/

namespace A043090.P9839053269391648243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031942 (A028310 n).toNat * A057427 n

end

end A043090.P9839053269391648243

/-! ## A043090.P18020084921600392697

`A031942(A000007(n)+n)-A000007(n)`
-/

namespace A043090.P18020084921600392697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031942 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A043090.P18020084921600392697

/-! ## A043090.P10305184098644612707

`and(1, A000040(n+1))*A031942(A028310(n))`
-/

namespace A043090.P10305184098644612707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A031942 (A028310 n).toNat

end

end A043090.P10305184098644612707

/-! ## A043090.P12956509521633557493

`eq[1, A043278(A028310(n))]`
-/

namespace A043090.P12956509521633557493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043090.P12956509521633557493

/-! ## A043090.P16767996003614344066

`eq[A043556(n), A110591(n)]`
-/

namespace A043090.P16767996003614344066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043090.P16767996003614344066

/-! ## A043090.P8464639731550710302

`eq[0, A160380(A064706(n))]`
-/

namespace A043090.P8464639731550710302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A064706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043090.P8464639731550710302

/-! ## A043090.P8906579073678699012

`eq[1, A043278(A065033(2*n))]`
-/

namespace A043090.P8906579073678699012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043090.P8906579073678699012

/-! ## A043090.P7297847318431427239

`eq[1, A043278(A123108(2*n))]`
-/

namespace A043090.P7297847318431427239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043090.P7297847318431427239

/-! ## A043090.P11432231866792726922

`eq[A037819(2*n+1), A037827(2*(n+1))]/2`
-/

namespace A043090.P11432231866792726922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A043090.P11432231866792726922

/-! ## A043090.P1067033139037093098

`eq[1, A043278(A233583(n+1))]`
-/

namespace A043090.P1067033139037093098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043090.P1067033139037093098

/-! ## A043090.P495608147858176276

`eq[1, A196368(A007090(n))]`
-/

namespace A043090.P495608147858176276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A007090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043090.P495608147858176276

/-! ## A043090.P6534546987950804926

`eq[1, A196368(A007284(n))]`
-/

namespace A043090.P6534546987950804926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A007284 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043090.P6534546987950804926

/-! ## A043090.P11196828996503750112

`eq[1, A196368(A046030(n+1))]`
-/

namespace A043090.P11196828996503750112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A046030 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043090.P11196828996503750112

/-! ## A043090.P6907438779488417283

`eq[A001743(n+1), A321802(A001743(n+1))]`
-/

namespace A043090.P6907438779488417283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A001743 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043090.P6907438779488417283

/-!
# A043091: Every string of 2 consecutive base 5 digits contains exactly 2 distinct numbers.

The programs for A043091, there is no canonical definition to state claims against.
-/

/-! ## A043091.P12947532205106860705

`A031943(A028310(n))%(n+1)²`
-/

namespace A043091.P12947532205106860705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031943 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A043091.P12947532205106860705

/-! ## A043091.P1266160198406350921

`A031943(A028310(n))-A000007(n)`
-/

namespace A043091.P1266160198406350921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031943 (A028310 n).toNat - A000007 n

end

end A043091.P1266160198406350921

/-! ## A043091.P11405220823112098393

`A031943(A000007(n)+n)-A000007(n)`
-/

namespace A043091.P11405220823112098393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031943 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A043091.P11405220823112098393

/-! ## A043091.P1046919609361798424

`comp[A297133(n+5)]%A078721(2*n+1)`
-/

namespace A043091.P1046919609361798424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297133 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A078721 (2 * n + 1))

end

end A043091.P1046919609361798424

/-! ## A043091.P14012350160692058516

`eq[1, A043279((n-1)%(n+1)+1)]`
-/

namespace A043091.P14012350160692058516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043091.P14012350160692058516

/-! ## A043091.P3231195140882505641

`eq[1, A043279(A028310(n))]`
-/

namespace A043091.P3231195140882505641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043091.P3231195140882505641

/-! ## A043091.P3953294532694400966

`eq[A043557(n), A110592(n)]`
-/

namespace A043091.P3953294532694400966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043091.P3953294532694400966

/-! ## A043091.P3748463385734528053

`eq[1, A043279(A000007(n)+n)]`
-/

namespace A043091.P3748463385734528053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043091.P3748463385734528053

/-! ## A043091.P3623355250825398145

`eq[1, A043279(A065033(2*n))]`
-/

namespace A043091.P3623355250825398145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043091.P3623355250825398145

/-! ## A043091.P1785313536133233824

`eq[1, A043279(A123108(2*n))]`
-/

namespace A043091.P1785313536133233824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043091.P1785313536133233824

/-! ## A043091.P630458614470978376

`record[A008611(n+1)/A043279(A008620(n+1))]`
-/

namespace A043091.P630458614470978376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (n + 1) : ℚ) / (A043279 (A008620 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043091.P630458614470978376

/-! ## A043091.P477873495460833643

`eq[1, A043279(A233583(n+1))]`
-/

namespace A043091.P477873495460833643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043091.P477873495460833643

/-! ## A043091.P4786458291593748859

`eq[1, A196368(A007091(n))]`
-/

namespace A043091.P4786458291593748859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043091.P4786458291593748859

/-! ## A043091.P10949639850019924900

`lt[n, A321802(A014263(n+1))+1]`
-/

namespace A043091.P10949639850019924900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A014263 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043091.P10949639850019924900

/-!
# A043092: Numbers in which every string of 2 consecutive base 6 digits contains exactly 2 distinct numbers.

The programs for A043092, the canonical program `A043092.P216657703328045798` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043092 has offset 1).

The definition of A043092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043092.P216657703328045798

`eq[1, A043280((n-1)%(n+1)+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A043092

/-- `eq[1, A043280((n-1)%(n+1)+1)]` -/
def P216657703328045798.Spec : Prop :=
  ∀ n, (P216657703328045798.a n : ℤ) = A043092 (n + 1)

theorem P216657703328045798.correct : P216657703328045798.Spec := by
  intro n
  simp only [A043092, Nat.add_sub_cancel]

end A043092

/-! ## A043092.P3130999206205213175

`eq[1, A043280(A028310(n))]`
-/

namespace A043092.P3130999206205213175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043092.P3130999206205213175

namespace A043092

/-- `eq[1, A043280(A028310(n))]` -/
def P3130999206205213175.Spec : Prop :=
  ∀ n, (P3130999206205213175.a n : ℤ) = A043092 (n + 1)

end A043092

/-! ## A043092.P11397553085002349887

`eq[A043558(n), A390764(n)]`
-/

namespace A043092.P11397553085002349887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043092.P11397553085002349887

namespace A043092

/-- `eq[A043558(n), A390764(n)]` -/
def P11397553085002349887.Spec : Prop :=
  ∀ n, (P11397553085002349887.a n : ℤ) = A043092 (n + 1)

end A043092

/-! ## A043092.P6937557668953407430

`eq[1, A043280(A004273(n)+1-n)]`
-/

namespace A043092.P6937557668953407430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A004273 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043092.P6937557668953407430

namespace A043092

/-- `eq[1, A043280(A004273(n)+1-n)]` -/
def P6937557668953407430.Spec : Prop :=
  ∀ n, (P6937557668953407430.a n : ℤ) = A043092 (n + 1)

end A043092

/-! ## A043092.P2689479683966947922

`eq[1, A043280(1-(n-A004273(n)))]`
-/

namespace A043092.P2689479683966947922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (1 - ((n : ℤ) - A004273 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043092.P2689479683966947922

namespace A043092

/-- `eq[1, A043280(1-(n-A004273(n)))]` -/
def P2689479683966947922.Spec : Prop :=
  ∀ n, (P2689479683966947922.a n : ℤ) = A043092 (n + 1)

end A043092

/-! ## A043092.P4533435837968600445

`eq[1, A043280(A123108(2*n))]`
-/

namespace A043092.P4533435837968600445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043092.P4533435837968600445

namespace A043092

/-- `eq[1, A043280(A123108(2*n))]` -/
def P4533435837968600445.Spec : Prop :=
  ∀ n, (P4533435837968600445.a n : ℤ) = A043092 (n + 1)

end A043092

/-! ## A043092.P90837705203532292

`eq[1, A196368(A007092(n))]`
-/

namespace A043092.P90837705203532292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043092.P90837705203532292

namespace A043092

/-- `eq[1, A196368(A007092(n))]` -/
def P90837705203532292.Spec : Prop :=
  ∀ n, (P90837705203532292.a n : ℤ) = A043092 (n + 1)

end A043092

/-! ## A043092.P11783075627975749511

`eq[1, A196368(A202267(n+1))]`
-/

namespace A043092.P11783075627975749511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043092.P11783075627975749511

namespace A043092

/-- `eq[1, A196368(A202267(n+1))]` -/
def P11783075627975749511.Spec : Prop :=
  ∀ n, (P11783075627975749511.a n : ℤ) = A043092 (n + 1)

end A043092

/-! ## A043092.P2809477710530708589

`eq[A043558(n), A055642(A007092(n))]`
-/

namespace A043092.P2809477710530708589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043092.P2809477710530708589

namespace A043092

/-- `eq[A043558(n), A055642(A007092(n))]` -/
def P2809477710530708589.Spec : Prop :=
  ∀ n, (P2809477710530708589.a n : ℤ) = A043092 (n + 1)

end A043092

/-! ## A043092.P4493644659913689866

`eq[1, A043280(A233583(n+1))]`
-/

namespace A043092.P4493644659913689866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043092.P4493644659913689866

namespace A043092

/-- `eq[1, A043280(A233583(n+1))]` -/
def P4493644659913689866.Spec : Prop :=
  ∀ n, (P4493644659913689866.a n : ℤ) = A043092 (n + 1)

end A043092

/-!
# A043093: Every string of 2 consecutive base 7 digits contains exactly 2 distinct numbers.

The programs for A043093, the canonical program `A043093.P7626507007390763176` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043093 has offset 0).

The definition of A043093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5695 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043093.P7626507007390763176

`eq[1, A043281(A028310(n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043093

/-- `eq[1, A043281(A028310(n))]` -/
def P7626507007390763176.Spec : Prop :=
  ∀ n, (P7626507007390763176.a n : ℤ) = A043093 n

theorem P7626507007390763176.correct : P7626507007390763176.Spec := by
  intro n
  simp only [A043093]

end A043093

/-! ## A043093.P7047281831097466056

`eq[A043559(n), A390765(n)]`
-/

namespace A043093.P7047281831097466056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043093.P7047281831097466056

namespace A043093

/-- `eq[A043559(n), A390765(n)]` -/
def P7047281831097466056.Spec : Prop :=
  ∀ n, (P7047281831097466056.a n : ℤ) = A043093 n

end A043093

/-! ## A043093.P5489724042150864246

`eq[1, A043281(gcd(n, A008574(n)))]`
-/

namespace A043093.P5489724042150864246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043093.P5489724042150864246

namespace A043093

/-- `eq[1, A043281(gcd(n, A008574(n)))]` -/
def P5489724042150864246.Spec : Prop :=
  ∀ n, (P5489724042150864246.a n : ℤ) = A043093 n

end A043093

/-! ## A043093.P3962505810215200879

`eq[1, A043281(A008619(A004275(n)))]`
-/

namespace A043093.P3962505810215200879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043093.P3962505810215200879

namespace A043093

/-- `eq[1, A043281(A008619(A004275(n)))]` -/
def P3962505810215200879.Spec : Prop :=
  ∀ n, (P3962505810215200879.a n : ℤ) = A043093 n

end A043093

/-! ## A043093.P10460654693612749434

`eq[1, A043281(A065033(2*n))]`
-/

namespace A043093.P10460654693612749434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043093.P10460654693612749434

namespace A043093

/-- `eq[1, A043281(A065033(2*n))]` -/
def P10460654693612749434.Spec : Prop :=
  ∀ n, (P10460654693612749434.a n : ℤ) = A043093 n

end A043093

/-! ## A043093.P17639169494002644169

`eq[1, A043281(A123108(2*n))]`
-/

namespace A043093.P17639169494002644169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043093.P17639169494002644169

namespace A043093

/-- `eq[1, A043281(A123108(2*n))]` -/
def P17639169494002644169.Spec : Prop :=
  ∀ n, (P17639169494002644169.a n : ℤ) = A043093 n

end A043093

/-! ## A043093.P12036917280632027884

`eq[1, A196368(A007093(n))]`
-/

namespace A043093.P12036917280632027884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043093.P12036917280632027884

namespace A043093

/-- `eq[1, A196368(A007093(n))]` -/
def P12036917280632027884.Spec : Prop :=
  ∀ n, (P12036917280632027884.a n : ℤ) = A043093 n

end A043093

/-! ## A043093.P16696773205431212073

`eq[A043559(n), A055642(A007093(n))]`
-/

namespace A043093.P16696773205431212073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043093.P16696773205431212073

namespace A043093

/-- `eq[A043559(n), A055642(A007093(n))]` -/
def P16696773205431212073.Spec : Prop :=
  ∀ n, (P16696773205431212073.a n : ℤ) = A043093 n

end A043093

/-! ## A043093.P8687880972456504134

`eq[1, A043281(A233583(n+1))]`
-/

namespace A043093.P8687880972456504134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043093.P8687880972456504134

namespace A043093

/-- `eq[1, A043281(A233583(n+1))]` -/
def P8687880972456504134.Spec : Prop :=
  ∀ n, (P8687880972456504134.a n : ℤ) = A043093 n

end A043093

/-!
# A043094: Every string of 2 consecutive base 8 digits contains exactly 2 distinct numbers.

The programs for A043094, the canonical program `A043094.P264421878189047004` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043094 has offset 0).

The definition of A043094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043094.P264421878189047004

`eq[1, A043282(A028310(n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043094

/-- `eq[1, A043282(A028310(n))]` -/
def P264421878189047004.Spec : Prop :=
  ∀ n, (P264421878189047004.a n : ℤ) = A043094 n

theorem P264421878189047004.correct : P264421878189047004.Spec := by
  intro n
  simp only [A043094]

end A043094

/-! ## A043094.P995592394085003587

`eq[1, A043282(A065033(2*n))]`
-/

namespace A043094.P995592394085003587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043094.P995592394085003587

namespace A043094

/-- `eq[1, A043282(A065033(2*n))]` -/
def P995592394085003587.Spec : Prop :=
  ∀ n, (P995592394085003587.a n : ℤ) = A043094 n

end A043094

/-! ## A043094.P6380880099755269167

`eq[1, A043282(A123108(2*n))]`
-/

namespace A043094.P6380880099755269167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043094.P6380880099755269167

namespace A043094

/-- `eq[1, A043282(A123108(2*n))]` -/
def P6380880099755269167.Spec : Prop :=
  ∀ n, (P6380880099755269167.a n : ℤ) = A043094 n

end A043094

/-! ## A043094.P6446447247319122141

`eq[1, A196368(A007094(n))]`
-/

namespace A043094.P6446447247319122141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043094.P6446447247319122141

namespace A043094

/-- `eq[1, A196368(A007094(n))]` -/
def P6446447247319122141.Spec : Prop :=
  ∀ n, (P6446447247319122141.a n : ℤ) = A043094 n

end A043094

/-! ## A043094.P12192145219584169972

`eq[1, A043282(A233583(n+1))]`
-/

namespace A043094.P12192145219584169972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043094.P12192145219584169972

namespace A043094

/-- `eq[1, A043282(A233583(n+1))]` -/
def P12192145219584169972.Spec : Prop :=
  ∀ n, (P12192145219584169972.a n : ℤ) = A043094 n

end A043094

/-! ## A043094.P928058395394268904

`eq[1, A043282(A137735(n²))]`
-/

namespace A043094.P928058395394268904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043094.P928058395394268904

namespace A043094

/-- `eq[1, A043282(A137735(n²))]` -/
def P928058395394268904.Spec : Prop :=
  ∀ n, (P928058395394268904.a n : ℤ) = A043094 n

end A043094

/-! ## A043094.P17110779089721462335

`eq[1, A058281(A092352(n))]`
-/

namespace A043094.P17110779089721462335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A092352 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043094.P17110779089721462335

namespace A043094

/-- `eq[1, A058281(A092352(n))]` -/
def P17110779089721462335.Spec : Prop :=
  ∀ n, (P17110779089721462335.a n : ℤ) = A043094 n

end A043094

/-! ## A043094.P13054723095471283230

`A303776(A303775(comp[9*(n+1)]))`
-/

namespace A043094.P13054723095471283230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303776 (A303775 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A043094.P13054723095471283230

namespace A043094

/-- `A303776(A303775(comp[9*(n+1)]))` -/
def P13054723095471283230.Spec : Prop :=
  ∀ n, P13054723095471283230.a n = A043094 n

end A043094

/-!
# A043095: Numbers with property that no two consecutive base 9 digits are equal.

The programs for A043095, the canonical program `A043095.P4901901167020790074` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043095 has offset 1).

The definition of A043095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043095.P4901901167020790074

`eq[3, A043283(A028310(n))+2]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043095

/-- `eq[3, A043283(A028310(n))+2]` -/
def P4901901167020790074.Spec : Prop :=
  ∀ n, (P4901901167020790074.a n : ℤ) = A043095 (n + 1)

theorem P4901901167020790074.correct : P4901901167020790074.Spec := by
  intro n
  simp only [A043095, Nat.add_sub_cancel]

end A043095

/-! ## A043095.P6979779805503052626

`eq[1, A196368(A007095(n))]`
-/

namespace A043095.P6979779805503052626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043095.P6979779805503052626

namespace A043095

/-- `eq[1, A196368(A007095(n))]` -/
def P6979779805503052626.Spec : Prop :=
  ∀ n, (P6979779805503052626.a n : ℤ) = A043095 (n + 1)

end A043095

/-! ## A043095.P3335218921204641106

`eq[1, A196368(A052383(n+1))]`
-/

namespace A043095.P3335218921204641106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043095.P3335218921204641106

namespace A043095

/-- `eq[1, A196368(A052383(n+1))]` -/
def P3335218921204641106.Spec : Prop :=
  ∀ n, (P3335218921204641106.a n : ℤ) = A043095 (n + 1)

end A043095

/-! ## A043095.P7017772790024489251

`eq[1, A196368(A052421(n+1))]`
-/

namespace A043095.P7017772790024489251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043095.P7017772790024489251

namespace A043095

/-- `eq[1, A196368(A052421(n+1))]` -/
def P7017772790024489251.Spec : Prop :=
  ∀ n, (P7017772790024489251.a n : ℤ) = A043095 (n + 1)

end A043095

/-! ## A043095.P17370824211819248446

`eq[A052404(n+1), A321802(A052404(n+1))]`
-/

namespace A043095.P17370824211819248446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A052404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043095.P17370824211819248446

namespace A043095

/-- `eq[A052404(n+1), A321802(A052404(n+1))]` -/
def P17370824211819248446.Spec : Prop :=
  ∀ n, (P17370824211819248446.a n : ℤ) = A043095 (n + 1)

end A043095

/-! ## A043095.P15101446287591085369

`eq[1, A043283(A233583(n+1))]`
-/

namespace A043095.P15101446287591085369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043095.P15101446287591085369

namespace A043095

/-- `eq[1, A043283(A233583(n+1))]` -/
def P15101446287591085369.Spec : Prop :=
  ∀ n, (P15101446287591085369.a n : ℤ) = A043095 (n + 1)

end A043095

/-! ## A043095.P11437656307488972827

`record[A349315(n)-A108622(n+8)]`
-/

namespace A043095.P11437656307488972827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349315 n - A108622 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043095.P11437656307488972827

namespace A043095

/-- `record[A349315(n)-A108622(n+8)]` -/
def P11437656307488972827.Spec : Prop :=
  ∀ n, P11437656307488972827.a n = A043095 (n + 1)

end A043095

/-!
# A043096: Numbers in which every pair of adjacent digits are distinct.

The programs for A043096, the canonical program `A043096.P2690072861609993889` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043096 has offset 1).

The definition of A043096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043096.P17165444436270240414

`comp[A171901(n+1)]`
-/

namespace A043096.P17165444436270240414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A043096.P17165444436270240414

namespace A043096

/-- `comp[A171901(n+1)]` -/
def P17165444436270240414.Spec : Prop :=
  ∀ n, (P17165444436270240414.a n : ℤ) = A043096 (n + 1)

end A043096

/-! ## A043096.P2989239808806319684

`record[A321801(n)]`
-/

namespace A043096.P2989239808806319684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043096.P2989239808806319684

namespace A043096

/-- `record[A321801(n)]` -/
def P2989239808806319684.Spec : Prop :=
  ∀ n, P2989239808806319684.a n = A043096 (n + 1)

end A043096

/-! ## A043096.P5780874118973478322

`record[A321802(n)]`
-/

namespace A043096.P5780874118973478322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043096.P5780874118973478322

namespace A043096

/-- `record[A321802(n)]` -/
def P5780874118973478322.Spec : Prop :=
  ∀ n, P5780874118973478322.a n = A043096 (n + 1)

end A043096

/-! ## A043096.P12378491219795362529

`record[A337864(n)]`
-/

namespace A043096.P12378491219795362529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043096.P12378491219795362529

namespace A043096

/-- `record[A337864(n)]` -/
def P12378491219795362529.Spec : Prop :=
  ∀ n, P12378491219795362529.a n = A043096 (n + 1)

end A043096

/-! ## A043096.P2690072861609993889

`record[A351868(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043096

/-- `record[A351868(n)]` -/
def P2690072861609993889.Spec : Prop :=
  ∀ n, P2690072861609993889.a n = A043096 (n + 1)

theorem P2690072861609993889.correct : P2690072861609993889.Spec := by
  intro n
  simp only [A043096, Nat.add_sub_cancel]

end A043096

/-! ## A043096.P14289553103969253226

`eq[1, A196368(n)]`
-/

namespace A043096.P14289553103969253226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043096.P14289553103969253226

namespace A043096

/-- `eq[1, A196368(n)]` -/
def P14289553103969253226.Spec : Prop :=
  ∀ n, (P14289553103969253226.a n : ℤ) = A043096 (n + 1)

end A043096

/-! ## A043096.P1152254042484875353

`eq[A043562(n), A055642(n)]`
-/

namespace A043096.P1152254042484875353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043096.P1152254042484875353

namespace A043096

/-- `eq[A043562(n), A055642(n)]` -/
def P1152254042484875353.Spec : Prop :=
  ∀ n, (P1152254042484875353.a n : ℤ) = A043096 (n + 1)

end A043096

/-! ## A043096.P2168149154175951295

`A321801(eq[n, A321801(n)])`
-/

namespace A043096.P2168149154175951295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043096.P2168149154175951295

namespace A043096

/-- `A321801(eq[n, A321801(n)])` -/
def P2168149154175951295.Spec : Prop :=
  ∀ n, P2168149154175951295.a n = A043096 (n + 1)

end A043096

/-! ## A043096.P13841887236904095464

`A321802(eq[n, A321802(n)])`
-/

namespace A043096.P13841887236904095464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043096.P13841887236904095464

namespace A043096

/-- `A321802(eq[n, A321802(n)])` -/
def P13841887236904095464.Spec : Prop :=
  ∀ n, P13841887236904095464.a n = A043096 (n + 1)

end A043096

/-! ## A043096.P13689807892501065656

`filter[A241157(n+1), A196368(#)]`
-/

namespace A043096.P13689807892501065656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A043096.P13689807892501065656

namespace A043096

/-- `filter[A241157(n+1), A196368(#)]` -/
def P13689807892501065656.Spec : Prop :=
  ∀ n, P13689807892501065656.a n = A043096 (n + 1)

end A043096

/-! ## A043096.P3109597940539715722

`filter[A241158(n+1), A196368(#)]`
-/

namespace A043096.P3109597940539715722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A043096.P3109597940539715722

namespace A043096

/-- `filter[A241158(n+1), A196368(#)]` -/
def P3109597940539715722.Spec : Prop :=
  ∀ n, P3109597940539715722.a n = A043096 (n + 1)

end A043096

/-! ## A043096.P1025483195135608831

`lt[n, A000040(A321801(n)+1)]`
-/

namespace A043096.P1025483195135608831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A321801 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043096.P1025483195135608831

namespace A043096

/-- `lt[n, A000040(A321801(n)+1)]` -/
def P1025483195135608831.Spec : Prop :=
  ∀ n, (P1025483195135608831.a n : ℤ) = A043096 (n + 1)

end A043096

/-! ## A043096.P8574920514416490654

`lt[n, A000203(A321801(n)+1)]`
-/

namespace A043096.P8574920514416490654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A321801 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043096.P8574920514416490654

namespace A043096

/-- `lt[n, A000203(A321801(n)+1)]` -/
def P8574920514416490654.Spec : Prop :=
  ∀ n, (P8574920514416490654.a n : ℤ) = A043096 (n + 1)

end A043096

/-! ## A043096.P15406143875941773555

`lt[A000720(n+1), A321802(n)+1]`
-/

namespace A043096.P15406143875941773555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043096.P15406143875941773555

namespace A043096

/-- `lt[A000720(n+1), A321802(n)+1]` -/
def P15406143875941773555.Spec : Prop :=
  ∀ n, (P15406143875941773555.a n : ℤ) = A043096 (n + 1)

end A043096

/-! ## A043096.P9328982526629464456

`lt[A000007(n)+n, A321802(n)+2]`
-/

namespace A043096.P9328982526629464456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043096.P9328982526629464456

namespace A043096

/-- `lt[A000007(n)+n, A321802(n)+2]` -/
def P9328982526629464456.Spec : Prop :=
  ∀ n, (P9328982526629464456.a n : ℤ) = A043096 (n + 1)

end A043096

/-! ## A043096.P16069724623922389509

`lt[n-A321802(n), A214861(n+1)]`
-/

namespace A043096.P16069724623922389509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A321802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214861 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043096.P16069724623922389509

namespace A043096

/-- `lt[n-A321802(n), A214861(n+1)]` -/
def P16069724623922389509.Spec : Prop :=
  ∀ n, (P16069724623922389509.a n : ℤ) = A043096 (n + 1)

end A043096

/-! ## A043096.P12098067094971357016

`record[A057163(A057163(n*A196368(n)))]`
-/

namespace A043096.P12098067094971357016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057163 ((n : ℤ) * A196368 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043096.P12098067094971357016

namespace A043096

/-- `record[A057163(A057163(n*A196368(n)))]` -/
def P12098067094971357016.Spec : Prop :=
  ∀ n, P12098067094971357016.a n = A043096 (n + 1)

end A043096

/-! ## A043096.P2077199107173038271

`lt[A321804(n), 0]`
-/

namespace A043096.P2077199107173038271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A043096.P2077199107173038271

namespace A043096

/-- `lt[A321804(n), 0]` -/
def P2077199107173038271.Spec : Prop :=
  ∀ n, (P2077199107173038271.a n : ℤ) = A043096 (n + 1)

end A043096

/-!
# A043098: Numbers k such that 0 and 2 occur juxtaposed in the base-3 representation of k but not of k-1.

The programs for A043098, there is no canonical definition to state claims against.
-/

/-! ## A043098.P424359650754753511

`A007494(3*n+4)-A000122(A120914(2*(n+2)))`
-/

namespace A043098.P424359650754753511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (3 * n + 4) - A000122 (A120914 (2 * (n + 2))).toNat

end

end A043098.P424359650754753511

/-! ## A043098.P8201611643742629122

`∑[A076453(∑[A322785(n+2)+4]+2)+4]+2`
-/

namespace A043098.P8201611643742629122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322785 (n + 2) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076453 (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A043098.P8201611643742629122

/-! ## A043098.P14233047585130010716

`A317044(3*(n+1))+A113311(A002064(n))`
-/

namespace A043098.P14233047585130010716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317044 (3 * (n + 1)) + A113311 (A002064 n).toNat

end

end A043098.P14233047585130010716

/-! ## A043098.P4114512017954068736

`A056991(2*n+3)-A010892(A018029(n))`
-/

namespace A043098.P4114512017954068736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (2 * n + 3) - A010892 (A018029 n).toNat

end

end A043098.P4114512017954068736

/-! ## A043098.P8211262815700451842

`A074803(A139148(n+1))+A001651(3*n+2)`
-/

namespace A043098.P8211262815700451842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074803 (A139148 (n + 1)).toNat + A001651 (3 * n + 2)

end

end A043098.P8211262815700451842

