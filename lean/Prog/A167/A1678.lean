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
import Seq.B000.C026
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
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
# A167800: Numbers with primitive root -4.

The programs for A167800, there is no canonical definition to state claims against.
-/

/-! ## A167800.P11121177570515346639

`A005408(lt[n, 2*A003569(n)])`
-/

namespace A167800.P11121177570515346639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167800.P11121177570515346639

/-! ## A167800.P11401048671904115449

`A144396(lt[n, 2*A003569(n)])`
-/

namespace A167800.P11401048671904115449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167800.P11401048671904115449

/-! ## A167800.P14251632118251690256

`A005408(lt[n/2, A003569(n)])`
-/

namespace A167800.P14251632118251690256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A167800.P14251632118251690256

/-! ## A167800.P18135523827383497353

`A144396(lt[n/2, A003569(n)])`
-/

namespace A167800.P18135523827383497353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A167800.P18135523827383497353

/-! ## A167800.P12066783307221567786

`A005408(eq[A003569(n), A072451(n+1)])`
-/

namespace A167800.P12066783307221567786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167800.P12066783307221567786

/-! ## A167800.P1631101581869599322

`A144396(eq[A003569(n), A072451(n+1)])`
-/

namespace A167800.P1631101581869599322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167800.P1631101581869599322

/-! ## A167800.P3881491061371975877

`A160144(eq[A003569(n), A072451(n+1)])`
-/

namespace A167800.P3881491061371975877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160144 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167800.P3881491061371975877

/-! ## A167800.P9450570270185119528

`A005408(lt[A004526(n)², A003569(n)²])`
-/

namespace A167800.P9450570270185119528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167800.P9450570270185119528

/-! ## A167800.P3961775346359664917

`A144396(lt[A004526(n)², A003569(n)²])`
-/

namespace A167800.P3961775346359664917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167800.P3961775346359664917

/-!
# A167802: Numbers with primitive root -6.

The programs for A167802, there is no canonical definition to state claims against.
-/

/-! ## A167802.P16597989677492653540

`A105878(A187829(n+1))`
-/

namespace A167802.P16597989677492653540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105878 (A187829 (n + 1)).toNat

end

end A167802.P16597989677492653540

/-! ## A167802.P14719731468269993790

`A316941(A105878(n+1))`
-/

namespace A167802.P14719731468269993790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316941 (A105878 (n + 1)).toNat

end

end A167802.P14719731468269993790

/-! ## A167802.P17299368842445623299

`∩[A088450(n+1), A105878(n+1)]`
-/

namespace A167802.P17299368842445623299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167802.P17299368842445623299

/-! ## A167802.P14527392081284122762

`∩[A092858(n+1), A105878(n+1)]`
-/

namespace A167802.P14527392081284122762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167802.P14527392081284122762

/-! ## A167802.P8119681057861790297

`∩[A096530(n+1), A105878(n+1)]`
-/

namespace A167802.P8119681057861790297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167802.P8119681057861790297

/-!
# A167804: Numbers with primitive root -8.

The programs for A167804, there is no canonical definition to state claims against.
-/

/-! ## A167804.P5868170367510707687

`∩[A066501(n+1), A167798(n+1)]`
-/

namespace A167804.P5868170367510707687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P5868170367510707687

/-! ## A167804.P2823194892477259814

`∩[A167798(n+1), A259548(n+1)]`
-/

namespace A167804.P2823194892477259814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P2823194892477259814

/-! ## A167804.P6923274282283240076

`∩[A167798(n+1), A243805(n+1)]`
-/

namespace A167804.P6923274282283240076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P6923274282283240076

/-! ## A167804.P12292145228938211765

`∩[A167798(n+1), A262931(n+1)]`
-/

namespace A167804.P12292145228938211765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P12292145228938211765

/-! ## A167804.P9982903056119080915

`∩[A004612(n+1), A167798(n+1)]`
-/

namespace A167804.P9982903056119080915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P9982903056119080915

/-! ## A167804.P3855470174191789410

`∩[A057760(n+1), A167798(n+1)]`
-/

namespace A167804.P3855470174191789410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P3855470174191789410

/-! ## A167804.P204968447056751329

`∩[A088232(n+1), A167798(n+1)]`
-/

namespace A167804.P204968447056751329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P204968447056751329

/-! ## A167804.P10920735798886770883

`∩[A167798(n+1), A230780(n+1)]`
-/

namespace A167804.P10920735798886770883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P10920735798886770883

/-! ## A167804.P15967197402105387464

`∩[A167798(n+1), A274436(n+1)]`
-/

namespace A167804.P15967197402105387464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P15967197402105387464

/-! ## A167804.P584056139922705406

`∩[A167798(n+1), A226946(n+1)]`
-/

namespace A167804.P584056139922705406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P584056139922705406

/-! ## A167804.P12044704349138451171

`∩[A166104(n+1), A167798(n+1)]`
-/

namespace A167804.P12044704349138451171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167804.P12044704349138451171

/-!
# A167805: Numbers with primitive root -9.

The programs for A167805, there is no canonical definition to state claims against.
-/

/-! ## A167805.P5651880889364683535

`lt[A103709(n+1), A000010(n+1)%4]+1`
-/

namespace A167805.P5651880889364683535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A167805.P5651880889364683535

/-! ## A167805.P17846954889732562890

`A138650(A133020(n+1))+A008486(n)`
-/

namespace A167805.P17846954889732562890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138650 (A133020 (n + 1)).toNat + A008486 n

end

end A167805.P17846954889732562890

/-! ## A167805.P8584572518827305248

`A374845(n+1)-A135416(A007052(n))`
-/

namespace A167805.P8584572518827305248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374845 (n + 1) - A135416 (A007052 n).toNat

end

end A167805.P8584572518827305248

/-! ## A167805.P8407628096669841109

`record[gcd(A101083(n+1), A249552(n+1))]`
-/

namespace A167805.P8407628096669841109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101083 (n + 1)) (A249552 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167805.P8407628096669841109

/-! ## A167805.P14793075837575161778

`A266161(A000244(n))+A265899(n+1)`
-/

namespace A167805.P14793075837575161778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266161 (A000244 n).toNat + A265899 (n + 1)

end

end A167805.P14793075837575161778

/-!
# A167806: Numbers with primitive root -10.

The programs for A167806, there is no canonical definition to state claims against.
-/

/-! ## A167806.P10488735505629151475

`A007348(n+1)%Δ[A345459(n)]`
-/

namespace A167806.P10488735505629151475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007348 (n + 1)) (f1 (n + 1) - f1 n)

end

end A167806.P10488735505629151475

/-! ## A167806.P18189005617454848341

`A007348(n+1)+A000007(A000070(n))`
-/

namespace A167806.P18189005617454848341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1) + A000007 (A000070 n).toNat

end

end A167806.P18189005617454848341

/-! ## A167806.P9544074189649876332

`A290081(A016826(n))+A007348(n+1)`
-/

namespace A167806.P9544074189649876332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 (A016826 n).toNat + A007348 (n + 1)

end

end A167806.P9544074189649876332

/-! ## A167806.P12663646106562259220

`lcm(A007348(n+1), A309873(A032020(n)))`
-/

namespace A167806.P12663646106562259220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007348 (n + 1)) (A309873 (A032020 n).toNat)

end

end A167806.P12663646106562259220

/-! ## A167806.P11963189214306289250

`or(A007348(n+1), A010054(A000930(n)))`
-/

namespace A167806.P11963189214306289250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007348 (n + 1)) (A010054 (A000930 n).toNat)

end

end A167806.P11963189214306289250

/-!
# A167808: Numerator of Fibonacci(n)/2.

The programs for A167808, the canonical program `A167808.P16028297521266122094` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167808 has offset 0).

The definition of A167808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167808.P16028297521266122094

`4*a(n-3)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167808

/-- `4*a(n-3)+a(n-6)` -/
def P16028297521266122094.Spec : Prop :=
  ∀ n, (P16028297521266122094.a n : ℤ) = A167808 n

theorem P16028297521266122094.correct : P16028297521266122094.Spec := by
  intro n
  simp only [A167808]

end A167808

/-! ## A167808.P7638769233003274325

`(A001611(n)-1)/Δ[comp[4*(n+1)]]`
-/

namespace A167808.P7638769233003274325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1 : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A167808.P7638769233003274325

namespace A167808

/-- `(A001611(n)-1)/Δ[comp[4*(n+1)]]` -/
def P7638769233003274325.Spec : Prop :=
  ∀ n, P7638769233003274325.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P10856220320821851896

`A000045(n)/A100063(n)`
-/

namespace A167808.P10856220320821851896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A100063 n : ℚ)

end

end A167808.P10856220320821851896

namespace A167808

/-- `A000045(n)/A100063(n)` -/
def P10856220320821851896.Spec : Prop :=
  ∀ n, P10856220320821851896.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P7488487089506711578

`A000045(n)/dr(A010177(n))`
-/

namespace A167808.P7488487089506711578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (SequenceMachineLib.digitalRoot (A010177 n) : ℚ)

end

end A167808.P7488487089506711578

namespace A167808

/-- `A000045(n)/dr(A010177(n))` -/
def P7488487089506711578.Spec : Prop :=
  ∀ n, P7488487089506711578.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P16270406742352047274

`A000045(n)/(A079978(n)+1)`
-/

namespace A167808.P16270406742352047274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A079978 n + 1 : ℚ)

end

end A167808.P16270406742352047274

namespace A167808

/-- `A000045(n)/(A079978(n)+1)` -/
def P16270406742352047274.Spec : Prop :=
  ∀ n, P16270406742352047274.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P2258714598261659284

`A000045(n)/A131534(n+1)`
-/

namespace A167808.P2258714598261659284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A131534 (n + 1) : ℚ)

end

end A167808.P2258714598261659284

namespace A167808

/-- `A000045(n)/A131534(n+1)` -/
def P2258714598261659284.Spec : Prop :=
  ∀ n, P2258714598261659284.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P13690452936455679885

`A000045(n)/A101825(n+2)`
-/

namespace A167808.P13690452936455679885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A101825 (n + 2) : ℚ)

end

end A167808.P13690452936455679885

namespace A167808

/-- `A000045(n)/A101825(n+2)` -/
def P13690452936455679885.Spec : Prop :=
  ∀ n, P13690452936455679885.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P13453234784582036705

`A000045(n)/A107751(n+2)`
-/

namespace A167808.P13453234784582036705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A107751 (n + 2) : ℚ)

end

end A167808.P13453234784582036705

namespace A167808

/-- `A000045(n)/A107751(n+2)` -/
def P13453234784582036705.Spec : Prop :=
  ∀ n, P13453234784582036705.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P1910860159812218499

`A000045(n)/A177702(n+2)`
-/

namespace A167808.P1910860159812218499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A177702 (n + 2) : ℚ)

end

end A167808.P1910860159812218499

namespace A167808

/-- `A000045(n)/A177702(n+2)` -/
def P1910860159812218499.Spec : Prop :=
  ∀ n, P1910860159812218499.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P13728335577921126749

`A000045(n)/(2-A011655(n))`
-/

namespace A167808.P13728335577921126749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (2 - A011655 n : ℚ)

end

end A167808.P13728335577921126749

namespace A167808

/-- `A000045(n)/(2-A011655(n))` -/
def P13728335577921126749.Spec : Prop :=
  ∀ n, P13728335577921126749.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P13756983976925194540

`A000045(n)/(2-A267208(n))`
-/

namespace A167808.P13756983976925194540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (2 - A267208 n : ℚ)

end

end A167808.P13756983976925194540

namespace A167808

/-- `A000045(n)/(2-A267208(n))` -/
def P13756983976925194540.Spec : Prop :=
  ∀ n, P13756983976925194540.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P11438062952233965634

`A000045(n)/2*A130196(n)`
-/

namespace A167808.P11438062952233965634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A130196 n : ℚ)

end

end A167808.P11438062952233965634

namespace A167808

/-- `A000045(n)/2*A130196(n)` -/
def P11438062952233965634.Spec : Prop :=
  ∀ n, P11438062952233965634.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P11847147909232187024

`A000045(n)/(2-A102283(n)²)`
-/

namespace A167808.P11847147909232187024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (2 - A102283 n ^ 2 : ℚ)

end

end A167808.P11847147909232187024

namespace A167808

/-- `A000045(n)/(2-A102283(n)²)` -/
def P11847147909232187024.Spec : Prop :=
  ∀ n, P11847147909232187024.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P12479996609379911045

`A000045(n)/(2-A128834(n)²)`
-/

namespace A167808.P12479996609379911045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (2 - A128834 n ^ 2 : ℚ)

end

end A167808.P12479996609379911045

namespace A167808

/-- `A000045(n)/(2-A128834(n)²)` -/
def P12479996609379911045.Spec : Prop :=
  ∀ n, P12479996609379911045.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P9470543455267728998

`A000045(n)/(2-A163806(n)²)`
-/

namespace A167808.P9470543455267728998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (2 - A163806 n ^ 2 : ℚ)

end

end A167808.P9470543455267728998

namespace A167808

/-- `A000045(n)/(2-A163806(n)²)` -/
def P9470543455267728998.Spec : Prop :=
  ∀ n, P9470543455267728998.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P15162219297874651415

`A000045(n)/(2-A163810(n)²)`
-/

namespace A167808.P15162219297874651415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (2 - A163810 n ^ 2 : ℚ)

end

end A167808.P15162219297874651415

namespace A167808

/-- `A000045(n)/(2-A163810(n)²)` -/
def P15162219297874651415.Spec : Prop :=
  ∀ n, P15162219297874651415.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P996863225545778268

`A000045(n)/(A093719(2*n)+1)`
-/

namespace A167808.P996863225545778268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A093719 (2 * n) + 1 : ℚ)

end

end A167808.P996863225545778268

namespace A167808

/-- `A000045(n)/(A093719(2*n)+1)` -/
def P996863225545778268.Spec : Prop :=
  ∀ n, P996863225545778268.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P8500093631837395102

`A000045(n)/A040258(2*n+3)`
-/

namespace A167808.P8500093631837395102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A040258 (2 * n + 3) : ℚ)

end

end A167808.P8500093631837395102

namespace A167808

/-- `A000045(n)/A040258(2*n+3)` -/
def P8500093631837395102.Spec : Prop :=
  ∀ n, P8500093631837395102.a n = (A167808 n : ℚ)

end A167808

/-! ## A167808.P15468538570388333222

`A000045(n)/A083039(2*n+3)`
-/

namespace A167808.P15468538570388333222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A083039 (2 * n + 3) : ℚ)

end

end A167808.P15468538570388333222

namespace A167808

/-- `A000045(n)/A083039(2*n+3)` -/
def P15468538570388333222.Spec : Prop :=
  ∀ n, P15468538570388333222.a n = (A167808 n : ℚ)

end A167808

/-!
# A167809: Number of admissible bases in the postage stamp problem for n denominations and h = 2 stamps.

The programs for A167809, there is no canonical definition to state claims against.
-/

/-! ## A167809.P13132841528622292796

`A008932(n+1)`
-/

namespace A167809.P13132841528622292796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008932 (n + 1)

end

end A167809.P13132841528622292796

/-! ## A167809.P7617172031456442183

`record[A008932(n)-char[1]]`
-/

namespace A167809.P7617172031456442183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008932 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167809.P7617172031456442183

/-! ## A167809.P3913655765123830828

`record[A008932(ceil(xor(1, n)/2))]`
-/

namespace A167809.P3913655765123830828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008932 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167809.P3913655765123830828

/-! ## A167809.P4921020259030042523

`record[A008932(round(xor(1, n)/6))]`
-/

namespace A167809.P4921020259030042523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008932 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167809.P4921020259030042523

/-! ## A167809.P1969073480609981850

`record[A008932(n-gcd(n, ∑[n]))]`
-/

namespace A167809.P1969073480609981850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008932 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167809.P1969073480609981850

/-!
# A167810: Number of admissible basis in the postage stamp problem for n denominations and h = 3 stamps.

The programs for A167810, there is no canonical definition to state claims against.
-/

/-! ## A167810.P3598135825273322476

`A152112(n+2)`
-/

namespace A167810.P3598135825273322476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152112 (n + 2)

end

end A167810.P3598135825273322476

/-! ## A167810.P14863868550581605730

`record[A152112(A000119(n))]`
-/

namespace A167810.P14863868550581605730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152112 (A000119 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167810.P14863868550581605730

/-!
# A167811: Number of admissible basis in the postage stamp problem for n denominations and h = 4 stamps.

The programs for A167811, there is no canonical definition to state claims against.
-/

/-! ## A167811.P3514570072251975542

`A020655(A293491(n)+A281425(n+1))`
-/

namespace A167811.P3514570072251975542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A293491 n + A281425 (n + 1)).toNat

end

end A167811.P3514570072251975542

/-!
# A167812: Number of admissible basis in the postage stamp problem for n denominations and h = 5 stamps.

The programs for A167812, there is no canonical definition to state claims against.
-/

/-! ## A167812.P792456570358595716

`A037477(A322661(n))*A250120(n)`
-/

namespace A167812.P792456570358595716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A322661 n).toNat * A250120 n

end

end A167812.P792456570358595716

/-!
# A167816: Numerator of x(n) = x(n-1) + x(n-2), x(0)=0, x(1)=1/3; denominator=A167817.

The programs for A167816, the canonical program `A167816.P150185744290117333` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167816 has offset 0).

The definition of A167816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167816.P150185744290117333

`7*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=5, a(6)=8, a(7)=13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167816

/-- `7*a(n-4)-a(n-8)` -/
def P150185744290117333.Spec : Prop :=
  ∀ n, P150185744290117333.a n = A167816 n

theorem P150185744290117333.correct : P150185744290117333.Spec := by
  intro n
  simp only [A167816]

end A167816

/-! ## A167816.P6685574039875996918

`A000045(n)/gcd(3, A000045(n))`
-/

namespace A167816.P6685574039875996918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (Int.gcd 3 (A000045 n) : ℚ)

end

end A167816.P6685574039875996918

namespace A167816

/-- `A000045(n)/gcd(3, A000045(n))` -/
def P6685574039875996918.Spec : Prop :=
  ∀ n, P6685574039875996918.a n = (A167816 n : ℚ)

end A167816

/-! ## A167816.P9932817290966774277

`A000045(n)/(∑[A057077(n)]+n+2)%4`
-/

namespace A167816.P9932817290966774277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 2) 4 : ℚ)

end

end A167816.P9932817290966774277

namespace A167816

/-- `A000045(n)/(∑[A057077(n)]+n+2)%4` -/
def P9932817290966774277.Spec : Prop :=
  ∀ n, P9932817290966774277.a n = (A167816 n : ℚ)

end A167816

/-! ## A167816.P10893618338690973049

`A212804(n+1)/gcd(A010693(2*n+1), A212804(n+1))`
-/

namespace A167816.P10893618338690973049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (n + 1) : ℚ) / (Int.gcd (A010693 (2 * n + 1)) (A212804 (n + 1)) : ℚ)

end

end A167816.P10893618338690973049

namespace A167816

/-- `A212804(n+1)/gcd(A010693(2*n+1), A212804(n+1))` -/
def P10893618338690973049.Spec : Prop :=
  ∀ n, P10893618338690973049.a n = (A167816 n : ℚ)

end A167816

/-! ## A167816.P1248466251799155555

`lcm(3, A000045(n)²)/A097135(n)`
-/

namespace A167816.P1248466251799155555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A000045 n ^ 2) : ℚ) / (A097135 n : ℚ)

end

end A167816.P1248466251799155555

namespace A167816

/-- `lcm(3, A000045(n)²)/A097135(n)` -/
def P1248466251799155555.Spec : Prop :=
  ∀ n, P1248466251799155555.a n = (A167816 n : ℚ)

end A167816

/-! ## A167816.P7379510512844466488

`lcm(A000045(n), A288219(n))/A288219(n)`
-/

namespace A167816.P7379510512844466488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000045 n) (A288219 n) : ℚ) / (A288219 n : ℚ)

end

end A167816.P7379510512844466488

namespace A167816

/-- `lcm(A000045(n), A288219(n))/A288219(n)` -/
def P7379510512844466488.Spec : Prop :=
  ∀ n, P7379510512844466488.a n = (A167816 n : ℚ)

end A167816

/-! ## A167816.P3637823443895113231

`lcm(A020701(n), A236191(n))/A020701(n)`
-/

namespace A167816.P3637823443895113231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020701 n) (A236191 n) : ℚ) / (A020701 n : ℚ)

end

end A167816.P3637823443895113231

namespace A167816

/-- `lcm(A020701(n), A236191(n))/A020701(n)` -/
def P3637823443895113231.Spec : Prop :=
  ∀ n, P3637823443895113231.a n = (A167816 n : ℚ)

end A167816

/-! ## A167816.P14105910862821608600

`gcd(A000045(n), A049673(n))`
-/

namespace A167816.P14105910862821608600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n) (A049673 n)

end

end A167816.P14105910862821608600

namespace A167816

/-- `gcd(A000045(n), A049673(n))` -/
def P14105910862821608600.Spec : Prop :=
  ∀ n, (P14105910862821608600.a n : ℤ) = A167816 n

end A167816

/-! ## A167816.P4302042678785370590

`gcd(A001906(n), A049675(n))`
-/

namespace A167816.P4302042678785370590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001906 n) (A049675 n)

end

end A167816.P4302042678785370590

namespace A167816

/-- `gcd(A001906(n), A049675(n))` -/
def P4302042678785370590.Spec : Prop :=
  ∀ n, (P4302042678785370590.a n : ℤ) = A167816 n

end A167816

/-!
# A167817: Period 4: repeat [1, 3, 3, 3].

The programs for A167817, the canonical program `A167817.P10432677920538210788` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167817 has offset 0).

The definition of A167817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167817.P10432677920538210788

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167817

/-- `a(n-4)` -/
def P10432677920538210788.Spec : Prop :=
  ∀ n, (P10432677920538210788.a n : ℤ) = A167817 n

theorem P10432677920538210788.correct : P10432677920538210788.Spec := by
  intro n
  simp only [A167817]

end A167817

/-!
# A167820: Subsequence of A167709 whose indices are congruent to 0 mod 5, i.e., a(n) = A167709(5*n).

The programs for A167820, the canonical program `A167820.P9706103568503313407` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167820 has offset 0).

The definition of A167820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167820.P9706103568503313407

`340*a(n-1)-a(n-2)` with `a(0)=0, a(1)=351`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167820

/-- `340*a(n-1)-a(n-2)` -/
def P9706103568503313407.Spec : Prop :=
  ∀ n, P9706103568503313407.a n = A167820 n

theorem P9706103568503313407.correct : P9706103568503313407.Spec := by
  intro n
  simp only [A167820]

end A167820

/-! ## A167820.P10396303190266437

`A167709(5*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167820.P10396303190266437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 (5 * n)

end

end A167820.P10396303190266437

namespace A167820

/-- `A167709(5*n)` -/
def P10396303190266437.Spec : Prop :=
  ∀ n, P10396303190266437.a n = A167820 n

end A167820

/-! ## A167820.P14931559802484296556

`9*A174765(n+1)`
-/

namespace A167820.P14931559802484296556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A174765 (n + 1)

end

end A167820.P14931559802484296556

namespace A167820

/-- `9*A174765(n+1)` -/
def P14931559802484296556.Spec : Prop :=
  ∀ n, P14931559802484296556.a n = A167820 n

end A167820

/-! ## A167820.P157856709081888299

`A167775(n)-(A167822(n)+A167774(n))`
-/

namespace A167820.P157856709081888299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167775 n - (A167822 n + A167774 n)

end

end A167820.P157856709081888299

namespace A167820

/-- `A167775(n)-(A167822(n)+A167774(n))` -/
def P157856709081888299.Spec : Prop :=
  ∀ n, P157856709081888299.a n = A167820 n

end A167820

/-! ## A167820.P16209659237319156075

`A167822(n)-(A174765(n+1)+A114048(n+1))`
-/

namespace A167820.P16209659237319156075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167822 n - (A174765 (n + 1) + A114048 (n + 1))

end

end A167820.P16209659237319156075

namespace A167820

/-- `A167822(n)-(A174765(n+1)+A114048(n+1))` -/
def P16209659237319156075.Spec : Prop :=
  ∀ n, P16209659237319156075.a n = A167820 n

end A167820

/-!
# A167821: a(n) is the number of n-tosses having a run of 3 or more heads or a run of 3 or more tails for a fair coin (i.e., probability is a(n)/2^n).

The programs for A167821, the canonical program `A167821.P7964156617973824438` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167821 has offset 1).

The definition of A167821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167821.P7964156617973824438

`2*A008466(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167821

/-- `2*A008466(n)` -/
def P7964156617973824438.Spec : Prop :=
  ∀ n, P7964156617973824438.a n = A167821 (n + 1)

theorem P7964156617973824438.correct : P7964156617973824438.Spec := by
  intro n
  simp only [A167821, Nat.add_sub_cancel]

end A167821

/-! ## A167821.P1855643642502172514

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A167821.P1855643642502172514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A167821.P1855643642502172514

namespace A167821

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P1855643642502172514.Spec : Prop :=
  ∀ n, P1855643642502172514.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P8714876050858273916

`2*Δ[2^n-∑[a(n-2)+a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A167821.P8714876050858273916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A167821.P8714876050858273916

namespace A167821

/-- `2*Δ[2^n-∑[a(n-2)+a(n-1)]]` -/
def P8714876050858273916.Spec : Prop :=
  ∀ n, P8714876050858273916.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P11466324438128187372

`2*Δ[A232580(n)]`
-/

namespace A167821.P11466324438128187372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A167821.P11466324438128187372

namespace A167821

/-- `2*Δ[A232580(n)]` -/
def P11466324438128187372.Spec : Prop :=
  ∀ n, P11466324438128187372.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P8132047300593917861

`A119587(n+1)-1`
-/

namespace A167821.P8132047300593917861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119587 (n + 1) - 1

end

end A167821.P8132047300593917861

namespace A167821

/-- `A119587(n+1)-1` -/
def P8132047300593917861.Spec : Prop :=
  ∀ n, P8132047300593917861.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P9644493364428974569

`A131403(n)-(n+1)`
-/

namespace A167821.P9644493364428974569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131403 n - (n + 1 : ℤ)

end

end A167821.P9644493364428974569

namespace A167821

/-- `A131403(n)-(n+1)` -/
def P9644493364428974569.Spec : Prop :=
  ∀ n, P9644493364428974569.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P5865153369170069928

`A377728(n)-and(1, n)`
-/

namespace A167821.P5865153369170069928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377728 n - (Nat.land 1 n : ℤ)

end

end A167821.P5865153369170069928

namespace A167821

/-- `A377728(n)-and(1, n)` -/
def P5865153369170069928.Spec : Prop :=
  ∀ n, P5865153369170069928.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P6603715720107410255

`∑[2^n]-A001595(n+1)`
-/

namespace A167821.P6603715720107410255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001595 (n + 1)

end

end A167821.P6603715720107410255

namespace A167821

/-- `∑[2^n]-A001595(n+1)` -/
def P6603715720107410255.Spec : Prop :=
  ∀ n, P6603715720107410255.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P1813496261138167881

`2^(n+1)-A055389(n+2)`
-/

namespace A167821.P1813496261138167881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A055389 (n + 2)

end

end A167821.P1813496261138167881

namespace A167821

/-- `2^(n+1)-A055389(n+2)` -/
def P1813496261138167881.Spec : Prop :=
  ∀ n, P1813496261138167881.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P6367040689837150977

`2^(n+1)-A128588(n+2)`
-/

namespace A167821.P6367040689837150977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A128588 (n + 2)

end

end A167821.P6367040689837150977

namespace A167821

/-- `2^(n+1)-A128588(n+2)` -/
def P6367040689837150977.Spec : Prop :=
  ∀ n, P6367040689837150977.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P12935475444242775635

`2^(n+1)-A006355(n+3)`
-/

namespace A167821.P12935475444242775635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A006355 (n + 3)

end

end A167821.P12935475444242775635

namespace A167821

/-- `2^(n+1)-A006355(n+3)` -/
def P12935475444242775635.Spec : Prop :=
  ∀ n, P12935475444242775635.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P3781802400851900284

`2*(2^n-A000045(n+2))`
-/

namespace A167821.P3781802400851900284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) - A000045 (n + 2))

end

end A167821.P3781802400851900284

namespace A167821

/-- `2*(2^n-A000045(n+2))` -/
def P3781802400851900284.Spec : Prop :=
  ∀ n, P3781802400851900284.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P8618125775198272506

`2*(Δ[A000045(n)]+a(n-1))` with `a(0)=0`
-/

namespace A167821.P8618125775198272506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (f1 (n + 1) - f1 n + a (n - 1))

end

end A167821.P8618125775198272506

namespace A167821

/-- `2*(Δ[A000045(n)]+a(n-1))` -/
def P8618125775198272506.Spec : Prop :=
  ∀ n, P8618125775198272506.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P3067879418754556395

`2*(A000045(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A167821.P3067879418754556395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (A000045 (n - 1) + a (n - 1))

end

end A167821.P3067879418754556395

namespace A167821

/-- `2*(A000045(n-1)+a(n-1))` -/
def P3067879418754556395.Spec : Prop :=
  ∀ n, P3067879418754556395.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P909306044012423418

`A232580(n)+A228078(n)`
-/

namespace A167821.P909306044012423418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n + A228078 n

end

end A167821.P909306044012423418

namespace A167821

/-- `A232580(n)+A228078(n)` -/
def P909306044012423418.Spec : Prop :=
  ∀ n, P909306044012423418.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P12409958395041410561

`A077552(n)-A054886(n)`
-/

namespace A167821.P12409958395041410561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077552 n - A054886 n

end

end A167821.P12409958395041410561

namespace A167821

/-- `A077552(n)-A054886(n)` -/
def P12409958395041410561.Spec : Prop :=
  ∀ n, P12409958395041410561.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P2099192980728321253

`A027934(n)-A227200(n)`
-/

namespace A167821.P2099192980728321253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n - A227200 n

end

end A167821.P2099192980728321253

namespace A167821

/-- `A027934(n)-A227200(n)` -/
def P2099192980728321253.Spec : Prop :=
  ∀ n, P2099192980728321253.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P664273243978128004

`A377728(n)-A000035(n)`
-/

namespace A167821.P664273243978128004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377728 n - A000035 n

end

end A167821.P664273243978128004

namespace A167821

/-- `A377728(n)-A000035(n)` -/
def P664273243978128004.Spec : Prop :=
  ∀ n, P664273243978128004.a n = A167821 (n + 1)

end A167821

/-! ## A167821.P2887889680280261416

`and(A095121(n), A377728(n))`
-/

namespace A167821.P2887889680280261416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 n) (A377728 n)

end

end A167821.P2887889680280261416

namespace A167821

/-- `and(A095121(n), A377728(n))` -/
def P2887889680280261416.Spec : Prop :=
  ∀ n, P2887889680280261416.a n = A167821 (n + 1)

end A167821

/-!
# A167822: Subsequence of A167709 whose indices are congruent to 1 mod 5, i.e., a(n) = A167709(5*n+1).

The programs for A167822, the canonical program `A167822.P13120193018996326907` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167822 has offset 0).

The definition of A167822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167822.P13120193018996326907

`340*a(n-1)-a(n-2)` with `a(0)=1, a(1)=560`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167822

/-- `340*a(n-1)-a(n-2)` -/
def P13120193018996326907.Spec : Prop :=
  ∀ n, P13120193018996326907.a n = A167822 n

theorem P13120193018996326907.correct : P13120193018996326907.Spec := by
  intro n
  simp only [A167822]

end A167822

/-! ## A167822.P18255597860093548566

`A167709(5*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167822.P18255597860093548566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 (5 * n + 1)

end

end A167822.P18255597860093548566

namespace A167822

/-- `A167709(5*n+1)` -/
def P18255597860093548566.Spec : Prop :=
  ∀ n, P18255597860093548566.a n = A167822 n

end A167822

/-! ## A167822.P7527371442808608591

`A114048(n+1)+10*A174765(n+1)`
-/

namespace A167822.P7527371442808608591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114048 (n + 1) + 10 * A174765 (n + 1)

end

end A167822.P7527371442808608591

namespace A167822

/-- `A114048(n+1)+10*A174765(n+1)` -/
def P7527371442808608591.Spec : Prop :=
  ∀ n, P7527371442808608591.a n = A167822 n

end A167822

/-! ## A167822.P13599182898451925734

`A167775(n)-(A167820(n)+A167774(n))`
-/

namespace A167822.P13599182898451925734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167775 n - (A167820 n + A167774 n)

end

end A167822.P13599182898451925734

namespace A167822

/-- `A167775(n)-(A167820(n)+A167774(n))` -/
def P13599182898451925734.Spec : Prop :=
  ∀ n, P13599182898451925734.a n = A167822 n

end A167822

/-! ## A167822.P1276118760433929101

`A114048(n+1)+A174765(n+1)+A167820(n)`
-/

namespace A167822.P1276118760433929101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114048 (n + 1) + (A174765 (n + 1) + A167820 n)

end

end A167822.P1276118760433929101

namespace A167822

/-- `A114048(n+1)+A174765(n+1)+A167820(n)` -/
def P1276118760433929101.Spec : Prop :=
  ∀ n, P1276118760433929101.a n = A167822 n

end A167822

/-!
# A167823: Subsequence of A167709 whose indices are congruent to 2 mod 5, i.e., a(n) = A167709(5*n+2).

The programs for A167823, there is no canonical definition to state claims against.
-/

/-! ## A167823.P17491243100459834800

`A167709(5*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167823.P17491243100459834800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 (5 * n + 2)

end

end A167823.P17491243100459834800

/-! ## A167823.P8777304850374191813

`A167824(3*n+1)%A167824(n)`
-/

namespace A167823.P8777304850374191813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167824 (3 * n + 1)) (A167824 n)

end

end A167823.P8777304850374191813

/-!
# A167824: Subsequence of A167709 whose indices are congruent to 3 mod 5, i.e., a(n) = A167709(5*n+3).

The programs for A167824, there is no canonical definition to state claims against.
-/

/-! ## A167824.P17128754098296150390

`A167709(5*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167824.P17128754098296150390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 (5 * n + 3)

end

end A167824.P17128754098296150390

/-!
# A167825: Subsequence of A167709 whose indices are congruent to 4 mod 5, i.e., a(n) = A167709(5*n+4).

The programs for A167825, there is no canonical definition to state claims against.
-/

/-! ## A167825.P1033036688345908538

`A167709(5*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167825.P1033036688345908538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 (5 * n + 4)

end

end A167825.P1033036688345908538

/-! ## A167825.P16999245493827720419

`A167822(n+1)-2*A114048(n+2)`
-/

namespace A167825.P16999245493827720419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167822 (n + 1) - 2 * A114048 (n + 2)

end

end A167825.P16999245493827720419

/-! ## A167825.P7672404961567864828

`A167774(n+1)-(A167820(n+1)+A167780(n))`
-/

namespace A167825.P7672404961567864828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167774 (n + 1) - (A167820 (n + 1) + A167780 n)

end

end A167825.P7672404961567864828

/-!
# A167826: a(n) is the number of n-tosses having a run of 3 or more heads and a run of 3 or more tails for a fair coin.

The programs for A167826, the canonical program `A167826.P4230620490821421290` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167826 has offset 1).

The definition of A167826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167826.P4230620490821421290

`A050231(n+1)-A238361(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167826

/-- `A050231(n+1)-A238361(n+1)` -/
def P4230620490821421290.Spec : Prop :=
  ∀ n, P4230620490821421290.a n = A167826 (n + 1)

theorem P4230620490821421290.correct : P4230620490821421290.Spec := by
  intro n
  simp only [A167826, Nat.add_sub_cancel]

end A167826

/-! ## A167826.P3921965798669518107

`2*(A050231(n+1)-A008466(n))`
-/

namespace A167826.P3921965798669518107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A050231 (n + 1) - A008466 n)

end

end A167826.P3921965798669518107

namespace A167826

/-- `2*(A050231(n+1)-A008466(n))` -/
def P3921965798669518107.Spec : Prop :=
  ∀ n, P3921965798669518107.a n = A167826 (n + 1)

end A167826

/-! ## A167826.P9256001534502050970

`A050231(n+1)+A050231(n+1)-A167821(n+1)`
-/

namespace A167826.P9256001534502050970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050231 (n + 1) + (A050231 (n + 1) - A167821 (n + 1))

end

end A167826.P9256001534502050970

namespace A167826

/-- `A050231(n+1)+A050231(n+1)-A167821(n+1)` -/
def P9256001534502050970.Spec : Prop :=
  ∀ n, P9256001534502050970.a n = A167826 (n + 1)

end A167826

/-! ## A167826.P12238970950859543512

`A265725(n+2)-A167821(n+1)`
-/

namespace A167826.P12238970950859543512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265725 (n + 2) - A167821 (n + 1)

end

end A167826.P12238970950859543512

namespace A167826

/-- `A265725(n+2)-A167821(n+1)` -/
def P12238970950859543512.Spec : Prop :=
  ∀ n, P12238970950859543512.a n = A167826 (n + 1)

end A167826

/-! ## A167826.P5219432436144247789

`2*A050231(n+1)-A167821(n+1)`
-/

namespace A167826.P5219432436144247789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050231 (n + 1) - A167821 (n + 1)

end

end A167826.P5219432436144247789

namespace A167826

/-- `2*A050231(n+1)-A167821(n+1)` -/
def P5219432436144247789.Spec : Prop :=
  ∀ n, P5219432436144247789.a n = A167826 (n + 1)

end A167826

/-!
# A167831: Largest m<=n such that no carry occurs when adding m to n in decimal arithmetic.

The programs for A167831, there is no canonical definition to state claims against.
-/

/-! ## A167831.P2382518869656079176

`A167832(n)-n`
-/

namespace A167831.P2382518869656079176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167832 n - (n : ℤ)

end

end A167831.P2382518869656079176

/-! ## A167831.P7344132633048652436

`(A167832(n)+1)%A004442(A004442(n+1))`
-/

namespace A167831.P7344132633048652436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167832 n + 1) (A004442 (A004442 (n + 1)).toNat)

end

end A167831.P7344132633048652436

/-! ## A167831.P13428124974440034782

`A035327(A035327(A167832(n))+n)`
-/

namespace A167831.P13428124974440034782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A035327 (A167832 n).toNat + (n : ℤ)).toNat

end

end A167831.P13428124974440034782

/-!
# A167832: A167831(n) + n.

The programs for A167832, there is no canonical definition to state claims against.
-/

/-! ## A167832.P1815027840230858231

`A167831(n)+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167832.P1815027840230858231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n + (n : ℤ)

end

end A167832.P1815027840230858231

/-! ## A167832.P8241471540805909793

`abs(A001489(n)-A167831(n))`
-/

namespace A167832.P8241471540805909793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A167831 n|

end

end A167832.P8241471540805909793

/-! ## A167832.P16559128880375514176

`n-A001057(2*A167831(n))`
-/

namespace A167832.P16559128880375514176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A167831 n).toNat

end

end A167832.P16559128880375514176

/-! ## A167832.P9723667076485204085

`A005843(n)-(n-A167831(n))`
-/

namespace A167832.P9723667076485204085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A167831 n)

end

end A167832.P9723667076485204085

/-! ## A167832.P10758789580405766976

`A004524(4*n)-(n-A167831(n))`
-/

namespace A167832.P10758789580405766976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (4 * n) - ((n : ℤ) - A167831 n)

end

end A167832.P10758789580405766976

/-! ## A167832.P7504124382757727083

`n-(A285192(A285192(n))-A167831(n))`
-/

namespace A167832.P7504124382757727083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A285192 (A285192 n).toNat - A167831 n)

end

end A167832.P7504124382757727083

/-!
# A167833: Three-times-isolated primes: primes p such that neither p+-2, p+-4 nor p+-6 is prime.

The programs for A167833, there is no canonical definition to state claims against.
-/

/-! ## A167833.P3791711641633319251

`A137870(n%a(n-1))` with `a(0)=2`
-/

namespace A167833.P3791711641633319251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A137870 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A167833.P3791711641633319251

/-! ## A167833.P15348700235847389666

`p?[∪[2*n, A137870(n+1)]]`
-/

namespace A167833.P15348700235847389666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137870 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167833.P15348700235847389666

/-! ## A167833.P7700986202622455033

`∪[A007352(n+1), A137870(n+1)]`
-/

namespace A167833.P7700986202622455033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167833.P7700986202622455033

/-! ## A167833.P2178112030976434455

`∪[A137870(n+1), A167838(n+1)]`
-/

namespace A167833.P2178112030976434455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167833.P2178112030976434455

/-! ## A167833.P16623411504317841054

`∪[A137870(n+1), A167839(n+1)]`
-/

namespace A167833.P16623411504317841054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167833.P16623411504317841054

/-! ## A167833.P4172622337237408801

`∪[A137870(n+1), A167840(n+1)]`
-/

namespace A167833.P4172622337237408801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167833.P4172622337237408801

/-! ## A167833.P4483249825740173752

`∪[A137870(n+1), A176584(n+1)]`
-/

namespace A167833.P4483249825740173752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167833.P4483249825740173752

/-! ## A167833.P9830133231720117712

`p?[∪[A137870(n+1), A137882(n+1)]]`
-/

namespace A167833.P9830133231720117712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137870 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137882 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167833.P9830133231720117712

/-! ## A167833.P16779257560609494880

`p?[∪[A137870(n+1), A137831(n+4)]]`
-/

namespace A167833.P16779257560609494880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137870 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137831 (n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167833.P16779257560609494880

/-! ## A167833.P12919898499939680195

`∩[A140546(n+1), A167771(n+1)]`
-/

namespace A167833.P12919898499939680195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167833.P12919898499939680195

/-! ## A167833.P8605977310721107439

`A137870(A028310(n))%A167499(A167771(n+1))`
-/

namespace A167833.P8605977310721107439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137870 (A028310 n).toNat) (A167499 (A167771 (n + 1)).toNat)

end

end A167833.P8605977310721107439

/-!
# A167838: Four-times-isolated primes: primes p such that neither p+-2, p+-4, p+-6 nor p+-8 is prime.

The programs for A167838, there is no canonical definition to state claims against.
-/

/-! ## A167838.P10444463459968976842

`p?[∪[2*n, A137871(n+1)]]`
-/

namespace A167838.P10444463459968976842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137871 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167838.P10444463459968976842

/-! ## A167838.P8542426269329407546

`A137871(n%lcm(5, a(n-1)))` with `a(0)=2`
-/

namespace A167838.P8542426269329407546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A137871 (n % Int.lcm 5 (a (n - 1)))

end

end A167838.P8542426269329407546

/-! ## A167838.P16454545830493493581

`A137871(C(n, a(n-1))/2+n)` with `a(0)=2`
-/

namespace A167838.P16454545830493493581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A137871 (SequenceMachineLib.roundAway ((Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ))).toNat

end

end A167838.P16454545830493493581

/-! ## A167838.P16478223619686543282

`∪[A007352(n+1), A137871(n+1)]`
-/

namespace A167838.P16478223619686543282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167838.P16478223619686543282

/-! ## A167838.P3098448217099644583

`∪[A137871(n+1), A167839(n+1)]`
-/

namespace A167838.P3098448217099644583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167838.P3098448217099644583

/-! ## A167838.P163737199041303693

`∪[A137871(n+1), A167840(n+1)]`
-/

namespace A167838.P163737199041303693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167838.P163737199041303693

/-! ## A167838.P2582632085903691655

`∪[A137871(n+1), A176584(n+1)]`
-/

namespace A167838.P2582632085903691655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167838.P2582632085903691655

/-! ## A167838.P12193485805770304491

`p?[∪[A137871(n+1), A001747(n+1)]]`
-/

namespace A167838.P12193485805770304491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137871 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167838.P12193485805770304491

/-! ## A167838.P11710029022231787049

`p?[∪[A137871(n+1), A137829(n)]]`
-/

namespace A167838.P11710029022231787049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137871 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137829 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167838.P11710029022231787049

/-!
# A167839: Five-times-isolated primes: primes p such that none of (p-10,p-8,p-6,p-4,p-2,p+2,p+4,p+6,p+8,p+10) are prime.

The programs for A167839, there is no canonical definition to state claims against.
-/

/-! ## A167839.P8876902269225643511

`A137872(n%a(n-1))` with `a(0)=2`
-/

namespace A167839.P8876902269225643511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A137872 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A167839.P8876902269225643511

/-! ## A167839.P16268597068917652631

`p?[∪[2*n, A137872(n+1)]]`
-/

namespace A167839.P16268597068917652631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137872 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167839.P16268597068917652631

/-! ## A167839.P7153658852788073805

`∪[A007352(n+1), A137872(n+1)]`
-/

namespace A167839.P7153658852788073805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167839.P7153658852788073805

/-! ## A167839.P18133388451157163947

`∪[A137872(n+1), A167840(n+1)]`
-/

namespace A167839.P18133388451157163947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167839.P18133388451157163947

/-! ## A167839.P2235757049658207559

`p?[∪[A137872(n+1), A137829(n)]]`
-/

namespace A167839.P2235757049658207559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137872 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137829 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167839.P2235757049658207559

/-! ## A167839.P16877347725486245859

`A137872(n)+A010054(a(n-1))` with `a(0)=2`
-/

namespace A167839.P16877347725486245859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A137872 n + A010054 (a (n - 1)).toNat

end

end A167839.P16877347725486245859

/-! ## A167839.P5493388269044871465

`A137872(n-A010054(a(n-1)))` with `a(0)=2`
-/

namespace A167839.P5493388269044871465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A137872 ((n : ℤ) - A010054 (a (n - 1)).toNat).toNat

end

end A167839.P5493388269044871465

/-!
# A167840: Six-times-isolated primes: primes p such that none of p+-2, p+-4, p+-6, p+-8, p+-10 nor p+-12 are prime.

The programs for A167840, there is no canonical definition to state claims against.
-/

/-! ## A167840.P7804304748146037806

`A137873(n%a(n-1))` with `a(0)=2`
-/

namespace A167840.P7804304748146037806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A137873 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A167840.P7804304748146037806

/-! ## A167840.P9101359259368603134

`∪[A007352(n+1), A137873(n+1)]`
-/

namespace A167840.P9101359259368603134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167840.P9101359259368603134

/-! ## A167840.P17233868513724225444

`p?[∪[A137873(n+1), A137882(n+1)]]`
-/

namespace A167840.P17233868513724225444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137873 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137882 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167840.P17233868513724225444

/-! ## A167840.P8124780015646012254

`p?[∪[A137873(n+1), A137831(n+4)]]`
-/

namespace A167840.P8124780015646012254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137873 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137831 (n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167840.P8124780015646012254

/-! ## A167840.P16363420727008459880

`p?[∪[A137873(n+1), A137829(n)]]`
-/

namespace A167840.P16363420727008459880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137873 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137829 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167840.P16363420727008459880

/-! ## A167840.P3140953561159417309

`∩[A167839(n+1), A240709(n+1)]`
-/

namespace A167840.P3140953561159417309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167840.P3140953561159417309

/-! ## A167840.P7193019140089014772

`p?[∪[A137873(n+1), A137895(n+1)]]`
-/

namespace A167840.P7193019140089014772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137873 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137895 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167840.P7193019140089014772

/-!
# A167841: Acute-angled primes.

The programs for A167841, there is no canonical definition to state claims against.
-/

/-! ## A167841.P12271833361710957359

`p?[A135601(n+1)]`
-/

namespace A167841.P12271833361710957359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167841.P12271833361710957359

/-! ## A167841.P18430242060121645408

`record[A006530(A135601(n+2))]`
-/

namespace A167841.P18430242060121645408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A135601 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167841.P18430242060121645408

/-! ## A167841.P13339160059903205633

`filter[A135601(n+1), A010051(#)]`
-/

namespace A167841.P13339160059903205633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167841.P13339160059903205633

/-! ## A167841.P12598489138537374145

`∩[A050757(n+1), A135601(n+1)]`
-/

namespace A167841.P12598489138537374145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P12598489138537374145

/-! ## A167841.P18214341011389211651

`∩[A000040(n+1), A135601(n+1)]`
-/

namespace A167841.P18214341011389211651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P18214341011389211651

/-! ## A167841.P11408401538943018703

`∩[A004139(n+1), A135601(n+1)]`
-/

namespace A167841.P11408401538943018703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P11408401538943018703

/-! ## A167841.P7548125899320543542

`∩[A006005(n+1), A135601(n+1)]`
-/

namespace A167841.P7548125899320543542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P7548125899320543542

/-! ## A167841.P10454980419282625766

`∩[A008578(n+1), A135601(n+1)]`
-/

namespace A167841.P10454980419282625766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P10454980419282625766

/-! ## A167841.P17409533750892253160

`∩[A033946(n+1), A135601(n+1)]`
-/

namespace A167841.P17409533750892253160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P17409533750892253160

/-! ## A167841.P14813164735112461286

`∩[A045319(n+1), A135601(n+1)]`
-/

namespace A167841.P14813164735112461286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P14813164735112461286

/-! ## A167841.P15565224858481200821

`∩[A045344(n+1), A135601(n+1)]`
-/

namespace A167841.P15565224858481200821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P15565224858481200821

/-! ## A167841.P8535309162978335928

`∩[A046022(n+1), A135601(n+1)]`
-/

namespace A167841.P8535309162978335928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P8535309162978335928

/-! ## A167841.P1967450940323644940

`∩[A051948(n+1), A135601(n+1)]`
-/

namespace A167841.P1967450940323644940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P1967450940323644940

/-! ## A167841.P3390128687454663351

`∩[A065091(n+1), A135601(n+1)]`
-/

namespace A167841.P3390128687454663351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P3390128687454663351

/-! ## A167841.P15288018318977205284

`∩[A065396(n+1), A135601(n+1)]`
-/

namespace A167841.P15288018318977205284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P15288018318977205284

/-! ## A167841.P5863587318531719552

`∩[A066050(n+1), A135601(n+1)]`
-/

namespace A167841.P5863587318531719552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P5863587318531719552

/-! ## A167841.P16044760820120282800

`∩[A067126(n+1), A135601(n+1)]`
-/

namespace A167841.P16044760820120282800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P16044760820120282800

/-! ## A167841.P14773858162717122603

`∩[A071621(n+1), A135601(n+1)]`
-/

namespace A167841.P14773858162717122603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P14773858162717122603

/-! ## A167841.P9229011754605689588

`∩[A083249(n+1), A135601(n+1)]`
-/

namespace A167841.P9229011754605689588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P9229011754605689588

/-! ## A167841.P5881051739840404006

`∩[A140826(n+1), A135601(n+1)]`
-/

namespace A167841.P5881051739840404006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167841.P5881051739840404006

/-!
# A167842: Right-angled primes.

The programs for A167842, there is no canonical definition to state claims against.
-/

/-! ## A167842.P13065678861145267624

`∩[A048398(n+1), A135602(n+1)]`
-/

namespace A167842.P13065678861145267624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167842.P13065678861145267624

/-! ## A167842.P10544573026867404321

`∩[A068148(n+1), A135602(n+1)]`
-/

namespace A167842.P10544573026867404321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167842.P10544573026867404321

/-! ## A167842.P12866668892615354767

`p?[A135602(n+1)]`
-/

namespace A167842.P12866668892615354767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167842.P12866668892615354767

/-!
# A167843: Obtuse-angled primes.

The programs for A167843, there is no canonical definition to state claims against.
-/

/-! ## A167843.P3527758740501651806

`p?[A135603(n+1)]`
-/

namespace A167843.P3527758740501651806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167843.P3527758740501651806

/-! ## A167843.P18427798846059284720

`p?[record[A135603(A052938(n))]]`
-/

namespace A167843.P18427798846059284720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167843.P18427798846059284720

/-! ## A167843.P12024307529306559455

`p?[record[A135603(A065648(n))]]`
-/

namespace A167843.P12024307529306559455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167843.P12024307529306559455

/-! ## A167843.P6641206687122434525

`∩[A052085(n+1), A135603(n+1)]`
-/

namespace A167843.P6641206687122434525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P6641206687122434525

/-! ## A167843.P17781871779295068344

`∩[A038618(n+1), A135603(n+1)]`
-/

namespace A167843.P17781871779295068344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P17781871779295068344

/-! ## A167843.P11940754878151963761

`filter[A135603(n+1), A010051(#)]`
-/

namespace A167843.P11940754878151963761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167843.P11940754878151963761

/-! ## A167843.P6894809931664142595

`∩[A000040(n+1), A135603(n+1)]`
-/

namespace A167843.P6894809931664142595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P6894809931664142595

/-! ## A167843.P10553901267388239103

`∩[A004139(n+1), A135603(n+1)]`
-/

namespace A167843.P10553901267388239103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P10553901267388239103

/-! ## A167843.P15803341372879070588

`∩[A006005(n+1), A135603(n+1)]`
-/

namespace A167843.P15803341372879070588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P15803341372879070588

/-! ## A167843.P15908485756400130329

`∩[A008578(n+1), A135603(n+1)]`
-/

namespace A167843.P15908485756400130329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P15908485756400130329

/-! ## A167843.P17873222509450482453

`∩[A033946(n+1), A135603(n+1)]`
-/

namespace A167843.P17873222509450482453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P17873222509450482453

/-! ## A167843.P13250104080454812968

`∩[A045319(n+1), A135603(n+1)]`
-/

namespace A167843.P13250104080454812968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P13250104080454812968

/-! ## A167843.P7318282533888817675

`∩[A045344(n+1), A135603(n+1)]`
-/

namespace A167843.P7318282533888817675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P7318282533888817675

/-! ## A167843.P5103632203897237548

`∩[A046022(n+1), A135603(n+1)]`
-/

namespace A167843.P5103632203897237548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P5103632203897237548

/-! ## A167843.P1742077923732751686

`∩[A051948(n+1), A135603(n+1)]`
-/

namespace A167843.P1742077923732751686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P1742077923732751686

/-! ## A167843.P6969345098570125208

`∩[A053813(n+1), A135603(n+1)]`
-/

namespace A167843.P6969345098570125208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P6969345098570125208

/-! ## A167843.P13134733746015971962

`∩[A065091(n+1), A135603(n+1)]`
-/

namespace A167843.P13134733746015971962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P13134733746015971962

/-! ## A167843.P15937480864539175639

`∩[A066050(n+1), A135603(n+1)]`
-/

namespace A167843.P15937480864539175639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P15937480864539175639

/-! ## A167843.P3300977239034642170

`∩[A067126(n+1), A135603(n+1)]`
-/

namespace A167843.P3300977239034642170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P3300977239034642170

/-! ## A167843.P13448964940740485848

`∩[A071621(n+1), A135603(n+1)]`
-/

namespace A167843.P13448964940740485848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167843.P13448964940740485848

/-!
# A167844: Convex primes.

The programs for A167844, there is no canonical definition to state claims against.
-/

/-! ## A167844.P17249124287258611325

`p?[A135641(n+1)]`
-/

namespace A167844.P17249124287258611325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167844.P17249124287258611325

/-! ## A167844.P6901716745064050849

`∩[A000040(n+1), A135641(n+1)]`
-/

namespace A167844.P6901716745064050849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P6901716745064050849

/-! ## A167844.P14120753111865746562

`∩[A004139(n+1), A135641(n+1)]`
-/

namespace A167844.P14120753111865746562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P14120753111865746562

/-! ## A167844.P11690716604290362029

`∩[A006005(n+1), A135641(n+1)]`
-/

namespace A167844.P11690716604290362029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P11690716604290362029

/-! ## A167844.P17713291770013772355

`∩[A008578(n+1), A135641(n+1)]`
-/

namespace A167844.P17713291770013772355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P17713291770013772355

/-! ## A167844.P18403346026856364679

`∩[A033946(n+1), A135641(n+1)]`
-/

namespace A167844.P18403346026856364679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P18403346026856364679

/-! ## A167844.P4203874957836402462

`∩[A045319(n+1), A135641(n+1)]`
-/

namespace A167844.P4203874957836402462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P4203874957836402462

/-! ## A167844.P10765611068703878557

`∩[A045344(n+1), A135641(n+1)]`
-/

namespace A167844.P10765611068703878557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P10765611068703878557

/-! ## A167844.P3895549063549409970

`∩[A046022(n+1), A135641(n+1)]`
-/

namespace A167844.P3895549063549409970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P3895549063549409970

/-! ## A167844.P5435544305737787936

`∩[A051948(n+1), A135641(n+1)]`
-/

namespace A167844.P5435544305737787936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P5435544305737787936

/-! ## A167844.P9418704958649082916

`∩[A065091(n+1), A135641(n+1)]`
-/

namespace A167844.P9418704958649082916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P9418704958649082916

/-! ## A167844.P7051039254594112550

`∩[A066050(n+1), A135641(n+1)]`
-/

namespace A167844.P7051039254594112550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P7051039254594112550

/-! ## A167844.P6405762529628667227

`∩[A067126(n+1), A135641(n+1)]`
-/

namespace A167844.P6405762529628667227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P6405762529628667227

/-! ## A167844.P10925737109499258576

`∩[A071621(n+1), A135641(n+1)]`
-/

namespace A167844.P10925737109499258576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P10925737109499258576

/-! ## A167844.P14391631866126170151

`∩[A083249(n+1), A135641(n+1)]`
-/

namespace A167844.P14391631866126170151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P14391631866126170151

/-! ## A167844.P1315452327918842904

`∩[A135641(n+1), A140826(n+1)]`
-/

namespace A167844.P1315452327918842904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P1315452327918842904

/-! ## A167844.P6658513413111175642

`∩[A135641(n+1), A161346(n+1)]`
-/

namespace A167844.P6658513413111175642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P6658513413111175642

/-! ## A167844.P10093770419298775250

`∩[A135641(n+1), A162787(n+1)]`
-/

namespace A167844.P10093770419298775250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P10093770419298775250

/-! ## A167844.P8438532471104555283

`∩[A135641(n+1), A193339(n+1)]`
-/

namespace A167844.P8438532471104555283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P8438532471104555283

/-! ## A167844.P1773303677300288815

`∩[A135641(n+1), A216495(n+1)]`
-/

namespace A167844.P1773303677300288815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167844.P1773303677300288815

/-!
# A167845: Concave primes.

The programs for A167845, there is no canonical definition to state claims against.
-/

/-! ## A167845.P11052673673366767200

`p?[A135642(n+1)]`
-/

namespace A167845.P11052673673366767200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167845.P11052673673366767200

/-! ## A167845.P3153279340511360044

`p?[record[A135642(A065648(n))]]`
-/

namespace A167845.P3153279340511360044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135642 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167845.P3153279340511360044

/-! ## A167845.P5850665525322611941

`filter[A135642(n+1), A010051(#)]`
-/

namespace A167845.P5850665525322611941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167845.P5850665525322611941

/-! ## A167845.P12706714500789811373

`filter[A135642(n+1), A080339(#)]`
-/

namespace A167845.P12706714500789811373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A167845.P12706714500789811373

/-! ## A167845.P13935501828304168786

`filter[A135642(n+1), A080545(#)]`
-/

namespace A167845.P13935501828304168786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A167845.P13935501828304168786

/-!
# A167846: Concave-convex primes.

The programs for A167846, there is no canonical definition to state claims against.
-/

/-! ## A167846.P15047663578595871263

`p?[A163278(n+1)]`
-/

namespace A167846.P15047663578595871263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167846.P15047663578595871263

/-! ## A167846.P8962361533672832793

`p?[record[A163278(A324347(n))]]`
-/

namespace A167846.P8962361533672832793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167846.P8962361533672832793

/-! ## A167846.P1922257557045072886

`p?[record[A163278(A328396(n))]]`
-/

namespace A167846.P1922257557045072886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167846.P1922257557045072886

/-! ## A167846.P270657388343209647

`filter[A163278(n+1), A010051(#)]`
-/

namespace A167846.P270657388343209647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167846.P270657388343209647

/-! ## A167846.P6967363691280328234

`filter[A163278(n+1), A323152(#)]`
-/

namespace A167846.P6967363691280328234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A167846.P6967363691280328234

/-! ## A167846.P2633240974268040545

`filter[A163278(n+1), A323153(#)]`
-/

namespace A167846.P2633240974268040545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A167846.P2633240974268040545

/-! ## A167846.P5997353017229223303

`∩[A000040(n+1), A163278(n+1)]`
-/

namespace A167846.P5997353017229223303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P5997353017229223303

/-! ## A167846.P1546727906116114725

`∩[A004139(n+1), A163278(n+1)]`
-/

namespace A167846.P1546727906116114725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P1546727906116114725

/-! ## A167846.P6705046374406756476

`∩[A006005(n+1), A163278(n+1)]`
-/

namespace A167846.P6705046374406756476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P6705046374406756476

/-! ## A167846.P16031062470466702720

`∩[A008578(n+1), A163278(n+1)]`
-/

namespace A167846.P16031062470466702720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P16031062470466702720

/-! ## A167846.P12431959837501201552

`∩[A033946(n+1), A163278(n+1)]`
-/

namespace A167846.P12431959837501201552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P12431959837501201552

/-! ## A167846.P7585623707915160628

`∩[A045319(n+1), A163278(n+1)]`
-/

namespace A167846.P7585623707915160628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P7585623707915160628

/-! ## A167846.P7322068917915447205

`∩[A045344(n+1), A163278(n+1)]`
-/

namespace A167846.P7322068917915447205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P7322068917915447205

/-! ## A167846.P7575125945986264686

`∩[A046022(n+1), A163278(n+1)]`
-/

namespace A167846.P7575125945986264686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P7575125945986264686

/-! ## A167846.P8629679500059188252

`∩[A053140(n+1), A163278(n+1)]`
-/

namespace A167846.P8629679500059188252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P8629679500059188252

/-! ## A167846.P10832469115918663957

`∩[A053813(n+1), A163278(n+1)]`
-/

namespace A167846.P10832469115918663957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P10832469115918663957

/-! ## A167846.P12684904677935215703

`∩[A065091(n+1), A163278(n+1)]`
-/

namespace A167846.P12684904677935215703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P12684904677935215703

/-! ## A167846.P14246840248501239670

`∩[A066050(n+1), A163278(n+1)]`
-/

namespace A167846.P14246840248501239670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P14246840248501239670

/-! ## A167846.P15977635288406363195

`∩[A067126(n+1), A163278(n+1)]`
-/

namespace A167846.P15977635288406363195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P15977635288406363195

/-! ## A167846.P5618970888139924856

`∩[A161346(n+1), A163278(n+1)]`
-/

namespace A167846.P5618970888139924856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167846.P5618970888139924856

/-!
# A167847: Straight-line primes.

The programs for A167847, there is no canonical definition to state claims against.
-/

/-! ## A167847.P17782782900035348192

`p?[∪[2*n+9, A119426(n)]]`
-/

namespace A167847.P17782782900035348192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119426 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167847.P17782782900035348192

/-! ## A167847.P2060642595296193387

`A096489(n+2)`
-/

namespace A167847.P2060642595296193387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096489 (n + 2)

end

end A167847.P2060642595296193387

/-! ## A167847.P9155113570425170406

`record[A210757(n+1)]`
-/

namespace A167847.P9155113570425170406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167847.P9155113570425170406

/-! ## A167847.P6523338989385115142

`p?[A095862(n+1)]`
-/

namespace A167847.P6523338989385115142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167847.P6523338989385115142

/-! ## A167847.P14267185088442381532

`p?[A108871(n+1)]`
-/

namespace A167847.P14267185088442381532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167847.P14267185088442381532

/-!
# A167850: Triangle read by rows in which each row contains a finite triangle as shown below.

The programs for A167850, the canonical program `A167850.P1417608363177121969` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167850 has offset 1).

The definition of A167850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167850.P5012310244095530000

`ceil(cos(A167852(n+1)))`
-/

namespace A167850.P5012310244095530000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (A167852 (n + 1) : ℝ)⌉

end

end A167850.P5012310244095530000

namespace A167850

/-- `ceil(cos(A167852(n+1)))` -/
def P5012310244095530000.Spec : Prop :=
  ∀ n, P5012310244095530000.a n = A167850 (n + 1)

end A167850

/-! ## A167850.P10434713600227864709

`A355688(A369979(n+1))+1`
-/

namespace A167850.P10434713600227864709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355688 (A369979 (n + 1)).toNat + 1

end

end A167850.P10434713600227864709

namespace A167850

/-- `A355688(A369979(n+1))+1` -/
def P10434713600227864709.Spec : Prop :=
  ∀ n, P10434713600227864709.a n = A167850 (n + 1)

end A167850

/-! ## A167850.P9444271778435231128

`1-A085405(A014311(n+1))`
-/

namespace A167850.P9444271778435231128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A085405 (A014311 (n + 1)).toNat

end

end A167850.P9444271778435231128

namespace A167850

/-- `1-A085405(A014311(n+1))` -/
def P9444271778435231128.Spec : Prop :=
  ∀ n, P9444271778435231128.a n = A167850 (n + 1)

end A167850

/-! ## A167850.P9110300227546114725

`2-A284558(A023746(n+1))`
-/

namespace A167850.P9110300227546114725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A284558 (A023746 (n + 1)).toNat

end

end A167850.P9110300227546114725

namespace A167850

/-- `2-A284558(A023746(n+1))` -/
def P9110300227546114725.Spec : Prop :=
  ∀ n, P9110300227546114725.a n = A167850 (n + 1)

end A167850

/-! ## A167850.P1417608363177121969

`floor(1/A167852(A000027(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A167850

/-- `floor(1/A167852(A000027(n+1)))` -/
def P1417608363177121969.Spec : Prop :=
  ∀ n, P1417608363177121969.a n = A167850 (n + 1)

theorem P1417608363177121969.correct : P1417608363177121969.Spec := by
  intro n
  simp only [A167850, Nat.add_sub_cancel]

end A167850

/-! ## A167850.P4353254233414397794

`A167852(n+1)^-A000384(n)`
-/

namespace A167850.P4353254233414397794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A000384 n : ℤ)

end

end A167850.P4353254233414397794

namespace A167850

/-- `A167852(n+1)^-A000384(n)` -/
def P4353254233414397794.Spec : Prop :=
  ∀ n, P4353254233414397794.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P12354090072814812371

`A167852(n+1)^-A007088(n)`
-/

namespace A167850.P12354090072814812371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A007088 n : ℤ)

end

end A167850.P12354090072814812371

namespace A167850

/-- `A167852(n+1)^-A007088(n)` -/
def P12354090072814812371.Spec : Prop :=
  ∀ n, P12354090072814812371.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P12826371368399175613

`A167852(n+1)^-A011782(n)`
-/

namespace A167850.P12826371368399175613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A011782 n : ℤ)

end

end A167850.P12826371368399175613

namespace A167850

/-- `A167852(n+1)^-A011782(n)` -/
def P12826371368399175613.Spec : Prop :=
  ∀ n, P12826371368399175613.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P15493929243920617033

`A167852(n+1)^-A062114(n)`
-/

namespace A167850.P15493929243920617033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A062114 n : ℤ)

end

end A167850.P15493929243920617033

namespace A167850

/-- `A167852(n+1)^-A062114(n)` -/
def P15493929243920617033.Spec : Prop :=
  ∀ n, P15493929243920617033.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P14436091688363595052

`A167852(n+1)^-A070198(n)`
-/

namespace A167850.P14436091688363595052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A070198 n : ℤ)

end

end A167850.P14436091688363595052

namespace A167850

/-- `A167852(n+1)^-A070198(n)` -/
def P14436091688363595052.Spec : Prop :=
  ∀ n, P14436091688363595052.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P5693298503863799465

`A167852(n+1)^-A154638(n)`
-/

namespace A167850.P5693298503863799465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A154638 n : ℤ)

end

end A167850.P5693298503863799465

namespace A167850

/-- `A167852(n+1)^-A154638(n)` -/
def P5693298503863799465.Spec : Prop :=
  ∀ n, P5693298503863799465.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P11140681586511627939

`A167852(n+1)^-A167816(n)`
-/

namespace A167850.P11140681586511627939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A167816 n : ℤ)

end

end A167850.P11140681586511627939

namespace A167850

/-- `A167852(n+1)^-A167816(n)` -/
def P11140681586511627939.Spec : Prop :=
  ∀ n, P11140681586511627939.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P4056992854861464135

`A167852(n+1)^-A198277(n)`
-/

namespace A167850.P4056992854861464135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A198277 n : ℤ)

end

end A167850.P4056992854861464135

namespace A167850

/-- `A167852(n+1)^-A198277(n)` -/
def P4056992854861464135.Spec : Prop :=
  ∀ n, P4056992854861464135.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P14210509470877345068

`A167858(n)^log2(A167852(n+1))`
-/

namespace A167850.P14210509470877345068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167858 n : ℝ) ^ (Real.logb 2 (A167852 (n + 1) : ℝ))

end

end A167850.P14210509470877345068

namespace A167850

/-- `A167858(n)^log2(A167852(n+1))` -/
def P14210509470877345068.Spec : Prop :=
  ∀ n, P14210509470877345068.a n = (A167850 (n + 1) : ℝ)

end A167850

/-! ## A167850.P2051519915766116446

`A167876(n)^log2(A167852(n+1))`
-/

namespace A167850.P2051519915766116446
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167876 n : ℝ) ^ (Real.logb 2 (A167852 (n + 1) : ℝ))

end

end A167850.P2051519915766116446

namespace A167850

/-- `A167876(n)^log2(A167852(n+1))` -/
def P2051519915766116446.Spec : Prop :=
  ∀ n, P2051519915766116446.a n = (A167850 (n + 1) : ℝ)

end A167850

/-! ## A167850.P8876582575398682735

`A167891(n)^log2(A167852(n+1))`
-/

namespace A167850.P8876582575398682735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167891 n : ℝ) ^ (Real.logb 2 (A167852 (n + 1) : ℝ))

end

end A167850.P8876582575398682735

namespace A167850

/-- `A167891(n)^log2(A167852(n+1))` -/
def P8876582575398682735.Spec : Prop :=
  ∀ n, P8876582575398682735.a n = (A167850 (n + 1) : ℝ)

end A167850

/-! ## A167850.P5315820645893619302

`A167852(n+1)^-A003476(n+1)`
-/

namespace A167850.P5315820645893619302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A003476 (n + 1) : ℤ)

end

end A167850.P5315820645893619302

namespace A167850

/-- `A167852(n+1)^-A003476(n+1)` -/
def P5315820645893619302.Spec : Prop :=
  ∀ n, P5315820645893619302.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P9538119291554520447

`A167852(n+1)^-A046952(n+1)`
-/

namespace A167850.P9538119291554520447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A046952 (n + 1) : ℤ)

end

end A167850.P9538119291554520447

namespace A167850

/-- `A167852(n+1)^-A046952(n+1)` -/
def P9538119291554520447.Spec : Prop :=
  ∀ n, P9538119291554520447.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P17053248629333567004

`A167852(n+1)^-A072828(n+1)`
-/

namespace A167850.P17053248629333567004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167852 (n + 1) : ℚ) ^ (-A072828 (n + 1) : ℤ)

end

end A167850.P17053248629333567004

namespace A167850

/-- `A167852(n+1)^-A072828(n+1)` -/
def P17053248629333567004.Spec : Prop :=
  ∀ n, P17053248629333567004.a n = (A167850 (n + 1) : ℚ)

end A167850

/-! ## A167850.P13617413634825383534

`round(A167851(n+1)/A167852(n+1))`
-/

namespace A167850.P13617413634825383534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A167851 (n + 1) : ℚ) / (A167852 (n + 1) : ℚ))

end

end A167850.P13617413634825383534

namespace A167850

/-- `round(A167851(n+1)/A167852(n+1))` -/
def P13617413634825383534.Spec : Prop :=
  ∀ n, P13617413634825383534.a n = A167850 (n + 1)

end A167850

/-!
# A167851: Triangle read by rows in which each row contains a finite triangle as shown below.

The programs for A167851, the canonical program `A167851.P8561358068027142929` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167851 has offset 1).

The definition of A167851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167851.P8561358068027142929

`A167852(n+1)%2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A167851

/-- `A167852(n+1)%2` -/
def P8561358068027142929.Spec : Prop :=
  ∀ n, P8561358068027142929.a n = A167851 (n + 1)

theorem P8561358068027142929.correct : P8561358068027142929.Spec := by
  intro n
  simp only [A167851, Nat.add_sub_cancel]

end A167851

/-! ## A167851.P17223440742539665218

`and(1, A167852(A000027(n+1)))`
-/

namespace A167851.P17223440742539665218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A167852 (A000027 (n + 1)).toNat)

end

end A167851.P17223440742539665218

namespace A167851

/-- `and(1, A167852(A000027(n+1)))` -/
def P17223440742539665218.Spec : Prop :=
  ∀ n, P17223440742539665218.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P2139278704223021941

`and(1, A167852(A028242(2*n)))`
-/

namespace A167851.P2139278704223021941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A167852 (A028242 (2 * n)).toNat)

end

end A167851.P2139278704223021941

namespace A167851

/-- `and(1, A167852(A028242(2*n)))` -/
def P2139278704223021941.Spec : Prop :=
  ∀ n, P2139278704223021941.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P7562225785176445163

`and(A000322(n), A167852(n+1))`
-/

namespace A167851.P7562225785176445163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000322 n) (A167852 (n + 1))

end

end A167851.P7562225785176445163

namespace A167851

/-- `and(A000322(n), A167852(n+1))` -/
def P7562225785176445163.Spec : Prop :=
  ∀ n, P7562225785176445163.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P14003592708555109732

`and(A000328(n), A167852(n+1))`
-/

namespace A167851.P14003592708555109732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A167852 (n + 1))

end

end A167851.P14003592708555109732

namespace A167851

/-- `and(A000328(n), A167852(n+1))` -/
def P14003592708555109732.Spec : Prop :=
  ∀ n, P14003592708555109732.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P17665521954569387279

`and(A001513(n), A167852(n+1))`
-/

namespace A167851.P17665521954569387279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A167852 (n + 1))

end

end A167851.P17665521954569387279

namespace A167851

/-- `and(A001513(n), A167852(n+1))` -/
def P17665521954569387279.Spec : Prop :=
  ∀ n, P17665521954569387279.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P15659979730615787688

`and(A001535(n), A167852(n+1))`
-/

namespace A167851.P15659979730615787688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A167852 (n + 1))

end

end A167851.P15659979730615787688

namespace A167851

/-- `and(A001535(n), A167852(n+1))` -/
def P15659979730615787688.Spec : Prop :=
  ∀ n, P15659979730615787688.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P7313282897440429949

`and(A001546(n), A167852(n+1))`
-/

namespace A167851.P7313282897440429949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A167852 (n + 1))

end

end A167851.P7313282897440429949

namespace A167851

/-- `and(A001546(n), A167852(n+1))` -/
def P7313282897440429949.Spec : Prop :=
  ∀ n, P7313282897440429949.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P5363187296138339845

`and(A001844(n), A167852(n+1))`
-/

namespace A167851.P5363187296138339845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A167852 (n + 1))

end

end A167851.P5363187296138339845

namespace A167851

/-- `and(A001844(n), A167852(n+1))` -/
def P5363187296138339845.Spec : Prop :=
  ∀ n, P5363187296138339845.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P7759311884774678807

`and(A001846(n), A167852(n+1))`
-/

namespace A167851.P7759311884774678807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A167852 (n + 1))

end

end A167851.P7759311884774678807

namespace A167851

/-- `and(A001846(n), A167852(n+1))` -/
def P7759311884774678807.Spec : Prop :=
  ∀ n, P7759311884774678807.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P10709541405759674139

`and(A001848(n), A167852(n+1))`
-/

namespace A167851.P10709541405759674139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A167852 (n + 1))

end

end A167851.P10709541405759674139

namespace A167851

/-- `and(A001848(n), A167852(n+1))` -/
def P10709541405759674139.Spec : Prop :=
  ∀ n, P10709541405759674139.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P4075340943982090941

`and(A002064(n), A167852(n+1))`
-/

namespace A167851.P4075340943982090941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A167852 (n + 1))

end

end A167851.P4075340943982090941

namespace A167851

/-- `and(A002064(n), A167852(n+1))` -/
def P4075340943982090941.Spec : Prop :=
  ∀ n, P4075340943982090941.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P11446271359552453233

`and(A003185(n), A167852(n+1))`
-/

namespace A167851.P11446271359552453233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A167852 (n + 1))

end

end A167851.P11446271359552453233

namespace A167851

/-- `and(A003185(n), A167852(n+1))` -/
def P11446271359552453233.Spec : Prop :=
  ∀ n, P11446271359552453233.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P13967371402956213182

`and(A004768(n), A167852(n+1))`
-/

namespace A167851.P13967371402956213182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A167852 (n + 1))

end

end A167851.P13967371402956213182

namespace A167851

/-- `and(A004768(n), A167852(n+1))` -/
def P13967371402956213182.Spec : Prop :=
  ∀ n, P13967371402956213182.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P9191434227971114007

`and(A006131(n), A167852(n+1))`
-/

namespace A167851.P9191434227971114007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006131 n) (A167852 (n + 1))

end

end A167851.P9191434227971114007

namespace A167851

/-- `and(A006131(n), A167852(n+1))` -/
def P9191434227971114007.Spec : Prop :=
  ∀ n, P9191434227971114007.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P12732665945399697080

`and(A006457(n), A167852(n+1))`
-/

namespace A167851.P12732665945399697080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006457 n) (A167852 (n + 1))

end

end A167851.P12732665945399697080

namespace A167851

/-- `and(A006457(n), A167852(n+1))` -/
def P12732665945399697080.Spec : Prop :=
  ∀ n, P12732665945399697080.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P3439487065937168722

`and(A006483(n), A167852(n+1))`
-/

namespace A167851.P3439487065937168722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006483 n) (A167852 (n + 1))

end

end A167851.P3439487065937168722

namespace A167851

/-- `and(A006483(n), A167852(n+1))` -/
def P3439487065937168722.Spec : Prop :=
  ∀ n, P3439487065937168722.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P11712755322390010767

`and(A006495(n), A167852(n+1))`
-/

namespace A167851.P11712755322390010767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006495 n) (A167852 (n + 1))

end

end A167851.P11712755322390010767

namespace A167851

/-- `and(A006495(n), A167852(n+1))` -/
def P11712755322390010767.Spec : Prop :=
  ∀ n, P11712755322390010767.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P2973016659239011581

`and(A007058(n), A167852(n+1))`
-/

namespace A167851.P2973016659239011581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007058 n) (A167852 (n + 1))

end

end A167851.P2973016659239011581

namespace A167851

/-- `and(A007058(n), A167852(n+1))` -/
def P2973016659239011581.Spec : Prop :=
  ∀ n, P2973016659239011581.a n = A167851 (n + 1)

end A167851

/-! ## A167851.P17563172613140490092

`and(A007204(n), A167852(n+1))`
-/

namespace A167851.P17563172613140490092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A167852 (n + 1))

end

end A167851.P17563172613140490092

namespace A167851

/-- `and(A007204(n), A167852(n+1))` -/
def P17563172613140490092.Spec : Prop :=
  ∀ n, P17563172613140490092.a n = A167851 (n + 1)

end A167851

/-!
# A167852: Triangle read by rows in which each row contains a finite triangle as shown below.

The programs for A167852, the canonical program `A167852.P6683598954730588562` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167852 has offset 1).

The definition of A167852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167852.P6683598954730588562

`val(A278533(A173589(n+1)), 5)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A167852

/-- `val(A278533(A173589(n+1)), 5)` -/
def P6683598954730588562.Spec : Prop :=
  ∀ n, (P6683598954730588562.a n : ℤ) = A167852 (n + 1)

theorem P6683598954730588562.correct : P6683598954730588562.Spec := by
  intro n
  simp only [A167852, Nat.add_sub_cancel]

end A167852

/-! ## A167852.P10045392641503636882

`A000005(A027862(n+1))-A167850(n+1)`
-/

namespace A167852.P10045392641503636882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A027862 (n + 1)).toNat - A167850 (n + 1)

end

end A167852.P10045392641503636882

namespace A167852

/-- `A000005(A027862(n+1))-A167850(n+1)` -/
def P10045392641503636882.Spec : Prop :=
  ∀ n, P10045392641503636882.a n = A167852 (n + 1)

end A167852

/-! ## A167852.P515429653156675452

`A304442(A214912(n+1))-A167850(n+1)`
-/

namespace A167852.P515429653156675452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A214912 (n + 1)).toNat - A167850 (n + 1)

end

end A167852.P515429653156675452

namespace A167852

/-- `A304442(A214912(n+1))-A167850(n+1)` -/
def P515429653156675452.Spec : Prop :=
  ∀ n, P515429653156675452.a n = A167852 (n + 1)

end A167852

/-! ## A167852.P9977790005177266482

`A304442(A214912(n+1))-A167851(n+1)`
-/

namespace A167852.P9977790005177266482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A214912 (n + 1)).toNat - A167851 (n + 1)

end

end A167852.P9977790005177266482

namespace A167852

/-- `A304442(A214912(n+1))-A167851(n+1)` -/
def P9977790005177266482.Spec : Prop :=
  ∀ n, P9977790005177266482.a n = A167852 (n + 1)

end A167852

/-! ## A167852.P17934987056541584034

`A020639(A325248(n+3))-A167851(n+1)`
-/

namespace A167852.P17934987056541584034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A325248 (n + 3)).toNat - A167851 (n + 1)

end

end A167852.P17934987056541584034

namespace A167852

/-- `A020639(A325248(n+3))-A167851(n+1)` -/
def P17934987056541584034.Spec : Prop :=
  ∀ n, P17934987056541584034.a n = A167852 (n + 1)

end A167852

/-! ## A167852.P17899118750878275922

`gcd(A167850(n+1)-2, A130706(n)*A151676(n))`
-/

namespace A167852.P17899118750878275922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167850 (n + 1) - 2) (A130706 n * A151676 n)

end

end A167852.P17899118750878275922

namespace A167852

/-- `gcd(A167850(n+1)-2, A130706(n)*A151676(n))` -/
def P17899118750878275922.Spec : Prop :=
  ∀ n, (P17899118750878275922.a n : ℤ) = A167852 (n + 1)

end A167852

/-! ## A167852.P7715185175571772655

`A298481(A321591(n))`
-/

namespace A167852.P7715185175571772655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298481 (A321591 n).toNat

end

end A167852.P7715185175571772655

namespace A167852

/-- `A298481(A321591(n))` -/
def P7715185175571772655.Spec : Prop :=
  ∀ n, P7715185175571772655.a n = A167852 (n + 1)

end A167852

/-!
# A167853: Generalized mountain primes.

The programs for A167853, there is no canonical definition to state claims against.
-/

/-! ## A167853.P3491744509460115603

`p?[A134853(n+1)]`
-/

namespace A167853.P3491744509460115603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167853.P3491744509460115603

/-! ## A167853.P7394087003813306951

`∩[A050757(n+1), A134853(n+1)]`
-/

namespace A167853.P7394087003813306951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167853.P7394087003813306951

/-! ## A167853.P1664681465864349419

`∩[A038618(n+1), A134853(n+1)]`
-/

namespace A167853.P1664681465864349419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167853.P1664681465864349419

/-! ## A167853.P5748068118019037981

`∩[A042986(n+1), A134853(n+1)]`
-/

namespace A167853.P5748068118019037981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167853.P5748068118019037981

/-! ## A167853.P5312064170804157309

`filter[A134853(n+1), A010051(#)]`
-/

namespace A167853.P5312064170804157309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167853.P5312064170804157309

/-! ## A167853.P3049356676976469372

`∩[A000040(n+1), A134853(n+1)]`
-/

namespace A167853.P3049356676976469372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167853.P3049356676976469372

/-! ## A167853.P14871912810312344538

`∩[A106118(n+1), A134853(n+1)]`
-/

namespace A167853.P14871912810312344538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167853.P14871912810312344538

/-! ## A167853.P12952853106362426135

`∩[A134853(n+1), A182986(n+1)]`
-/

namespace A167853.P12952853106362426135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167853.P12952853106362426135

/-! ## A167853.P14736809180524800717

`filter[A134853(n+2), A080339(#)]`
-/

namespace A167853.P14736809180524800717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A167853.P14736809180524800717

/-! ## A167853.P11556918501850564940

`∩[A134853(n+1), A240960(n+1)]`
-/

namespace A167853.P11556918501850564940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167853.P11556918501850564940

/-!
# A167856: Indices of records in A167401.

The programs for A167856, there is no canonical definition to state claims against.
-/

/-! ## A167856.P15385424652000924573

`lt[A104192(n+2), A226602(n²)]`
-/

namespace A167856.P15385424652000924573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167856.P15385424652000924573

/-! ## A167856.P15992497866261382406

`lt[A032766(n), A007095(A048785(n))]`
-/

namespace A167856.P15992497866261382406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A048785 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167856.P15992497866261382406

/-! ## A167856.P5424876451231419256

`lt[A139250(n), A247184(A048785(n))]`
-/

namespace A167856.P5424876451231419256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247184 (A048785 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167856.P5424876451231419256

/-! ## A167856.P3711022019713527942

`lt[A314167(n), A310237(A048785(n))]`
-/

namespace A167856.P3711022019713527942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310237 (A048785 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167856.P3711022019713527942

/-! ## A167856.P6429479473116960427

`lt[A047237(n+1), A007095(A048785(n))]`
-/

namespace A167856.P6429479473116960427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A048785 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167856.P6429479473116960427

/-!
# A167857: Numbers whose divisors are represented by an integer polynomial.

The programs for A167857, there is no canonical definition to state claims against.
-/

/-! ## A167857.P17555608802862067965

`eq[0, n%A155211(A108466(n+1))]+1`
-/

namespace A167857.P17555608802862067965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A155211 (A108466 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167857.P17555608802862067965

/-! ## A167857.P3729651537667909600

`eq[A000930(A211110(n)), A276088(n)]`
-/

namespace A167857.P3729651537667909600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A211110 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167857.P3729651537667909600

/-! ## A167857.P4970705039139978691

`∏{e}[2^n, A096738(#)]`
-/

namespace A167857.P4970705039139978691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A096738 (Nat.factorization (f1 n) p)

end

end A167857.P4970705039139978691

/-! ## A167857.P14050243248283226150

`eq[A016340(n+14), A111133(A032741(n))]`
-/

namespace A167857.P14050243248283226150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016340 (n + 14)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167857.P14050243248283226150

/-! ## A167857.P16888340517144890366

`lt[A081761(A323523(n)), A071053(n)]`
-/

namespace A167857.P16888340517144890366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081761 (A323523 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167857.P16888340517144890366

/-!
# A167858: A000004 preceded by 3, 14, 36, 36, 12.

The programs for A167858, the canonical program `A167858.P16744044202079937781` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167858 has offset 0).

The definition of A167858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167858.P16744044202079937781

`a(n-1)` with `a(0)=3, a(1)=14, a(2)=36, a(3)=36, a(4)=12, a(5)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167858

/-- `a(n-1)` -/
def P16744044202079937781.Spec : Prop :=
  ∀ n, (P16744044202079937781.a n : ℤ) = A167858 n

theorem P16744044202079937781.correct : P16744044202079937781.Spec := by
  intro n
  simp only [A167858]

end A167858

/-!
# A167859: a(n) = 4^n * Sum_{k=0..n} binomial(2*k, k)^2 / 4^k.

The programs for A167859, there is no canonical definition to state claims against.
-/

/-! ## A167859.P10434157372806823593

`4*a(n-1)+C(2*n, n)²` with `a(0)=1`
-/

namespace A167859.P10434157372806823593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + Nat.choose (2 * n) n ^ 2

end

end A167859.P10434157372806823593

/-! ## A167859.P6492138433498752797

`A002894(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A167859.P6492138433498752797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002894 n + 4 * a (n - 1)

end

end A167859.P6492138433498752797

/-! ## A167859.P15760272220581067217

`4*a(n-1)+A000984(n)²` with `a(0)=1`
-/

namespace A167859.P15760272220581067217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A000984 n ^ 2

end

end A167859.P15760272220581067217

/-! ## A167859.P10452972841568111155

`A018224(2*n)+4*a(n-1)` with `a(0)=1`
-/

namespace A167859.P10452972841568111155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018224 (2 * n) + 4 * a (n - 1)

end

end A167859.P10452972841568111155

/-! ## A167859.P4283549215678897522

`A241530(2*n)+4*a(n-1)` with `a(0)=1`
-/

namespace A167859.P4283549215678897522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241530 (2 * n) + 4 * a (n - 1)

end

end A167859.P4283549215678897522

/-! ## A167859.P14679790196425304434

`A056040(2*n)²+4*a(n-1)` with `a(0)=1`
-/

namespace A167859.P14679790196425304434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056040 (2 * n) ^ 2 + 4 * a (n - 1)

end

end A167859.P14679790196425304434

/-! ## A167859.P4825472756297371984

`(A216584(n)/A002426(n))²+4*a(n-1)` with `a(0)=1`
-/

namespace A167859.P4825472756297371984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A216584 n : ℚ) / (A002426 n : ℚ)) ^ 2 + 4 * a (n - 1)

end

end A167859.P4825472756297371984

/-! ## A167859.P16822965919968867082

`4*(a(n-1)+A007318(2*n²)²)` with `a(0)=1`
-/

namespace A167859.P16822965919968867082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) + A007318 (2 * n ^ 2) ^ 2)

end

end A167859.P16822965919968867082

/-!
# A167860: Primes p dividing every A167859(m) from m=(p-1)/2 to m=(p-1).

The programs for A167860, there is no canonical definition to state claims against.
-/

/-! ## A167860.P1057145753057945854

`A000040(eq[A010815(n), A271230(n+1)]+1)`
-/

namespace A167860.P1057145753057945854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A167860.P1057145753057945854

/-! ## A167860.P4983950122743142000

`A045319(eq[A271230(n+1), A355938(3*(n+1))])`
-/

namespace A167860.P4983950122743142000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355938 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167860.P4983950122743142000

/-! ## A167860.P18081326142451781566

`A276649(n+2)`
-/

namespace A167860.P18081326142451781566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276649 (n + 2)

end

end A167860.P18081326142451781566

/-! ## A167860.P17855115908314042365

`record[A276649(A085058(n))]`
-/

namespace A167860.P17855115908314042365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276649 (A085058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167860.P17855115908314042365

/-!
# A167865: Number of partitions of n into distinct parts greater than 1, with each part divisible by the next.

The programs for A167865, there is no canonical definition to state claims against.
-/

/-! ## A167865.P15164117124649850833

`A122651(n)-a(n-1)` with `a(0)=1`
-/

namespace A167865.P15164117124649850833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122651 n - a (n - 1)

end

end A167865.P15164117124649850833

/-! ## A167865.P7088853682744064026

`abs(∑[A033999(n)*A122651(n)])`
-/

namespace A167865.P7088853682744064026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A122651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A167865.P7088853682744064026

/-! ## A167865.P6905929694354144556

`∑{d}[n+1, A008683(#)*A122651((n+1)/#)]`
-/

namespace A167865.P6905929694354144556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A122651 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A167865.P6905929694354144556

/-! ## A167865.P6835094355037477736

`A000007(n)+A343371(n)-A331991(n+1)`
-/

namespace A167865.P6835094355037477736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A343371 n - A331991 (n + 1))

end

end A167865.P6835094355037477736

/-! ## A167865.P14809681315004096484

`A054977(n)*A343371(n)-A331991(n+1)`
-/

namespace A167865.P14809681315004096484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A343371 n - A331991 (n + 1)

end

end A167865.P14809681315004096484

/-! ## A167865.P6497504331792526487

`A343371(n)-A057427(n)*A331991(n+1)`
-/

namespace A167865.P6497504331792526487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n - A057427 n * A331991 (n + 1)

end

end A167865.P6497504331792526487

/-! ## A167865.P1615460808723598106

`A000035(A001316(n))+A343371(n)-A331991(n+1)`
-/

namespace A167865.P1615460808723598106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001316 n).toNat + (A343371 n - A331991 (n + 1))

end

end A167865.P1615460808723598106

/-! ## A167865.P11219122839815943310

`A345137(2*(n+1))-A345138(2*(n+1))`
-/

namespace A167865.P11219122839815943310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345137 (2 * (n + 1)) - A345138 (2 * (n + 1))

end

end A167865.P11219122839815943310

/-! ## A167865.P7565106816170893110

`A049084(2*(n+1))+A343371(n)-A331991(n+1)`
-/

namespace A167865.P7565106816170893110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1)) + (A343371 n - A331991 (n + 1))

end

end A167865.P7565106816170893110

/-! ## A167865.P17709808318865304301

`A343371(n)-A331991(n+1)%A276418(n)`
-/

namespace A167865.P17709808318865304301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n - Int.tmod (A331991 (n + 1)) (A276418 n)

end

end A167865.P17709808318865304301

/-!
# A167866: Length of the longest partition of n into distinct parts greater than 1, with each part divisible by the next one.

The programs for A167866, there is no canonical definition to state claims against.
-/

/-! ## A167866.P6626193076375235482

`round(A028391(n)/A232479(n+1))`
-/

namespace A167866.P6626193076375235482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A028391 n : ℚ) / (A232479 (n + 1) : ℚ))

end

end A167866.P6626193076375235482

/-! ## A167866.P17021847328548305735

`A078120(A343371(n))^A127568(A348496(n+1))`
-/

namespace A167866.P17021847328548305735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078120 (A343371 n).toNat : ℚ) ^ (A127568 (A348496 (n + 1)).toNat : ℤ)

end

end A167866.P17021847328548305735

/-! ## A167866.P11318866969256169641

`A087976(A100346(n))`
-/

namespace A167866.P11318866969256169641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087976 (A100346 n).toNat

end

end A167866.P11318866969256169641

/-! ## A167866.P7982014239462892453

`A087976(A284464(n))`
-/

namespace A167866.P7982014239462892453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087976 (A284464 n).toNat

end

end A167866.P7982014239462892453

/-! ## A167866.P2364147771172483275

`A302790(A005179(n+1)-n)`
-/

namespace A167866.P2364147771172483275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302790 (A005179 (n + 1) - (n : ℤ)).toNat

end

end A167866.P2364147771172483275

/-!
# A167867: a(n) = 2^n * Sum_{k=0..n} binomial(2*k,k)^3 / 2^k.

The programs for A167867, there is no canonical definition to state claims against.
-/

/-! ## A167867.P13634842235378841462

`C(2*n, n)^3+2*a(n-1)` with `a(0)=1`
-/

namespace A167867.P13634842235378841462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n) n ^ 3 + 2 * a (n - 1)

end

end A167867.P13634842235378841462

/-! ## A167867.P16102437264292057603

`A002897(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A167867.P16102437264292057603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002897 n + 2 * a (n - 1)

end

end A167867.P16102437264292057603

/-! ## A167867.P15809959633953072782

`A000984(n)^3+2*a(n-1)` with `a(0)=1`
-/

namespace A167867.P15809959633953072782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n ^ 3 + 2 * a (n - 1)

end

end A167867.P15809959633953072782

/-! ## A167867.P14436416215934514288

`((n+1)*A000108(n))^3+2*a(n-1)` with `a(0)=1`
-/

namespace A167867.P14436416215934514288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℤ) * A000108 n) ^ 3 + 2 * a (n - 1)

end

end A167867.P14436416215934514288

/-!
# A167868: a(n) = 3^n * Sum_{k=0..n} binomial(2*k,k)^3 / 3^k.

The programs for A167868, there is no canonical definition to state claims against.
-/

/-! ## A167868.P4277965832772791753

`C(2*n, n)^3+3*a(n-1)` with `a(0)=1`
-/

namespace A167868.P4277965832772791753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n) n ^ 3 + 3 * a (n - 1)

end

end A167868.P4277965832772791753

/-! ## A167868.P12538144907671965987

`A002897(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A167868.P12538144907671965987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002897 n + 3 * a (n - 1)

end

end A167868.P12538144907671965987

/-! ## A167868.P7825101418139868452

`A000984(n)^3+3*a(n-1)` with `a(0)=1`
-/

namespace A167868.P7825101418139868452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n ^ 3 + 3 * a (n - 1)

end

end A167868.P7825101418139868452

/-!
# A167869: a(n) = 4^n * Sum_{k=0..n} binomial(2*k,k)^3 / 4^k.

The programs for A167869, there is no canonical definition to state claims against.
-/

/-! ## A167869.P1794302527245062167

`A002897(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A167869.P1794302527245062167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002897 n + 4 * a (n - 1)

end

end A167869.P1794302527245062167

/-! ## A167869.P3431034605552411999

`A000984(n)^3+4*a(n-1)` with `a(0)=1`
-/

namespace A167869.P3431034605552411999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n ^ 3 + 4 * a (n - 1)

end

end A167869.P3431034605552411999

/-!
# A167870: a(n) = 16^n * Sum_{k=0..n} binomial(2*k,k)^3 / 16^k.

The programs for A167870, there is no canonical definition to state claims against.
-/

/-! ## A167870.P18285078358289351914

`A002897(n)+16*a(n-1)` with `a(0)=1`
-/

namespace A167870.P18285078358289351914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002897 n + 16 * a (n - 1)

end

end A167870.P18285078358289351914

/-!
# A167872: A sequence of moments connected with Feynman numbers (A000698): Half the number of Feynman diagrams of order 2(n+1), for the electron self-energy in quantum electrodynamics (QED), i.e., all proper diagrams including Furry vanishing diagrams (those that vanish in 4-dimensional QED because of Furry theorem).

The programs for A167872, there is no canonical definition to state claims against.
-/

/-! ## A167872.P12206736523136684932

`A115974(n+1)/2`
-/

namespace A167872.P12206736523136684932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115974 (n + 1) : ℚ) / 2

end

end A167872.P12206736523136684932

/-! ## A167872.P10295986612837854847

`Δ[∑[A115974(n)]/2]`
-/

namespace A167872.P10295986612837854847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115974 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167872.P10295986612837854847

/-! ## A167872.P15631840808046499423

`record[ratio[A115974(A193592(n))]]`
-/

namespace A167872.P15631840808046499423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115974 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167872.P15631840808046499423

/-! ## A167872.P11475751553734093793

`A127058(A000124(n+1))/2`
-/

namespace A167872.P11475751553734093793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127058 (A000124 (n + 1)).toNat : ℚ) / 2

end

end A167872.P11475751553734093793

/-! ## A167872.P12462969374083698656

`A127058(A025747(n)+1)/2`
-/

namespace A167872.P12462969374083698656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127058 (A025747 n + 1).toNat : ℚ) / 2

end

end A167872.P12462969374083698656

/-!
# A167873: Period 4: repeat [10, 6, 10, 4].

The programs for A167873, the canonical program `A167873.P13107999238251566471` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167873 has offset 1).

The definition of A167873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167873.P13107999238251566471

`15/2-5/2*cos((n+1)*π)-cos((n+1)*π/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167873

/-- `15/2-5/2*cos((n+1)*π)-cos((n+1)*π/2)` -/
def P13107999238251566471.Spec : Prop :=
  ∀ n, P13107999238251566471.a n = (A167873 (n + 1) : ℝ)

end A167873

/-!
# A167874: The number of distinct primes < 10^n which are members of twin-prime pairs.

The programs for A167874, there is no canonical definition to state claims against.
-/

/-! ## A167874.P6142435543360460949

`2*A007508(n+1)-1`
-/

namespace A167874.P6142435543360460949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007508 (n + 1) - 1

end

end A167874.P6142435543360460949

/-! ## A167874.P15567071335539344293

`A006880(n+1)-A129542(n+1)`
-/

namespace A167874.P15567071335539344293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A129542 (n + 1)

end

end A167874.P15567071335539344293

/-! ## A167874.P5642641562415613331

`∑[A006879(n+1)]-A129542(n+1)`
-/

namespace A167874.P5642641562415613331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A129542 (n + 1)

end

end A167874.P5642641562415613331

/-! ## A167874.P5543375356659770262

`A122121(A004277(n+1))-A129542(n+1)`
-/

namespace A167874.P5543375356659770262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (A004277 (n + 1)).toNat - A129542 (n + 1)

end

end A167874.P5543375356659770262

/-!
# A167875: One third of product plus sum of three consecutive nonnegative integers; a(n)=(n+1)(n^2+2n+3)/3.

The programs for A167875, the canonical program `A167875.P13889355568165713195` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167875 has offset 0).

The definition of A167875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n²+2*n+3)/3` (program `A167875.P4554059175525639900`, by `A167875.P4554059175525639900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167875.P4554059175525639900

`(n+1)*(n²+2*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167875.P4554059175525639900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n ^ 2 + 2 * n + 3 : ℚ) / 3)

end

end A167875.P4554059175525639900

namespace A167875

/-- `(n+1)*(n²+2*n+3)/3` -/
def P4554059175525639900.Spec : Prop :=
  ∀ n, P4554059175525639900.a n = (A167875 n : ℚ)

theorem P4554059175525639900.correct : P4554059175525639900.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A167875, Nat.add_sub_cancel, A167875.P4554059175525639900.a, A167875.P13889355568165713195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A167875, Nat.add_sub_cancel, A167875.P4554059175525639900.a, A167875.P13889355568165713195.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167875

/-! ## A167875.P13889355568165713195

`3*a(n-1)-3*a(n-2)+a(n-3)+2` with `a(0)=1, a(1)=4, a(2)=11`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167875

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+2` -/
def P13889355568165713195.Spec : Prop :=
  ∀ n, P13889355568165713195.a n = A167875 n

theorem P13889355568165713195.correct : P13889355568165713195.Spec := by
  intro n
  simp only [A167875]

end A167875

/-! ## A167875.P2757064063235496918

`∑[cot(abs(Δ[acot(n)]))]`
-/

namespace A167875.P2757064063235496918
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot |f2 (n + 1) - f2 n|

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167875.P2757064063235496918

namespace A167875

/-- `∑[cot(abs(Δ[acot(n)]))]` -/
def P2757064063235496918.Spec : Prop :=
  ∀ n, P2757064063235496918.a n = (A167875 n : ℝ)

end A167875

/-! ## A167875.P427782523398517369

`∑[cot(Δ[acot(-n)])]`
-/

namespace A167875.P427782523398517369
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (-(n : ℤ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (f2 (n + 1) - f2 n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167875.P427782523398517369

namespace A167875

/-- `∑[cot(Δ[acot(-n)])]` -/
def P427782523398517369.Spec : Prop :=
  ∀ n, P427782523398517369.a n = (A167875 n : ℝ)

end A167875

/-! ## A167875.P15245728194959655787

`∑[round(cot(Δ[atan(n)]))]`
-/

namespace A167875.P15245728194959655787
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167875.P15245728194959655787

namespace A167875

/-- `∑[round(cot(Δ[atan(n)]))]` -/
def P15245728194959655787.Spec : Prop :=
  ∀ n, P15245728194959655787.a n = A167875 n

end A167875

/-! ## A167875.P14306770490669073163

`∑[or(2, ∑[4*n])]/2`
-/

namespace A167875.P14306770490669073163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A167875.P14306770490669073163

namespace A167875

/-- `∑[or(2, ∑[4*n])]/2` -/
def P14306770490669073163.Spec : Prop :=
  ∀ n, P14306770490669073163.a n = (A167875 n : ℚ)

end A167875

/-! ## A167875.P5694378750522528414

`∑[n²]+C(n+2, 2)`
-/

namespace A167875.P5694378750522528414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 2) 2

end

end A167875.P5694378750522528414

namespace A167875

/-- `∑[n²]+C(n+2, 2)` -/
def P5694378750522528414.Spec : Prop :=
  ∀ n, (P5694378750522528414.a n : ℤ) = A167875 n

end A167875

/-! ## A167875.P13561514745792169537

`∑[or(1, (n+1)²-n)]`
-/

namespace A167875.P13561514745792169537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n + 1) ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167875.P13561514745792169537

namespace A167875

/-- `∑[or(1, (n+1)²-n)]` -/
def P13561514745792169537.Spec : Prop :=
  ∀ n, P13561514745792169537.a n = A167875 n

end A167875

/-! ## A167875.P9690600796516308786

`-∑[n-record[(n-1)²]]`
-/

namespace A167875.P9690600796516308786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167875.P9690600796516308786

namespace A167875

/-- `-∑[n-record[(n-1)²]]` -/
def P9690600796516308786.Spec : Prop :=
  ∀ n, P9690600796516308786.a n = A167875 n

end A167875

/-! ## A167875.P3957536947772240995

`∑[record[(n-1)²]]-∑[n]`
-/

namespace A167875.P3957536947772240995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A167875.P3957536947772240995

namespace A167875

/-- `∑[record[(n-1)²]]-∑[n]` -/
def P3957536947772240995.Spec : Prop :=
  ∀ n, P3957536947772240995.a n = A167875 n

end A167875

/-! ## A167875.P16578571551899847702

`∑[∑[round(2/acot(n))]]-n`
-/

namespace A167875.P16578571551899847702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A167875.P16578571551899847702

namespace A167875

/-- `∑[∑[round(2/acot(n))]]-n` -/
def P16578571551899847702.Spec : Prop :=
  ∀ n, P16578571551899847702.a n = A167875 n

end A167875

/-! ## A167875.P16141279439923046219

`∑[lcm(n, n+1)]+1+n`
-/

namespace A167875.P16141279439923046219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A167875.P16141279439923046219

namespace A167875

/-- `∑[lcm(n, n+1)]+1+n` -/
def P16141279439923046219.Spec : Prop :=
  ∀ n, (P16141279439923046219.a n : ℤ) = A167875 n

end A167875

/-! ## A167875.P11140128587841801919

`∑[xor(2, n²)]+∑[n-1]`
-/

namespace A167875.P11140128587841801919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A167875.P11140128587841801919

namespace A167875

/-- `∑[xor(2, n²)]+∑[n-1]` -/
def P11140128587841801919.Spec : Prop :=
  ∀ n, P11140128587841801919.a n = A167875 n

end A167875

/-! ## A167875.P12265815956945170264

`or(∑[n²+1+n], char[2])`
-/

namespace A167875.P12265815956945170264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f2 j = n then 1 else 0)

end

end A167875.P12265815956945170264

namespace A167875

/-- `or(∑[n²+1+n], char[2])` -/
def P12265815956945170264.Spec : Prop :=
  ∀ n, (P12265815956945170264.a n : ℤ) = A167875 n

end A167875

/-! ## A167875.P15179327309202307547

`∑[∑[n+1]]+∑[C(n, 2)]`
-/

namespace A167875.P15179327309202307547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A167875.P15179327309202307547

namespace A167875

/-- `∑[∑[n+1]]+∑[C(n, 2)]` -/
def P15179327309202307547.Spec : Prop :=
  ∀ n, (P15179327309202307547.a n : ℤ) = A167875 n

end A167875

/-! ## A167875.P13825468449143854020

`∑[∑[or(1, 2*n)]]-∑[n]`
-/

namespace A167875.P13825468449143854020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A167875.P13825468449143854020

namespace A167875

/-- `∑[∑[or(1, 2*n)]]-∑[n]` -/
def P13825468449143854020.Spec : Prop :=
  ∀ n, P13825468449143854020.a n = A167875 n

end A167875

/-! ## A167875.P788510778751886460

`∑[∑[xor(1, 2*n)]]-∑[n]`
-/

namespace A167875.P788510778751886460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A167875.P788510778751886460

namespace A167875

/-- `∑[∑[xor(1, 2*n)]]-∑[n]` -/
def P788510778751886460.Spec : Prop :=
  ∀ n, P788510778751886460.a n = A167875 n

end A167875

/-! ## A167875.P16347852012364740519

`∑[ceil(n/acot(n+1))]+1`
-/

namespace A167875.P16347852012364740519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167875.P16347852012364740519

namespace A167875

/-- `∑[ceil(n/acot(n+1))]+1` -/
def P16347852012364740519.Spec : Prop :=
  ∀ n, P16347852012364740519.a n = A167875 n

end A167875

/-! ## A167875.P17540367953098795671

`∑[∑[comp[or(1, n)]]]+n+1`
-/

namespace A167875.P17540367953098795671
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A167875.P17540367953098795671

namespace A167875

/-- `∑[∑[comp[or(1, n)]]]+n+1` -/
def P17540367953098795671.Spec : Prop :=
  ∀ n, (P17540367953098795671.a n : ℤ) = A167875 n

end A167875

/-!
# A167876: A000004 preceded by 1, 3, 4, 2.

The programs for A167876, the canonical program `A167876.P390069832905807587` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167876 has offset 0).

The definition of A167876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167876.P390069832905807587

`floor(∏[cos(n-1)+1])`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167876

/-- `floor(∏[cos(n-1)+1])` -/
def P390069832905807587.Spec : Prop :=
  ∀ n, P390069832905807587.a n = A167876 n

theorem P390069832905807587.correct : P390069832905807587.Spec := by
  intro n
  simp only [A167876]

end A167876

/-!
# A167877: Largest m<=n such that no carry occurs when adding m to n in ternary arithmetic.

The programs for A167877, the canonical program `A167877.P15007258767365749686` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167877 has offset 0).

The definition of A167877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167877.P9352888738872934632

`A167878(n)-n`
-/

namespace A167877.P9352888738872934632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n - (n : ℤ)

end

end A167877.P9352888738872934632

namespace A167877

/-- `A167878(n)-n` -/
def P9352888738872934632.Spec : Prop :=
  ∀ n, P9352888738872934632.a n = A167877 n

end A167877

/-! ## A167877.P15007258767365749686

`A005823(A081611(n))-n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A167877

/-- `A005823(A081611(n))-n` -/
def P15007258767365749686.Spec : Prop :=
  ∀ n, P15007258767365749686.a n = A167877 n

theorem P15007258767365749686.correct : P15007258767365749686.Spec := by
  intro n
  simp only [A167877]

end A167877

/-! ## A167877.P16837850625742147579

`abs(A167878(n)+A001489(n))`
-/

namespace A167877.P16837850625742147579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167878 n + A001489 n|

end

end A167877.P16837850625742147579

namespace A167877

/-- `abs(A167878(n)+A001489(n))` -/
def P16837850625742147579.Spec : Prop :=
  ∀ n, P16837850625742147579.a n = A167877 n

end A167877

/-! ## A167877.P15172164003098769006

`A005823(∑[A039966(n)])-n`
-/

namespace A167877.P15172164003098769006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A167877.P15172164003098769006

namespace A167877

/-- `A005823(∑[A039966(n)])-n` -/
def P15172164003098769006.Spec : Prop :=
  ∀ n, P15172164003098769006.a n = A167877 n

end A167877

/-! ## A167877.P17868015543937893887

`2*A005836(∑[A039966(n)])-n`
-/

namespace A167877.P17868015543937893887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A167877.P17868015543937893887

namespace A167877

/-- `2*A005836(∑[A039966(n)])-n` -/
def P17868015543937893887.Spec : Prop :=
  ∀ n, P17868015543937893887.a n = A167877 n

end A167877

/-! ## A167877.P2462242640445971111

`A005823(∑[A088917(2*n)])-n`
-/

namespace A167877.P2462242640445971111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A167877.P2462242640445971111

namespace A167877

/-- `A005823(∑[A088917(2*n)])-n` -/
def P2462242640445971111.Spec : Prop :=
  ∀ n, P2462242640445971111.a n = A167877 n

end A167877

/-! ## A167877.P1297988160044325524

`A005823(∑[char[A005836(n+1)]])-n`
-/

namespace A167877.P1297988160044325524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A167877.P1297988160044325524

namespace A167877

/-- `A005823(∑[char[A005836(n+1)]])-n` -/
def P1297988160044325524.Spec : Prop :=
  ∀ n, P1297988160044325524.a n = A167877 n

end A167877

/-! ## A167877.P17452472590166516025

`A035327(A035327(A167878(n))+n)`
-/

namespace A167877.P17452472590166516025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A035327 (A167878 n).toNat + (n : ℤ)).toNat

end

end A167877.P17452472590166516025

namespace A167877

/-- `A035327(A035327(A167878(n))+n)` -/
def P17452472590166516025.Spec : Prop :=
  ∀ n, P17452472590166516025.a n = A167877 n

end A167877

/-! ## A167877.P7011328080858195886

`A109613(A167878(n))%A000027(n+1)`
-/

namespace A167877.P7011328080858195886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109613 (A167878 n).toNat) (A000027 (n + 1))

end

end A167877.P7011328080858195886

namespace A167877

/-- `A109613(A167878(n))%A000027(n+1)` -/
def P7011328080858195886.Spec : Prop :=
  ∀ n, P7011328080858195886.a n = A167877 n

end A167877

/-! ## A167877.P1218208479749327910

`A005823(A061392(2*n+1))-n`
-/

namespace A167877.P1218208479749327910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A061392 (2 * n + 1)).toNat - (n : ℤ)

end

end A167877.P1218208479749327910

namespace A167877

/-- `A005823(A061392(2*n+1))-n` -/
def P1218208479749327910.Spec : Prop :=
  ∀ n, P1218208479749327910.a n = A167877 n

end A167877

/-!
# A167878: A167877(n) + n.

The programs for A167878, the canonical program `A167878.P4017670017708560408` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167878 has offset 0).

The definition of A167878 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167877, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167878.P4017670017708560408

`A167877(n)+n`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A167878

/-- `A167877(n)+n` -/
def P4017670017708560408.Spec : Prop :=
  ∀ n, P4017670017708560408.a n = A167878 n

theorem P4017670017708560408.correct : P4017670017708560408.Spec := by
  intro n
  simp only [A167878]

end A167878

/-! ## A167878.P4973461187608894172

`A005823(A081611(n))`
-/

namespace A167878.P4973461187608894172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A081611 n).toNat

end

end A167878.P4973461187608894172

namespace A167878

/-- `A005823(A081611(n))` -/
def P4973461187608894172.Spec : Prop :=
  ∀ n, P4973461187608894172.a n = A167878 n

end A167878

/-! ## A167878.P10092892349352914403

`A005823(∑[A039966(n)])`
-/

namespace A167878.P10092892349352914403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167878.P10092892349352914403

namespace A167878

/-- `A005823(∑[A039966(n)])` -/
def P10092892349352914403.Spec : Prop :=
  ∀ n, P10092892349352914403.a n = A167878 n

end A167878

/-! ## A167878.P3740546266142751915

`2*A005836(∑[A039966(n)])`
-/

namespace A167878.P3740546266142751915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167878.P3740546266142751915

namespace A167878

/-- `2*A005836(∑[A039966(n)])` -/
def P3740546266142751915.Spec : Prop :=
  ∀ n, P3740546266142751915.a n = A167878 n

end A167878

/-! ## A167878.P3783545673116110638

`A005823(∑[A088917(2*n)])`
-/

namespace A167878.P3783545673116110638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167878.P3783545673116110638

namespace A167878

/-- `A005823(∑[A088917(2*n)])` -/
def P3783545673116110638.Spec : Prop :=
  ∀ n, P3783545673116110638.a n = A167878 n

end A167878

/-! ## A167878.P5401289483397002041

`A005823(1-A081610(n)+n)`
-/

namespace A167878.P5401289483397002041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (1 - A081610 n + (n : ℤ)).toNat

end

end A167878.P5401289483397002041

namespace A167878

/-- `A005823(1-A081610(n)+n)` -/
def P5401289483397002041.Spec : Prop :=
  ∀ n, P5401289483397002041.a n = A167878 n

end A167878

/-! ## A167878.P6052613207275606666

`A005823(1-(A081610(n)-n))`
-/

namespace A167878.P6052613207275606666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (1 - (A081610 n - (n : ℤ))).toNat

end

end A167878.P6052613207275606666

namespace A167878

/-- `A005823(1-(A081610(n)-n))` -/
def P6052613207275606666.Spec : Prop :=
  ∀ n, P6052613207275606666.a n = A167878 n

end A167878

/-! ## A167878.P16143838277564333686

`A005823(∑[char[A005836(n+1)]])`
-/

namespace A167878.P16143838277564333686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167878.P16143838277564333686

namespace A167878

/-- `A005823(∑[char[A005836(n+1)]])` -/
def P16143838277564333686.Spec : Prop :=
  ∀ n, P16143838277564333686.a n = A167878 n

end A167878

/-! ## A167878.P5189645065079933868

`A005843(n)-(n-A167877(n))`
-/

namespace A167878.P5189645065079933868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A167877 n)

end

end A167878.P5189645065079933868

namespace A167878

/-- `A005843(n)-(n-A167877(n))` -/
def P5189645065079933868.Spec : Prop :=
  ∀ n, P5189645065079933868.a n = A167878 n

end A167878

/-! ## A167878.P1394930618550578528

`2*A005836(1-A081610(n)+n)`
-/

namespace A167878.P1394930618550578528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (1 - A081610 n + (n : ℤ)).toNat

end

end A167878.P1394930618550578528

namespace A167878

/-- `2*A005836(1-A081610(n)+n)` -/
def P1394930618550578528.Spec : Prop :=
  ∀ n, P1394930618550578528.a n = A167878 n

end A167878

/-! ## A167878.P9119197089142142649

`2*A005836(∑[char[A005836(n+1)]])`
-/

namespace A167878.P9119197089142142649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167878.P9119197089142142649

namespace A167878

/-- `2*A005836(∑[char[A005836(n+1)]])` -/
def P9119197089142142649.Spec : Prop :=
  ∀ n, P9119197089142142649.a n = A167878 n

end A167878

/-! ## A167878.P8936951600525527202

`A167832(n)-(A167831(n)-A167877(n))`
-/

namespace A167878.P8936951600525527202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167832 n - (A167831 n - A167877 n)

end

end A167878.P8936951600525527202

namespace A167878

/-- `A167832(n)-(A167831(n)-A167877(n))` -/
def P8936951600525527202.Spec : Prop :=
  ∀ n, P8936951600525527202.a n = A167878 n

end A167878

/-! ## A167878.P11625371689722463081

`n-A001057(2*A167877(n))`
-/

namespace A167878.P11625371689722463081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A167877 n).toNat

end

end A167878.P11625371689722463081

namespace A167878

/-- `n-A001057(2*A167877(n))` -/
def P11625371689722463081.Spec : Prop :=
  ∀ n, P11625371689722463081.a n = A167878 n

end A167878

/-! ## A167878.P13244873897450937339

`A357616(A005836(A081611(A357616(A357616(n)))))`
-/

namespace A167878.P13244873897450937339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A005836 (A081611 (A357616 (A357616 n).toNat).toNat).toNat).toNat

end

end A167878.P13244873897450937339

namespace A167878

/-- `A357616(A005836(A081611(A357616(A357616(n)))))` -/
def P13244873897450937339.Spec : Prop :=
  ∀ n, P13244873897450937339.a n = A167878 n

end A167878

/-! ## A167878.P10416698847842767835

`A005823(2*n+1-A081609(2*n))`
-/

namespace A167878.P10416698847842767835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 ((2 * n + 1 : ℤ) - A081609 (2 * n)).toNat

end

end A167878.P10416698847842767835

namespace A167878

/-- `A005823(2*n+1-A081609(2*n))` -/
def P10416698847842767835.Spec : Prop :=
  ∀ n, P10416698847842767835.a n = A167878 n

end A167878

/-! ## A167878.P8208690065750643756

`A005823(A061392(2*n+1))`
-/

namespace A167878.P8208690065750643756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A061392 (2 * n + 1)).toNat

end

end A167878.P8208690065750643756

namespace A167878

/-- `A005823(A061392(2*n+1))` -/
def P8208690065750643756.Spec : Prop :=
  ∀ n, P8208690065750643756.a n = A167878 n

end A167878

/-! ## A167878.P18365815923755089265

`2*A005836(A131996(3*n+1))`
-/

namespace A167878.P18365815923755089265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (A131996 (3 * n + 1)).toNat

end

end A167878.P18365815923755089265

namespace A167878

/-- `2*A005836(A131996(3*n+1))` -/
def P18365815923755089265.Spec : Prop :=
  ∀ n, P18365815923755089265.a n = A167878 n

end A167878

/-!
# A167881: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^16 = I.

The programs for A167881, there is no canonical definition to state claims against.
-/

/-! ## A167881.P13738718097456535257

`Δ[Δ[A000027(A168728(n))]]`
-/

namespace A167881.P13738718097456535257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A168728 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167881.P13738718097456535257

/-! ## A167881.P7889214077733873940

`A305614(A185238(2*(n+2)))+or(2^n, floor(2^(n-1)))`
-/

namespace A167881.P7889214077733873940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (A185238 (2 * (n + 2))).toNat + Int.lor (2 ^ n : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A167881.P7889214077733873940

/-! ## A167881.P6125436186742749563

`or(2^n, floor(2^(n-1)))-A136157(A340597(3*n+5))`
-/

namespace A167881.P6125436186742749563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A136157 (A340597 (3 * n + 5)).toNat

end

end A167881.P6125436186742749563

/-! ## A167881.P8351047728265009799

`A003945(n)-A025438(A184955(n))`
-/

namespace A167881.P8351047728265009799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A025438 (A184955 n).toNat

end

end A167881.P8351047728265009799

/-! ## A167881.P7650279223000367023

`A003945(n)-A068932(A185236(n))`
-/

namespace A167881.P7650279223000367023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A068932 (A185236 n).toNat

end

end A167881.P7650279223000367023

/-!
# A167882: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^16 = I.

The programs for A167882, there is no canonical definition to state claims against.
-/

/-! ## A167882.P8577405679473908291

`xor(floor(4*3^(n-1)), A185255(comp[2*n+3]))`
-/

namespace A167882.P8577405679473908291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A185255 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A167882.P8577405679473908291

/-! ## A167882.P17193157071201435272

`floor(4*3^(n-1))-A025437(A347811(n))`
-/

namespace A167882.P17193157071201435272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A025437 (A347811 n).toNat

end

end A167882.P17193157071201435272

/-! ## A167882.P6137605396099933148

`floor(4*3^(n-1))-A185236(A258829(n))`
-/

namespace A167882.P6137605396099933148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185236 (A258829 n).toNat

end

end A167882.P6137605396099933148

/-! ## A167882.P11360231478542079050

`A003946(n)-A327802(A347811(n))`
-/

namespace A167882.P11360231478542079050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A327802 (A347811 n).toNat

end

end A167882.P11360231478542079050

/-!
# A167883: Triangle read by rows: row n gives coefficients of expansion of polynomial p(k,n) in powers of k, defined by p(k, 0) = 1, p(k, 1) = 1+2*k; for n>1, p(k,n) = If[Mod[n, 2] == 0, (1 + 2*k)*p(k, n - 1) + n*Binomial[n + 1, n - 1]*k*(k + 1)*p(k, n - 2), (1 + 2*k)*(1 + 3*(p(k, n - 1) - 1))].

The programs for A167883, there is no canonical definition to state claims against.
-/

/-! ## A167883.P16112269181376287219

`A001936(A063666(n+3)%A059575(n+1))`
-/

namespace A167883.P16112269181376287219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001936 (Int.tmod (A063666 (n + 3)) (A059575 (n + 1))).toNat

end

end A167883.P16112269181376287219

/-!
# A167884: Triangle read by rows: T(n,k) given by T(n, 1) = T(n,n) = 1, otherwise T(n, k) = (m*n-m*k+1)*T(n-1,k-1) + (m*k-m+1)*T(n-1,k), where m = 8.

The programs for A167884, there is no canonical definition to state claims against.
-/

/-! ## A167884.P9211684332364934947

`A054861(4*A022173(n))`
-/

namespace A167884.P9211684332364934947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (4 * A022173 n).toNat

end

end A167884.P9211684332364934947

/-! ## A167884.P10932299349884149649

`A086670(3^A086620(n))`
-/

namespace A167884.P10932299349884149649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086670 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A086620 n : ℤ))).toNat

end

end A167884.P10932299349884149649

/-! ## A167884.P3285316179039010417

`A086670(3^A108359(n))`
-/

namespace A167884.P3285316179039010417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086670 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A108359 n : ℤ))).toNat

end

end A167884.P3285316179039010417

/-! ## A167884.P13776507809654814075

`A211779(3^A008288(n))`
-/

namespace A167884.P13776507809654814075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A008288 n : ℤ))).toNat

end

end A167884.P13776507809654814075

/-! ## A167884.P4468831994310077039

`A211779(3^A109128(n))`
-/

namespace A167884.P4468831994310077039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A109128 n : ℤ))).toNat

end

end A167884.P4468831994310077039

/-!
# A167885: n-th single or isolated number*n-th non-single or nonisolated number.

The programs for A167885, the canonical program `A167885.P2592452161159091730` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167885 has offset 1).

The definition of A167885 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167885.P2592452161159091730

`A167706(n+1)*A167707(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A167885

/-- `A167706(n+1)*A167707(n+1)` -/
def P2592452161159091730.Spec : Prop :=
  ∀ n, P2592452161159091730.a n = A167885 (n + 1)

theorem P2592452161159091730.correct : P2592452161159091730.Spec := by
  intro n
  simp only [A167885, Nat.add_sub_cancel]

end A167885

/-! ## A167885.P13008506258783075184

`comp[A167920(n+1)]*A167706(n+1)`
-/

namespace A167885.P13008506258783075184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A167706 (n + 1)

end

end A167885.P13008506258783075184

namespace A167885

/-- `comp[A167920(n+1)]*A167706(n+1)` -/
def P13008506258783075184.Spec : Prop :=
  ∀ n, P13008506258783075184.a n = A167885 (n + 1)

end A167885

/-! ## A167885.P11859698305268360929

`(A167921(n+1)+1)*A167707(n+1)`
-/

namespace A167885.P11859698305268360929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167921 (n + 1) + 1) * A167707 (n + 1)

end

end A167885.P11859698305268360929

namespace A167885

/-- `(A167921(n+1)+1)*A167707(n+1)` -/
def P11859698305268360929.Spec : Prop :=
  ∀ n, P11859698305268360929.a n = A167885 (n + 1)

end A167885

/-! ## A167885.P12898696063623688002

`(A168496(n+1)-1)*A167706(n+1)`
-/

namespace A167885.P12898696063623688002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168496 (n + 1) - 1) * A167706 (n + 1)

end

end A167885.P12898696063623688002

namespace A167885

/-- `(A168496(n+1)-1)*A167706(n+1)` -/
def P12898696063623688002.Spec : Prop :=
  ∀ n, P12898696063623688002.a n = A167885 (n + 1)

end A167885

/-! ## A167885.P10541947545846785784

`(A167921(n+1)+1)*comp[A167706(n+1)]`
-/

namespace A167885.P10541947545846785784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167921 (n + 1) + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A167885.P10541947545846785784

namespace A167885

/-- `(A167921(n+1)+1)*comp[A167706(n+1)]` -/
def P10541947545846785784.Spec : Prop :=
  ∀ n, P10541947545846785784.a n = A167885 (n + 1)

end A167885

/-!
# A167886: n-th single or isolated number minus n-th non-single or nonisolated number.

The programs for A167886, the canonical program `A167886.P5242547505130811716` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167886 has offset 1).

The definition of A167886 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167886.P5242547505130811716

`A167706(n+1)-A167707(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A167886

/-- `A167706(n+1)-A167707(n+1)` -/
def P5242547505130811716.Spec : Prop :=
  ∀ n, P5242547505130811716.a n = A167886 (n + 1)

theorem P5242547505130811716.correct : P5242547505130811716.Spec := by
  intro n
  simp only [A167886, Nat.add_sub_cancel]

end A167886

/-! ## A167886.P17732687781469898841

`A167706(n+1)-comp[A167920(n+1)]`
-/

namespace A167886.P17732687781469898841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A167886.P17732687781469898841

namespace A167886

/-- `A167706(n+1)-comp[A167920(n+1)]` -/
def P17732687781469898841.Spec : Prop :=
  ∀ n, P17732687781469898841.a n = A167886 (n + 1)

end A167886

/-! ## A167886.P6813874722735576429

`A167706(n+1)+1-A168496(n+1)`
-/

namespace A167886.P6813874722735576429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) + (1 - A168496 (n + 1))

end

end A167886.P6813874722735576429

namespace A167886

/-- `A167706(n+1)+1-A168496(n+1)` -/
def P6813874722735576429.Spec : Prop :=
  ∀ n, P6813874722735576429.a n = A167886 (n + 1)

end A167886

/-! ## A167886.P10927857288763476119

`A167706(n+1)-comp[A167921(n+1)+1]`
-/

namespace A167886.P10927857288763476119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167921 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A167886.P10927857288763476119

namespace A167886

/-- `A167706(n+1)-comp[A167921(n+1)+1]` -/
def P10927857288763476119.Spec : Prop :=
  ∀ n, P10927857288763476119.a n = A167886 (n + 1)

end A167886

/-! ## A167886.P3218307123039144683

`∑[A167909(round(acot(n)+n))]-A167707(n+1)`
-/

namespace A167886.P3218307123039144683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167909 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A167707 (n + 1)

end

end A167886.P3218307123039144683

namespace A167886

/-- `∑[A167909(round(acot(n)+n))]-A167707(n+1)` -/
def P3218307123039144683.Spec : Prop :=
  ∀ n, P3218307123039144683.a n = A167886 (n + 1)

end A167886

/-! ## A167886.P8658348152064535922

`n+1+A167706(n+1)-A168045(n+1)`
-/

namespace A167886.P8658348152064535922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A167706 (n + 1) - A168045 (n + 1))

end

end A167886.P8658348152064535922

namespace A167886

/-- `n+1+A167706(n+1)-A168045(n+1)` -/
def P8658348152064535922.Spec : Prop :=
  ∀ n, P8658348152064535922.a n = A167886 (n + 1)

end A167886

/-! ## A167886.P506293658002558287

`A168343(n+1)+n+1-A167707(n+1)`
-/

namespace A167886.P506293658002558287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168343 (n + 1) + ((n + 1 : ℤ) - A167707 (n + 1))

end

end A167886.P506293658002558287

namespace A167886

/-- `A168343(n+1)+n+1-A167707(n+1)` -/
def P506293658002558287.Spec : Prop :=
  ∀ n, P506293658002558287.a n = A167886 (n + 1)

end A167886

/-! ## A167886.P15004252444321003499

`∑[A167909(A028310(n))]-A167707(n+1)`
-/

namespace A167886.P15004252444321003499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167909 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A167707 (n + 1)

end

end A167886.P15004252444321003499

namespace A167886

/-- `∑[A167909(A028310(n))]-A167707(n+1)` -/
def P15004252444321003499.Spec : Prop :=
  ∀ n, P15004252444321003499.a n = A167886 (n + 1)

end A167886

/-! ## A167886.P17799097818949629230

`A020725(A167706(n+1)-A168496(n+1))`
-/

namespace A167886.P17799097818949629230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A167706 (n + 1) - A168496 (n + 1)).toNat

end

end A167886.P17799097818949629230

namespace A167886

/-- `A020725(A167706(n+1)-A168496(n+1))` -/
def P17799097818949629230.Spec : Prop :=
  ∀ n, P17799097818949629230.a n = A167886 (n + 1)

end A167886

/-! ## A167886.P11098006281362954726

`∑[A167909(A233583(n+1))]-A167707(n+1)`
-/

namespace A167886.P11098006281362954726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167909 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A167707 (n + 1)

end

end A167886.P11098006281362954726

namespace A167886

/-- `∑[A167909(A233583(n+1))]-A167707(n+1)` -/
def P11098006281362954726.Spec : Prop :=
  ∀ n, P11098006281362954726.a n = A167886 (n + 1)

end A167886

/-!
# A167887: n-th single or isolated number plus n-th non-single or nonisolated number.

The programs for A167887, the canonical program `A167887.P6811191950323054762` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167887 has offset 1).

The definition of A167887 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167887.P6811191950323054762

`A167706(n+1)+A167707(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A167887

/-- `A167706(n+1)+A167707(n+1)` -/
def P6811191950323054762.Spec : Prop :=
  ∀ n, P6811191950323054762.a n = A167887 (n + 1)

theorem P6811191950323054762.correct : P6811191950323054762.Spec := by
  intro n
  simp only [A167887, Nat.add_sub_cancel]

end A167887

/-! ## A167887.P960269944846384770

`A168343(n+1)+A168045(n+1)`
-/

namespace A167887.P960269944846384770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168343 (n + 1) + A168045 (n + 1)

end

end A167887.P960269944846384770

namespace A167887

/-- `A168343(n+1)+A168045(n+1)` -/
def P960269944846384770.Spec : Prop :=
  ∀ n, P960269944846384770.a n = A167887 (n + 1)

end A167887

/-! ## A167887.P16812840500713441942

`A168496(n+1)+A167921(n+1)`
-/

namespace A167887.P16812840500713441942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168496 (n + 1) + A167921 (n + 1)

end

end A167887.P16812840500713441942

namespace A167887

/-- `A168496(n+1)+A167921(n+1)` -/
def P16812840500713441942.Spec : Prop :=
  ∀ n, P16812840500713441942.a n = A167887 (n + 1)

end A167887

/-! ## A167887.P8399121832634040043

`A168249(n+1)+A168241(n+1)`
-/

namespace A167887.P8399121832634040043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168249 (n + 1) + A168241 (n + 1)

end

end A167887.P8399121832634040043

namespace A167887

/-- `A168249(n+1)+A168241(n+1)` -/
def P8399121832634040043.Spec : Prop :=
  ∀ n, P8399121832634040043.a n = A167887 (n + 1)

end A167887

/-! ## A167887.P12507291328857083031

`A167706(n+1)+comp[A167920(n+1)]`
-/

namespace A167887.P12507291328857083031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A167887.P12507291328857083031

namespace A167887

/-- `A167706(n+1)+comp[A167920(n+1)]` -/
def P12507291328857083031.Spec : Prop :=
  ∀ n, P12507291328857083031.a n = A167887 (n + 1)

end A167887

/-! ## A167887.P2471711761664621742

`A167707(n+1)+A167921(n+1)+1`
-/

namespace A167887.P2471711761664621742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1) + (A167921 (n + 1) + 1)

end

end A167887.P2471711761664621742

namespace A167887

/-- `A167707(n+1)+A167921(n+1)+1` -/
def P2471711761664621742.Spec : Prop :=
  ∀ n, P2471711761664621742.a n = A167887 (n + 1)

end A167887

/-! ## A167887.P10438307847088445639

`A167706(n+1)+A168496(n+1)-1`
-/

namespace A167887.P10438307847088445639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) + (A168496 (n + 1) - 1)

end

end A167887.P10438307847088445639

namespace A167887

/-- `A167706(n+1)+A168496(n+1)-1` -/
def P10438307847088445639.Spec : Prop :=
  ∀ n, P10438307847088445639.a n = A167887 (n + 1)

end A167887

/-! ## A167887.P6920197298564073443

`A167886(n+1)+2*A167707(n+1)`
-/

namespace A167887.P6920197298564073443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167886 (n + 1) + 2 * A167707 (n + 1)

end

end A167887.P6920197298564073443

namespace A167887

/-- `A167886(n+1)+2*A167707(n+1)` -/
def P6920197298564073443.Spec : Prop :=
  ∀ n, P6920197298564073443.a n = A167887 (n + 1)

end A167887

/-! ## A167887.P290833265188122768

`2*A167706(n+1)-A167886(n+1)`
-/

namespace A167887.P290833265188122768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167706 (n + 1) - A167886 (n + 1)

end

end A167887.P290833265188122768

namespace A167887

/-- `2*A167706(n+1)-A167886(n+1)` -/
def P290833265188122768.Spec : Prop :=
  ∀ n, P290833265188122768.a n = A167887 (n + 1)

end A167887

/-! ## A167887.P6323893295598473592

`A167706(n+1)+comp[A167921(n+1)+1]`
-/

namespace A167887.P6323893295598473592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167921 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A167887.P6323893295598473592

namespace A167887

/-- `A167706(n+1)+comp[A167921(n+1)+1]` -/
def P6323893295598473592.Spec : Prop :=
  ∀ n, P6323893295598473592.a n = A167887 (n + 1)

end A167887

/-!
# A167888: n-th single or isolated number^n-th non-single or nonisolated number.

The programs for A167888, the canonical program `A167888.P4384555184533195508` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167888 has offset 1).

The definition of A167888 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167888.P4384555184533195508

`A167706(n+1)^A167707(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A167888

/-- `A167706(n+1)^A167707(n+1)` -/
def P4384555184533195508.Spec : Prop :=
  ∀ n, P4384555184533195508.a n = (A167888 (n + 1) : ℚ)

end A167888

/-! ## A167888.P15801434548611582464

`A167706(n+1)^(A168496(n+1)-1)`
-/

namespace A167888.P15801434548611582464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167706 (n + 1) : ℚ) ^ (A168496 (n + 1) - 1 : ℤ)

end

end A167888.P15801434548611582464

namespace A167888

/-- `A167706(n+1)^(A168496(n+1)-1)` -/
def P15801434548611582464.Spec : Prop :=
  ∀ n, P15801434548611582464.a n = (A167888 (n + 1) : ℚ)

end A167888

/-! ## A167888.P2294976392145087429

`∑[A167909(A028310(n))]^A167707(n+1)`
-/

namespace A167888.P2294976392145087429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167909 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A167707 (n + 1) : ℤ)

end

end A167888.P2294976392145087429

namespace A167888

/-- `∑[A167909(A028310(n))]^A167707(n+1)` -/
def P2294976392145087429.Spec : Prop :=
  ∀ n, P2294976392145087429.a n = (A167888 (n + 1) : ℚ)

end A167888

/-! ## A167888.P11537856210903526167

`A020725(A167921(n+1))^A167707(n+1)`
-/

namespace A167888.P11537856210903526167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (A167921 (n + 1)).toNat : ℚ) ^ (A167707 (n + 1) : ℤ)

end

end A167888.P11537856210903526167

namespace A167888

/-- `A020725(A167921(n+1))^A167707(n+1)` -/
def P11537856210903526167.Spec : Prop :=
  ∀ n, P11537856210903526167.a n = (A167888 (n + 1) : ℚ)

end A167888

/-! ## A167888.P4068898338537858703

`A167706(n+1)^A023443(A168496(n+1))`
-/

namespace A167888.P4068898338537858703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167706 (n + 1) : ℚ) ^ (A023443 (A168496 (n + 1)).toNat : ℤ)

end

end A167888.P4068898338537858703

namespace A167888

/-- `A167706(n+1)^A023443(A168496(n+1))` -/
def P4068898338537858703.Spec : Prop :=
  ∀ n, P4068898338537858703.a n = (A167888 (n + 1) : ℚ)

end A167888

/-!
# A167889: a(n) = (-7*3^n+(-3)^n+6*4^n) / 42.

The programs for A167889, the canonical program `A167889.P6518444982312637568` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167889 has offset 0).

The definition of A167889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167889.P6518444982312637568

`4*a(n-1)+9*a(n-2)-36*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167889

/-- `4*a(n-1)+9*a(n-2)-36*a(n-3)` -/
def P6518444982312637568.Spec : Prop :=
  ∀ n, P6518444982312637568.a n = A167889 n

theorem P6518444982312637568.correct : P6518444982312637568.Spec := by
  intro n
  simp only [A167889]

end A167889

/-! ## A167889.P17017902844397943126

`A287794(A081186(n)%A243221(n))`
-/

namespace A167889.P17017902844397943126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287794 (Int.tmod (A081186 n) (A243221 n)).toNat

end

end A167889.P17017902844397943126

namespace A167889

/-- `A287794(A081186(n)%A243221(n))` -/
def P17017902844397943126.Spec : Prop :=
  ∀ n, P17017902844397943126.a n = A167889 n

end A167889

/-! ## A167889.P18169245342552345614

`A002266(A297973(n+1)+A137422(n))`
-/

namespace A167889.P18169245342552345614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A297973 (n + 1) + A137422 n).toNat

end

end A167889.P18169245342552345614

namespace A167889

/-- `A002266(A297973(n+1)+A137422(n))` -/
def P18169245342552345614.Spec : Prop :=
  ∀ n, P18169245342552345614.a n = A167889 n

end A167889

/-!
# A167891: A000004 preceded by 1, 4, 2.

The programs for A167891, the canonical program `A167891.P5100086275300025096` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167891 has offset 0).

The definition of A167891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167891.P5100086275300025096

`char[2]+C(2, n)²`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A167891

/-- `char[2]+C(2, n)²` -/
def P5100086275300025096.Spec : Prop :=
  ∀ n, (P5100086275300025096.a n : ℤ) = A167891 n

theorem P5100086275300025096.correct : P5100086275300025096.Spec := by
  intro n
  simp only [A167891]

end A167891

/-!
# A167892: a(n) = Sum_{k=1..n} Catalan(k)^2.

The programs for A167892, there is no canonical definition to state claims against.
-/

/-! ## A167892.P10386662345915130534

`A094639(n+1)-1`
-/

namespace A167892.P10386662345915130534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094639 (n + 1) - 1

end

end A167892.P10386662345915130534

/-! ## A167892.P10239383835833131345

`∑[(C(2*(n+1), n)/(n+1))²]`
-/

namespace A167892.P10239383835833131345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * (n + 1)) n : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167892.P10239383835833131345

/-! ## A167892.P15203203686891747669

`∑[∏[(2*(2*n+1)/(n+2))²]]`
-/

namespace A167892.P15203203686891747669
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167892.P15203203686891747669

/-! ## A167892.P1508187733088940019

`∑[record[A126120(n+3)²]]+1`
-/

namespace A167892.P1508187733088940019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167892.P1508187733088940019

/-! ## A167892.P12357606629251179717

`A001246(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A167892.P12357606629251179717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001246 (n + 1) + a (n - 1)

end

end A167892.P12357606629251179717

/-! ## A167892.P16814518565464201601

`a(n-1)+A000108(2*n+1-n)²` with `a(0)=1`
-/

namespace A167892.P16814518565464201601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000108 (2 * n + 1 - n) ^ 2

end

end A167892.P16814518565464201601

/-!
# A167893: a(n) = Sum_{k=1..n} Catalan(k)^3.

The programs for A167893, there is no canonical definition to state claims against.
-/

/-! ## A167893.P18436090944965367906

`∑[A033536(n+1)]`
-/

namespace A167893.P18436090944965367906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167893.P18436090944965367906

/-! ## A167893.P10735227391145552812

`∑[A067323(∑[n])^3]`
-/

namespace A167893.P10735227391145552812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167893.P10735227391145552812

/-! ## A167893.P7147602495674867793

`∑[∑[A071724(n)]^3]`
-/

namespace A167893.P7147602495674867793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167893.P7147602495674867793

/-! ## A167893.P13363928740949506837

`∑[Δ[A014137(n)]^3]`
-/

namespace A167893.P13363928740949506837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167893.P13363928740949506837

/-! ## A167893.P4432485767253695834

`∑[A000108(n+1)^3]`
-/

namespace A167893.P4432485767253695834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167893.P4432485767253695834

/-! ## A167893.P7385412541621849060

`∑[A120588(n+2)^3]`
-/

namespace A167893.P7385412541621849060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167893.P7385412541621849060

/-! ## A167893.P10539124526152053579

`∑[A026008(2*n)^3]`
-/

namespace A167893.P10539124526152053579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167893.P10539124526152053579

/-! ## A167893.P5397906885330185937

`∑[A008313((n+1)²)^3]`
-/

namespace A167893.P5397906885330185937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 ((n + 1) ^ 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167893.P5397906885330185937

/-! ## A167893.P9234695024321046548

`∑[A090452((n+1)²)^3]`
-/

namespace A167893.P9234695024321046548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090452 ((n + 1) ^ 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167893.P9234695024321046548

/-! ## A167893.P17447429945807745258

`∑[A172414((n+1)²)^3]`
-/

namespace A167893.P17447429945807745258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172414 ((n + 1) ^ 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167893.P17447429945807745258

/-!
# A167894: Expansion of g.f.: 1/(Sum_{k >= 0} k!*x^k).

The programs for A167894, there is no canonical definition to state claims against.
-/

/-! ## A167894.P12109292285382219414

`(-1)^n*A158882(n)`
-/

namespace A167894.P12109292285382219414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A158882 n

end

end A167894.P12109292285382219414

/-! ## A167894.P6930617056236654932

`A003319(n)/(abs(1-n)-n)`
-/

namespace A167894.P6930617056236654932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003319 n : ℚ) / (|1 - (n : ℤ)| - (n : ℤ) : ℚ)

end

end A167894.P6930617056236654932

/-! ## A167894.P10906830105882519782

`A000038(n)-abs(A158882(n))`
-/

namespace A167894.P10906830105882519782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - |A158882 n|

end

end A167894.P10906830105882519782

/-! ## A167894.P8146241037130796615

`A003319(n)*A153881(n+1)`
-/

namespace A167894.P8146241037130796615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 n * A153881 (n + 1)

end

end A167894.P8146241037130796615

/-! ## A167894.P15733400838774457076

`2*A000007(n)-A003319(n)`
-/

namespace A167894.P15733400838774457076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A003319 n

end

end A167894.P15733400838774457076

/-! ## A167894.P17311164333342735848

`A153881(n+1)-(A153881(n+2)+A003319(n))`
-/

namespace A167894.P17311164333342735848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) - (A153881 (n + 2) + A003319 n)

end

end A167894.P17311164333342735848

/-! ## A167894.P14205982194818339813

`A104984(∑[n])`
-/

namespace A167894.P14205982194818339813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104984 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167894.P14205982194818339813

/-!
# A167895: Primes in A175040.

The programs for A167895, there is no canonical definition to state claims against.
-/

/-! ## A167895.P12951804456978535353

`p?[A058933(A070552(n+1))]`
-/

namespace A167895.P12951804456978535353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A070552 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167895.P12951804456978535353

/-! ## A167895.P16442771750084503595

`p?[A174956(A001358(n+1)-1)]`
-/

namespace A167895.P16442771750084503595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A001358 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167895.P16442771750084503595

/-! ## A167895.P911827653033773188

`p?[A065516(n+1)*A131738(n)]`
-/

namespace A167895.P911827653033773188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1) * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167895.P911827653033773188

/-! ## A167895.P7583211425962622657

`p?[A072000(A070552(2*n+1-n))]`
-/

namespace A167895.P7583211425962622657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A070552 (2 * n + 1 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167895.P7583211425962622657

/-! ## A167895.P14282597571357641029

`A000040(eq[1, A065516(A008578(n+1))])`
-/

namespace A167895.P14282597571357641029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167895.P14282597571357641029

/-! ## A167895.P5947260664500570346

`p?[A000040(n+1)*A065516(A000040(n+1))]`
-/

namespace A167895.P5947260664500570346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A065516 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167895.P5947260664500570346

/-! ## A167895.P5043570494735532587

`p?[A000430(n+1)*A065516(A000430(n+1))]`
-/

namespace A167895.P5043570494735532587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1) * A065516 (A000430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167895.P5043570494735532587

/-! ## A167895.P11586189424972161639

`p?[A065091(n+1)*A065516(A065091(n+1))]`
-/

namespace A167895.P11586189424972161639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A065516 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167895.P11586189424972161639

/-! ## A167895.P2732260312950983451

`p?[A065516(A067747(n+1))*A067747(n+1)]`
-/

namespace A167895.P2732260312950983451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (A067747 (n + 1)).toNat * A067747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167895.P2732260312950983451

/-! ## A167895.P2238741809455268022

`p?[A065516(A129767(n+1))*A129767(n+1)]`
-/

namespace A167895.P2238741809455268022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (A129767 (n + 1)).toNat * A129767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167895.P2238741809455268022

/-!
# A167896: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^16 = I.

The programs for A167896, there is no canonical definition to state claims against.
-/

/-! ## A167896.P8788034983481775894

`floor(5*4^(n-1))-A185255(A004275(n))`
-/

namespace A167896.P8788034983481775894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A004275 n).toNat

end

end A167896.P8788034983481775894

/-! ## A167896.P17662855794021747355

`floor(5*4^(n-1))-A185255(A187582(n+1))`
-/

namespace A167896.P17662855794021747355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A187582 (n + 1)).toNat

end

end A167896.P17662855794021747355

/-! ## A167896.P754234560859462919

`or(4^n, floor(4^(n-1)))-A185255(A228295(n))`
-/

namespace A167896.P754234560859462919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A228295 n).toNat

end

end A167896.P754234560859462919

/-! ## A167896.P10722324463077426350

`or(4^n, floor(4^(n-1)))-A185255(A005349(n+1))`
-/

namespace A167896.P10722324463077426350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A005349 (n + 1)).toNat

end

end A167896.P10722324463077426350

/-! ## A167896.P7739661665853313753

`A003947(n)-A297876(A229345(n))`
-/

namespace A167896.P7739661665853313753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A297876 (A229345 n).toNat

end

end A167896.P7739661665853313753

