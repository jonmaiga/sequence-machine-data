import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A378001: a(n) is the (n-1)-th positive integer that is digitally balanced in base n.

The programs for A378001, there is no canonical definition to state claims against.
-/

/-! ## A378001.P14379698152577569531

`A061845(A241404(n+1))`
-/

namespace A378001.P14379698152577569531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061845 (A241404 (n + 1)).toNat

end

end A378001.P14379698152577569531

/-! ## A378001.P12244855570026970570

`A061845((A000142(n)+1)*(n+1))`
-/

namespace A378001.P12244855570026970570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061845 ((A000142 n + 1) * (n + 1 : ℤ)).toNat

end

end A378001.P12244855570026970570

/-!
# A378002: Achilles numbers that are products of primorials.

The programs for A378002, there is no canonical definition to state claims against.
-/

/-! ## A378002.P11397035142615071385

`∩[A025487(n+1), A377854(n+1)]`
-/

namespace A378002.P11397035142615071385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P11397035142615071385

/-! ## A378002.P12816733126913683340

`∩[A181800(n+1), A377854(n+1)]`
-/

namespace A378002.P12816733126913683340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P12816733126913683340

/-! ## A378002.P3458372618370703427

`∩[A363280(n+1), A377854(n+1)]`
-/

namespace A378002.P3458372618370703427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P3458372618370703427

/-! ## A378002.P9964977855463696745

`∩[A364710(n+1), A377854(n+1)]`
-/

namespace A378002.P9964977855463696745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P9964977855463696745

/-! ## A378002.P3303915141725088999

`∩[A364930(n+1), A377854(n+1)]`
-/

namespace A378002.P3303915141725088999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P3303915141725088999

/-! ## A378002.P7713067083712869235

`∩[A025487(n+1), A378859(n+1)]`
-/

namespace A378002.P7713067083712869235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P7713067083712869235

/-! ## A378002.P3434926441599425730

`∩[A181800(n+1), A378859(n+1)]`
-/

namespace A378002.P3434926441599425730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P3434926441599425730

/-! ## A378002.P537637868917741183

`∩[A363280(n+1), A378859(n+1)]`
-/

namespace A378002.P537637868917741183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P537637868917741183

/-! ## A378002.P4245321554990270687

`∩[A364710(n+1), A378859(n+1)]`
-/

namespace A378002.P4245321554990270687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P4245321554990270687

/-! ## A378002.P13849130170292294202

`∩[A364930(n+1), A378859(n+1)]`
-/

namespace A378002.P13849130170292294202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P13849130170292294202

/-! ## A378002.P15458494045639380848

`∩[A025487(n+1), A390952(n+1)]`
-/

namespace A378002.P15458494045639380848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P15458494045639380848

/-! ## A378002.P10214508801790372689

`∩[A181800(n+1), A390952(n+1)]`
-/

namespace A378002.P10214508801790372689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P10214508801790372689

/-! ## A378002.P7526579054576728412

`∩[A363280(n+1), A390952(n+1)]`
-/

namespace A378002.P7526579054576728412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P7526579054576728412

/-! ## A378002.P2250770720375956826

`∩[A364710(n+1), A390952(n+1)]`
-/

namespace A378002.P2250770720375956826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P2250770720375956826

/-! ## A378002.P17909213997491416429

`∩[A364930(n+1), A390952(n+1)]`
-/

namespace A378002.P17909213997491416429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P17909213997491416429

/-! ## A378002.P17882783584618558238

`∩[A025487(n+1), A052486(n+1)]`
-/

namespace A378002.P17882783584618558238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P17882783584618558238

/-! ## A378002.P10000131105469637378

`∩[A052486(n+1), A181800(n+1)]`
-/

namespace A378002.P10000131105469637378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P10000131105469637378

/-! ## A378002.P14144031263291272342

`∩[A052486(n+1), A363280(n+1)]`
-/

namespace A378002.P14144031263291272342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P14144031263291272342

/-! ## A378002.P577560253433998905

`∩[A052486(n+1), A364710(n+1)]`
-/

namespace A378002.P577560253433998905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P577560253433998905

/-! ## A378002.P3980870661897869142

`∩[A052486(n+1), A364930(n+1)]`
-/

namespace A378002.P3980870661897869142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378002.P3980870661897869142

/-!
# A378004: Number of winning positions of Gordon Hamilton's Jumping Frogs game with n single frogs, up to left-right symmetry.

The programs for A378004, there is no canonical definition to state claims against.
-/

/-! ## A378004.P8736574290220986698

`A071414(A149472(n+1))`
-/

namespace A378004.P8736574290220986698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071414 (A149472 (n + 1)).toNat

end

end A378004.P8736574290220986698

/-! ## A378004.P2322200323813085342

`A087437(A271827(n+1))`
-/

namespace A378004.P2322200323813085342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087437 (A271827 (n + 1)).toNat

end

end A378004.P2322200323813085342

/-! ## A378004.P14205409177657721615

`A087437(A298339(n+1))`
-/

namespace A378004.P14205409177657721615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087437 (A298339 (n + 1)).toNat

end

end A378004.P14205409177657721615

/-!
# A378005: Number of permutations (p(1),p(2),...,p(n)) of (1,2,...,n) such that p(i)-i is in {-2,4,5} for all i=1,...,n.

The programs for A378005, there is no canonical definition to state claims against.
-/

/-! ## A378005.P5037993564245990340

`A000217(A017847(n)%A129151(n))`
-/

namespace A378005.P5037993564245990340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A017847 n) (A129151 n)).toNat

end

end A378005.P5037993564245990340

/-! ## A378005.P13544595900942353910

`A357186(A017847(n)^4)`
-/

namespace A378005.P13544595900942353910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (A017847 n ^ 4).toNat

end

end A378005.P13544595900942353910

/-! ## A378005.P12268674085011390903

`A357186(A017847(n)²²)`
-/

namespace A378005.P12268674085011390903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 ((A017847 n ^ 2) ^ 2).toNat

end

end A378005.P12268674085011390903

/-! ## A378005.P10005860342986300554

`A000217(A017847(n)^A299321(n+2))`
-/

namespace A378005.P10005860342986300554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A017847 n : ℚ) ^ (A299321 (n + 2) : ℤ))).toNat

end

end A378005.P10005860342986300554

/-! ## A378005.P15917660079986903824

`A000217(A017847(n))%A126647(n+1)`
-/

namespace A378005.P15917660079986903824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A017847 n).toNat) (A126647 (n + 1))

end

end A378005.P15917660079986903824

/-!
# A378006: Square table read by descending antidiagonals: the k-th column has Dirichlet g.f. Product_{chi} L(chi,s), where chi runs through all Dirichlet characters modulo k.

The programs for A378006, there is no canonical definition to state claims against.
-/

/-! ## A378006.P15638877559082692311

`∏{p}[A233308(n), A278700(#)]`
-/

namespace A378006.P15638877559082692311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A278700 p

end

end A378006.P15638877559082692311

/-! ## A378006.P6542649613679222590

`A266342(A220738(n+1))`
-/

namespace A378006.P6542649613679222590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266342 (A220738 (n + 1)).toNat

end

end A378006.P6542649613679222590

/-! ## A378006.P3590023720384662886

`A113998(n+1)*A345422(A215870(n+1))`
-/

namespace A378006.P3590023720384662886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (n + 1) * A345422 (A215870 (n + 1)).toNat

end

end A378006.P3590023720384662886

/-! ## A378006.P17769365387310036172

`A113998(n+1)*A177704(A287532(n))`
-/

namespace A378006.P17769365387310036172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (n + 1) * A177704 (A287532 n).toNat

end

end A378006.P17769365387310036172

/-! ## A378006.P15553400544423302555

`A333157(n)%A265408(A168016(n+1))`
-/

namespace A378006.P15553400544423302555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333157 n) (A265408 (A168016 (n + 1)).toNat)

end

end A378006.P15553400544423302555

/-!
# A378008: a(n) = b(5*n+1), with the sequence {b(n)} having Dirichlet g.f. Product_{chi} L(chi,s), where chi runs through all Dirichlet characters modulo 5; 5th column of A378007.

The programs for A378008, there is no canonical definition to state claims against.
-/

/-! ## A378008.P9384833260724857112

`A378007(eq[2, A106356(n+3)])`
-/

namespace A378008.P9384833260724857112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A378008.P9384833260724857112

/-! ## A378008.P17773011408174023154

`A070430(A054445(3*n+2)*A095759(2*n))`
-/

namespace A378008.P17773011408174023154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070430 (A054445 (3 * n + 2) * A095759 (2 * n)).toNat

end

end A378008.P17773011408174023154

/-! ## A378008.P4846282222771217955

`and(gcd(2, ∏{p}[n, #])², A083960(3*n+1))`
-/

namespace A378008.P4846282222771217955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2 : ℤ) (A083960 (3 * n + 1))

end

end A378008.P4846282222771217955

/-! ## A378008.P7542626250928423300

`4%A000265(A374031(n+5))`
-/

namespace A378008.P7542626250928423300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A000265 (A374031 (n + 5)).toNat)

end

end A378008.P7542626250928423300

/-! ## A378008.P1267473842847944375

`and(A110221(3*n), A301957(n+1))²`
-/

namespace A378008.P1267473842847944375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110221 (3 * n)) (A301957 (n + 1)) ^ 2

end

end A378008.P1267473842847944375

/-!
# A378009: a(n) = b(7*n+1), with the sequence {b(n)} having Dirichlet g.f. Product_{chi} L(chi,s), where chi runs through all Dirichlet characters modulo 7; 7th column of A378007.

The programs for A378009, there is no canonical definition to state claims against.
-/

/-! ## A378009.P15217321632046985861

`A079648(A296354(n+2))%A269349(3*n+4)`
-/

namespace A378009.P15217321632046985861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079648 (A296354 (n + 2)).toNat) (A269349 (3 * n + 4))

end

end A378009.P15217321632046985861

/-!
# A378010: a(n) = b(8*n+1), with the sequence {b(n)} having Dirichlet g.f. Product_{chi} L(chi,s), where chi runs through all Dirichlet characters modulo 8; 8th column of A378007.

The programs for A378010, there is no canonical definition to state claims against.
-/

/-! ## A378010.P8297119463635617597

`A378007(A155212(n+4))`
-/

namespace A378010.P8297119463635617597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378007 (A155212 (n + 4)).toNat

end

end A378010.P8297119463635617597

/-!
# A378011: a(n) = b(9*n+1), with the sequence {b(n)} having Dirichlet g.f. Product_{chi} L(chi,s), where chi runs through all Dirichlet characters modulo 9; 9th column of A378007.

The programs for A378011, there is no canonical definition to state claims against.
-/

/-! ## A378011.P4333650241415161438

`A366868(A390030(n+1))`
-/

namespace A378011.P4333650241415161438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366868 (A390030 (n + 1)).toNat

end

end A378011.P4333650241415161438

/-! ## A378011.P1190678304862370395

`A000400(A057192(n+1))%A355584(3*n+4)`
-/

namespace A378011.P1190678304862370395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000400 (A057192 (n + 1)).toNat) (A355584 (3 * n + 4))

end

end A378011.P1190678304862370395

/-! ## A378011.P8548479764915162472

`A128722(A344699(n+2)%A009995(3*n+2))`
-/

namespace A378011.P8548479764915162472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128722 (Int.tmod (A344699 (n + 2)) (A009995 (3 * n + 2))).toNat

end

end A378011.P8548479764915162472

/-!
# A378012: a(n) = b(10*n+1), with the sequence {b(n)} having Dirichlet g.f. Product_{chi} L(chi,s), where chi runs through all Dirichlet characters modulo 10; 10th column of A378007.

The programs for A378012, there is no canonical definition to state claims against.
-/

/-! ## A378012.P13497644889106290254

`A378008(2*n)`
-/

namespace A378012.P13497644889106290254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378008 (2 * n)

end

end A378012.P13497644889106290254

/-! ## A378012.P5918362072653921270

`A378007(A000384(n+3)-5)`
-/

namespace A378012.P5918362072653921270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378007 (A000384 (n + 3) - 5).toNat

end

end A378012.P5918362072653921270

/-! ## A378012.P1177672745456517340

`A179391(A243044(n+1))+A031362(n+1)`
-/

namespace A378012.P1177672745456517340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179391 (A243044 (n + 1)).toNat + A031362 (n + 1)

end

end A378012.P1177672745456517340

/-!
# A378014: Triangle read by rows: T(n,k) = number of free hexagonal polyominoes with n cells, where the maximum number of cells on any lattice line is k. The term "lattice line" here means a line running through the cell centers and midpoints of their sides.

The programs for A378014, there is no canonical definition to state claims against.
-/

/-! ## A378014.P15850477512867596710

`A066099(A056391(n+1))*A155161(n)`
-/

namespace A378014.P15850477512867596710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A056391 (n + 1)).toNat * A155161 n

end

end A378014.P15850477512867596710

/-! ## A378014.P7578044704814557632

`A001055(A003154(3*n+4))*A357646(n)`
-/

namespace A378014.P7578044704814557632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A003154 (3 * n + 4)).toNat * A357646 n

end

end A378014.P7578044704814557632

/-!
# A378015: Triangle read by rows: T(n,k) = number of free hexagonal polyominoes with n cells, where the maximum number of collinear cell centers on any line in the plane is k.

The programs for A378015, there is no canonical definition to state claims against.
-/

/-! ## A378015.P1626394117653109459

`A290222(lt[A007705(n), A000079(2*(n+1))])`
-/

namespace A378015.P1626394117653109459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378015.P1626394117653109459

/-! ## A378015.P8280670282895298910

`A290222(lt[A007705(n), A045924(3*n+4)])`
-/

namespace A378015.P8280670282895298910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045924 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378015.P8280670282895298910

/-!
# A378016: E.g.f. satisfies A(x) = (1+x) * exp( x * (1+x)^2 * A(x) ).

The programs for A378016, there is no canonical definition to state claims against.
-/

/-! ## A378016.P14169642646729278202

`A244991(a(n-1)*record[∑{p}[n, #]])` with `a(0)=1, a(1)=2`
-/

namespace A378016.P14169642646729278202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A244991 (a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A378016.P14169642646729278202

/-!
# A378017: E.g.f. satisfies A(x) = (1+x)^2 * exp( x * (1+x) * A(x) ).

The programs for A378017, there is no canonical definition to state claims against.
-/

/-! ## A378017.P13079631733191584446

`A001965(A001813(n))`
-/

namespace A378017.P13079631733191584446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 (A001813 n).toNat

end

end A378017.P13079631733191584446

/-!
# A378018: Primes p which can be written as p = (A060735(k) +- next largest prime factor not in A060735(k)) for some k.

The programs for A378018, there is no canonical definition to state claims against.
-/

/-! ## A378018.P14534085857774997613

`∩[A155058(n+1), A226537(n+1)]`
-/

namespace A378018.P14534085857774997613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378018.P14534085857774997613

/-! ## A378018.P10037497812672691856

`∩[A226537(n+1), A395565(n+1)]`
-/

namespace A378018.P10037497812672691856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378018.P10037497812672691856

/-! ## A378018.P3280700903830436597

`A038612(lt[A047966(n+1), A002202(n+1)])`
-/

namespace A378018.P3280700903830436597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378018.P3280700903830436597

/-! ## A378018.P16388237537707755082

`A000040(lt[A281574(n+1), A027750(2*(n+1))])`
-/

namespace A378018.P16388237537707755082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378018.P16388237537707755082

/-! ## A378018.P12968174600501474627

`∩[A225105(n+1), A257500(n+1)]`
-/

namespace A378018.P12968174600501474627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378018.P12968174600501474627

/-!
# A378019: E.g.f. satisfies A(x) = (1+x) * exp( x * (1+x) * A(x) ).

The programs for A378019, there is no canonical definition to state claims against.
-/

/-! ## A378019.P9691199317196112962

`A377827(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A378019.P9691199317196112962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A377827 n - (n : ℤ) * a (n - 1)

end

end A378019.P9691199317196112962

/-!
# A378020: a(n) = pi(A020482(n)) - pi(A020481(n)).

The programs for A378020, there is no canonical definition to state claims against.
-/

/-! ## A378020.P6584460977178782617

`A377972(n+2)-A377758(n+2)`
-/

namespace A378020.P6584460977178782617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377972 (n + 2) - A377758 (n + 2)

end

end A378020.P6584460977178782617

/-! ## A378020.P3485289249807839918

`A377972(n+2)-A000720(A020481(n+2))`
-/

namespace A378020.P3485289249807839918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377972 (n + 2) - A000720 (A020481 (n + 2)).toNat

end

end A378020.P3485289249807839918

/-! ## A378020.P5511820726592942654

`A000720(A020482(n+2))-A377758(n+2)`
-/

namespace A378020.P5511820726592942654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020482 (n + 2)).toNat - A377758 (n + 2)

end

end A378020.P5511820726592942654

/-! ## A378020.P8905937661662842690

`A344616(A020481(n+2)*A020482(n+2))`
-/

namespace A378020.P8905937661662842690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A020481 (n + 2) * A020482 (n + 2)).toNat

end

end A378020.P8905937661662842690

/-! ## A378020.P4155883509161387405

`A241917(A073046(n+2))`
-/

namespace A378020.P4155883509161387405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A073046 (n + 2)).toNat

end

end A378020.P4155883509161387405

/-!
# A378023: a(n) = (2*n^3 - 6*n^2 + 19*n - 9)*n/6.

The programs for A378023, the canonical program `A378023.P11320501311477959866` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378023 has offset 1).

The definition of A378023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3-6*(n+1)²+19*(n+1)-9)*(n+1)/6` (program `A378023.P3866274964005044331`, by `A378023.P3866274964005044331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A378023.P3866274964005044331

`(2*(n+1)^3-6*(n+1)²+19*(n+1)-9)*(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378023.P3866274964005044331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) ^ 3 : ℤ) - (6 * (n + 1) ^ 2 : ℤ) + (19 * (n + 1) : ℤ) - 9) * (n + 1 : ℤ) : ℚ) / 6

end

end A378023.P3866274964005044331

namespace A378023

/-- `(2*(n+1)^3-6*(n+1)²+19*(n+1)-9)*(n+1)/6` -/
def P3866274964005044331.Spec : Prop :=
  ∀ n, P3866274964005044331.a n = (A378023 (n + 1) : ℚ)

theorem P3866274964005044331.correct : P3866274964005044331.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A378023, Nat.add_sub_cancel, A378023.P3866274964005044331.a, A378023.P11320501311477959866.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A378023, Nat.add_sub_cancel, A378023.P3866274964005044331.a, A378023.P11320501311477959866.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A378023

/-! ## A378023.P11320501311477959866

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=24, a(3)=66, a(4)=155`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A378023

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11320501311477959866.Spec : Prop :=
  ∀ n, P11320501311477959866.a n = A378023 (n + 1)

theorem P11320501311477959866.correct : P11320501311477959866.Spec := by
  intro n
  simp only [A378023, Nat.add_sub_cancel]

end A378023

/-! ## A378023.P2563862301147357698

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A378023.P2563862301147357698
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378023.P2563862301147357698

namespace A378023

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P2563862301147357698.Spec : Prop :=
  ∀ n, (P2563862301147357698.a n : ℤ) = A378023 (n + 1)

end A378023

/-! ## A378023.P17692424980669375786

`A307621(n+1)+n`
-/

namespace A378023.P17692424980669375786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307621 (n + 1) + (n : ℤ)

end

end A378023.P17692424980669375786

namespace A378023

/-- `A307621(n+1)+n` -/
def P17692424980669375786.Spec : Prop :=
  ∀ n, P17692424980669375786.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P8435895167558818432

`∑[A321124(n)+n²]`
-/

namespace A378023.P8435895167558818432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321124 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378023.P8435895167558818432

namespace A378023

/-- `∑[A321124(n)+n²]` -/
def P8435895167558818432.Spec : Prop :=
  ∀ n, P8435895167558818432.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P17283914553862688195

`A081492(n+1)+n²+n`
-/

namespace A378023.P17283914553862688195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081492 (n + 1) + (n ^ 2 + n : ℤ)

end

end A378023.P17283914553862688195

namespace A378023

/-- `A081492(n+1)+n²+n` -/
def P17283914553862688195.Spec : Prop :=
  ∀ n, P17283914553862688195.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P4246251144693894380

`floor(A132366(n)+(C(n, 3)+n/2)*(n+1))`
-/

namespace A378023.P4246251144693894380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132366 n : ℚ) + ((Nat.choose n 3 : ℚ) + (n : ℚ) / 2) * (n + 1 : ℚ)⌋

end

end A378023.P4246251144693894380

namespace A378023

/-- `floor(A132366(n)+(C(n, 3)+n/2)*(n+1))` -/
def P4246251144693894380.Spec : Prop :=
  ∀ n, P4246251144693894380.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P3012158618490673949

`A132366(n)+A006484(n)`
-/

namespace A378023.P3012158618490673949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n + A006484 n

end

end A378023.P3012158618490673949

namespace A378023

/-- `A132366(n)+A006484(n)` -/
def P3012158618490673949.Spec : Prop :=
  ∀ n, P3012158618490673949.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P11964042926299607592

`A330700(n)+A003215(n)`
-/

namespace A378023.P11964042926299607592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330700 n + A003215 n

end

end A378023.P11964042926299607592

namespace A378023

/-- `A330700(n)+A003215(n)` -/
def P11964042926299607592.Spec : Prop :=
  ∀ n, P11964042926299607592.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P5116627682633073476

`A071238(n)+A000384(n+1)`
-/

namespace A378023.P5116627682633073476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n + A000384 (n + 1)

end

end A378023.P5116627682633073476

namespace A378023

/-- `A071238(n)+A000384(n+1)` -/
def P5116627682633073476.Spec : Prop :=
  ∀ n, P5116627682633073476.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P5813414021976823776

`A066804(n+1)-A007584(n)`
-/

namespace A378023.P5813414021976823776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066804 (n + 1) - A007584 n

end

end A378023.P5813414021976823776

namespace A378023

/-- `A066804(n+1)-A007584(n)` -/
def P5813414021976823776.Spec : Prop :=
  ∀ n, P5813414021976823776.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P3833255628089326588

`A006324(n+1)-A174814(n)`
-/

namespace A378023.P3833255628089326588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) - A174814 n

end

end A378023.P3833255628089326588

namespace A378023

/-- `A006324(n+1)-A174814(n)` -/
def P3833255628089326588.Spec : Prop :=
  ∀ n, P3833255628089326588.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P3219406121747814398

`A178073(n+1)-A132124(n)`
-/

namespace A378023.P3219406121747814398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178073 (n + 1) - A132124 n

end

end A378023.P3219406121747814398

namespace A378023

/-- `A178073(n+1)-A132124(n)` -/
def P3219406121747814398.Spec : Prop :=
  ∀ n, P3219406121747814398.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P16709285694720892835

`A071238(n)+A000217(2*n+1)`
-/

namespace A378023.P16709285694720892835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n + A000217 (2 * n + 1)

end

end A378023.P16709285694720892835

namespace A378023

/-- `A071238(n)+A000217(2*n+1)` -/
def P16709285694720892835.Spec : Prop :=
  ∀ n, P16709285694720892835.a n = A378023 (n + 1)

end A378023

/-! ## A378023.P15004736132087264229

`A002412(n+1)+A071238(n)-A002412(n)`
-/

namespace A378023.P15004736132087264229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1) + (A071238 n - A002412 n)

end

end A378023.P15004736132087264229

namespace A378023

/-- `A002412(n+1)+A071238(n)-A002412(n)` -/
def P15004736132087264229.Spec : Prop :=
  ∀ n, P15004736132087264229.a n = A378023 (n + 1)

end A378023

/-!
# A378027: a(n) = prime(prime(prime(n))) - prime(prime(n)).

The programs for A378027, the canonical program `A378027.P3346758186908230283` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378027 has offset 1).

The definition of A378027 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A038580, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378027.P3346758186908230283

`A038580(n+1)-A006450(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A378027

/-- `A038580(n+1)-A006450(n+1)` -/
def P3346758186908230283.Spec : Prop :=
  ∀ n, P3346758186908230283.a n = A378027 (n + 1)

theorem P3346758186908230283.correct : P3346758186908230283.Spec := by
  intro n
  simp only [A378027, Nat.add_sub_cancel]

end A378027

/-! ## A378027.P1969198482356615535

`A038580(n+1)-(A168152(n+1)+A000040(n+1))`
-/

namespace A378027.P1969198482356615535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1) - (A168152 (n + 1) + A000040 (n + 1))

end

end A378027.P1969198482356615535

namespace A378027

/-- `A038580(n+1)-(A168152(n+1)+A000040(n+1))` -/
def P1969198482356615535.Spec : Prop :=
  ∀ n, P1969198482356615535.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P4295604797221047640

`A006450(Δ[A007504(n)])-A006450(n+1)`
-/

namespace A378027.P4295604797221047640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (n + 1) - f1 n).toNat - A006450 (n + 1)

end

end A378027.P4295604797221047640

namespace A378027

/-- `A006450(Δ[A007504(n)])-A006450(n+1)` -/
def P4295604797221047640.Spec : Prop :=
  ∀ n, P4295604797221047640.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P8643028553178582295

`A006450(A000040(n+1))-A006450(n+1)`
-/

namespace A378027.P8643028553178582295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000040 (n + 1)).toNat - A006450 (n + 1)

end

end A378027.P8643028553178582295

namespace A378027

/-- `A006450(A000040(n+1))-A006450(n+1)` -/
def P8643028553178582295.Spec : Prop :=
  ∀ n, P8643028553178582295.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P18108995737722148614

`A006450(∑[A054541(n+1)])-A006450(n+1)`
-/

namespace A378027.P18108995737722148614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A006450 (n + 1)

end

end A378027.P18108995737722148614

namespace A378027

/-- `A006450(∑[A054541(n+1)])-A006450(n+1)` -/
def P18108995737722148614.Spec : Prop :=
  ∀ n, P18108995737722148614.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P7520442285200835240

`A006450(record[A051698(n)])-A006450(n+1)`
-/

namespace A378027.P7520442285200835240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A006450 (n + 1)

end

end A378027.P7520442285200835240

namespace A378027

/-- `A006450(record[A051698(n)])-A006450(n+1)` -/
def P7520442285200835240.Spec : Prop :=
  ∀ n, P7520442285200835240.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P3570317925943444356

`A168152(Δ[A007504(n)])`
-/

namespace A378027.P3570317925943444356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (f1 (n + 1) - f1 n).toNat

end

end A378027.P3570317925943444356

namespace A378027

/-- `A168152(Δ[A007504(n)])` -/
def P3570317925943444356.Spec : Prop :=
  ∀ n, P3570317925943444356.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P6212912361136732895

`A168152(A000040(n+1))`
-/

namespace A378027.P6212912361136732895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (A000040 (n + 1)).toNat

end

end A378027.P6212912361136732895

namespace A378027

/-- `A168152(A000040(n+1))` -/
def P6212912361136732895.Spec : Prop :=
  ∀ n, P6212912361136732895.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P11795220003501161167

`A168152(A008578(n+2))`
-/

namespace A378027.P11795220003501161167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (A008578 (n + 2)).toNat

end

end A378027.P11795220003501161167

namespace A378027

/-- `A168152(A008578(n+2))` -/
def P11795220003501161167.Spec : Prop :=
  ∀ n, P11795220003501161167.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P13499847359066125631

`A168152(A182986(n+2))`
-/

namespace A378027.P13499847359066125631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (A182986 (n + 2)).toNat

end

end A378027.P13499847359066125631

namespace A378027

/-- `A168152(A182986(n+2))` -/
def P13499847359066125631.Spec : Prop :=
  ∀ n, P13499847359066125631.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P15334643486642688747

`A168152(A008864(n+1)-1)`
-/

namespace A378027.P15334643486642688747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (A008864 (n + 1) - 1).toNat

end

end A378027.P15334643486642688747

namespace A378027

/-- `A168152(A008864(n+1)-1)` -/
def P15334643486642688747.Spec : Prop :=
  ∀ n, P15334643486642688747.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P6733847066549565737

`A168152(A040976(n+1)+2)`
-/

namespace A378027.P6733847066549565737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (A040976 (n + 1) + 2).toNat

end

end A378027.P6733847066549565737

namespace A378027

/-- `A168152(A040976(n+1)+2)` -/
def P6733847066549565737.Spec : Prop :=
  ∀ n, P6733847066549565737.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P15199585087053621511

`A168152(A100484(n+1)/2)`
-/

namespace A378027.P15199585087053621511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A378027.P15199585087053621511

namespace A378027

/-- `A168152(A100484(n+1)/2)` -/
def P15199585087053621511.Spec : Prop :=
  ∀ n, P15199585087053621511.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P10345853450068236563

`A168152(A014689(n+1)+n+1)`
-/

namespace A378027.P10345853450068236563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (A014689 (n + 1) + (n + 1 : ℤ)).toNat

end

end A378027.P10345853450068236563

namespace A378027

/-- `A168152(A014689(n+1)+n+1)` -/
def P10345853450068236563.Spec : Prop :=
  ∀ n, P10345853450068236563.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P1258931242950782264

`A038580(n+1)-A000040(A000040(n+1))`
-/

namespace A378027.P1258931242950782264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1) - A000040 (A000040 (n + 1)).toNat

end

end A378027.P1258931242950782264

namespace A378027

/-- `A038580(n+1)-A000040(A000040(n+1))` -/
def P1258931242950782264.Spec : Prop :=
  ∀ n, P1258931242950782264.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P1232505644345544848

`A141138(A000040(n+1))-A141138(n+1)`
-/

namespace A378027.P1232505644345544848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (A000040 (n + 1)).toNat - A141138 (n + 1)

end

end A378027.P1232505644345544848

namespace A378027

/-- `A141138(A000040(n+1))-A141138(n+1)` -/
def P1232505644345544848.Spec : Prop :=
  ∀ n, P1232505644345544848.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P7129051259840817775

`A168152(A006450(n+1)-A168152(n+1))`
-/

namespace A378027.P7129051259840817775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (A006450 (n + 1) - A168152 (n + 1)).toNat

end

end A378027.P7129051259840817775

namespace A378027

/-- `A168152(A006450(n+1)-A168152(n+1))` -/
def P7129051259840817775.Spec : Prop :=
  ∀ n, P7129051259840817775.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P13090050974826635283

`A168152(A072677(n+1)-A275989(n+1))`
-/

namespace A378027.P13090050974826635283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (A072677 (n + 1) - A275989 (n + 1)).toNat

end

end A378027.P13090050974826635283

namespace A378027

/-- `A168152(A072677(n+1)-A275989(n+1))` -/
def P13090050974826635283.Spec : Prop :=
  ∀ n, P13090050974826635283.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P478763944127214612

`A006450(p?[A001057(n)])-A006450(n+1)`
-/

namespace A378027.P478763944127214612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A006450 (n + 1)

end

end A378027.P478763944127214612

namespace A378027

/-- `A006450(p?[A001057(n)])-A006450(n+1)` -/
def P478763944127214612.Spec : Prop :=
  ∀ n, P478763944127214612.a n = A378027 (n + 1)

end A378027

/-! ## A378027.P7578841747891468179

`A006450(record[A051664(n+1)])-A006450(n+1)`
-/

namespace A378027.P7578841747891468179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A006450 (n + 1)

end

end A378027.P7578841747891468179

namespace A378027

/-- `A006450(record[A051664(n+1)])-A006450(n+1)` -/
def P7578841747891468179.Spec : Prop :=
  ∀ n, P7578841747891468179.a n = A378027 (n + 1)

end A378027

/-!
# A378029: Record values in A377059.

The programs for A378029, there is no canonical definition to state claims against.
-/

/-! ## A378029.P11236108616259267678

`A377059(A378028(n+1))`
-/

namespace A378029.P11236108616259267678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377059 (A378028 (n + 1)).toNat

end

end A378029.P11236108616259267678

/-! ## A378029.P13985037759988431907

`record[A377059(n+1)]`
-/

namespace A378029.P13985037759988431907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378029.P13985037759988431907

/-!
# A378031: Cogrowth sequence for the 18-element group C6 X C3 = .

The programs for A378031, the canonical program `A378031.P538866673895415262` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378031 has offset 0).

The definition of A378031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378031.P9508367165249447009

`A094715(3*n)`
-/

namespace A378031.P9508367165249447009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094715 (3 * n)

end

end A378031.P9508367165249447009

namespace A378031

/-- `A094715(3*n)` -/
def P9508367165249447009.Spec : Prop :=
  ∀ n, P9508367165249447009.a n = A378031 n

end A378031

/-! ## A378031.P538866673895415262

`A306847(3*n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378031

/-- `A306847(3*n)` -/
def P538866673895415262.Spec : Prop :=
  ∀ n, P538866673895415262.a n = A378031 n

theorem P538866673895415262.correct : P538866673895415262.Spec := by
  intro n
  simp only [A378031]

end A378031

/-! ## A378031.P4044545496808819222

`or(A094715(A008585(n)), A147612(n))`
-/

namespace A378031.P4044545496808819222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094715 (A008585 n).toNat) (A147612 n)

end

end A378031.P4044545496808819222

namespace A378031

/-- `or(A094715(A008585(n)), A147612(n))` -/
def P4044545496808819222.Spec : Prop :=
  ∀ n, P4044545496808819222.a n = A378031 n

end A378031

/-!
# A378032: a(1) = a(2) = 1; a(n>2) is the greatest nonsquarefree number < prime(n).

The programs for A378032, the canonical program `A378032.P9045998569336998006` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378032 has offset 1).

The definition of A378032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2810 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378032.P9045998569336998006

`A162966(A000040(n+1)-A071403(n+1)+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378032

/-- `A162966(A000040(n+1)-A071403(n+1)+1)` -/
def P9045998569336998006.Spec : Prop :=
  ∀ n, P9045998569336998006.a n = A378032 (n + 1)

theorem P9045998569336998006.correct : P9045998569336998006.Spec := by
  intro n
  simp only [A378032, Nat.add_sub_cancel]

end A378032

/-! ## A378032.P9582814975353045176

`A378034(n)+a(n-1)` with `a(0)=1`
-/

namespace A378032.P9582814975353045176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A378034 n + a (n - 1)

end

end A378032.P9582814975353045176

namespace A378032

/-- `A378034(n)+a(n-1)` -/
def P9582814975353045176.Spec : Prop :=
  ∀ n, P9582814975353045176.a n = A378032 (n + 1)

end A378032

/-! ## A378032.P17459506468761285040

`∑[A378034(A028310(n))]+1`
-/

namespace A378032.P17459506468761285040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378034 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A378032.P17459506468761285040

namespace A378032

/-- `∑[A378034(A028310(n))]+1` -/
def P17459506468761285040.Spec : Prop :=
  ∀ n, P17459506468761285040.a n = A378032 (n + 1)

end A378032

/-! ## A378032.P2914051199292943600

`∑[A378034(n+1)]+1-A378034(n+1)`
-/

namespace A378032.P2914051199292943600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A378034 (n + 1)

end

end A378032.P2914051199292943600

namespace A378032

/-- `∑[A378034(n+1)]+1-A378034(n+1)` -/
def P2914051199292943600.Spec : Prop :=
  ∀ n, P2914051199292943600.a n = A378032 (n + 1)

end A378032

/-! ## A378032.P7897147668000339502

`A162966(A378086(n+1)+1)`
-/

namespace A378032.P7897147668000339502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (A378086 (n + 1) + 1).toNat

end

end A378032.P7897147668000339502

namespace A378032

/-- `A162966(A378086(n+1)+1)` -/
def P7897147668000339502.Spec : Prop :=
  ∀ n, P7897147668000339502.a n = A378032 (n + 1)

end A378032

/-!
# A378033: Greatest nonsquarefree number <= n, or 1 if there is none (the case n <= 3).

The programs for A378033, there is no canonical definition to state claims against.
-/

/-! ## A378033.P11073687272205658509

`A378036(n)+a(n-1)` with `a(0)=1`
-/

namespace A378033.P11073687272205658509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A378036 n + a (n - 1)

end

end A378033.P11073687272205658509

/-! ## A378033.P13031867837477583859

`A162966(A057627(n+1)+1)`
-/

namespace A378033.P13031867837477583859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (A057627 (n + 1) + 1).toNat

end

end A378033.P13031867837477583859

/-! ## A378033.P6193315516149587384

`∑[A378036(A000007(n)+n)]+1`
-/

namespace A378033.P6193315516149587384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A378033.P6193315516149587384

/-! ## A378033.P15131711193179659260

`A162966(∑[char[A162966(n+1)-1]])`
-/

namespace A378033.P15131711193179659260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378033.P15131711193179659260

/-! ## A378033.P4787121932331772855

`∑[A378036(n+1)]+1-A378036(n+1)`
-/

namespace A378033.P4787121932331772855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A378036 (n + 1))

end

end A378033.P4787121932331772855

/-!
# A378034: First-differences of A378032 (greatest number < prime(n) that is 1 or nonsquarefree).

The programs for A378034, there is no canonical definition to state claims against.
-/

/-! ## A378034.P16408911944143147838

`Δ[A378032(n+1)]`
-/

namespace A378034.P16408911944143147838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378034.P16408911944143147838

/-! ## A378034.P13367076121721680644

`A378032(n+2)-A378032(n+1)`
-/

namespace A378034.P13367076121721680644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378032 (n + 2) - A378032 (n + 1)

end

end A378034.P13367076121721680644

/-! ## A378034.P14922432305154832433

`Δ[A378033(Δ[A007504(n)])]`
-/

namespace A378034.P14922432305154832433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378034.P14922432305154832433

/-! ## A378034.P6888499226031816302

`Δ[A378033(A000040(n+1))]`
-/

namespace A378034.P6888499226031816302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378034.P6888499226031816302

/-! ## A378034.P13096062385268323002

`Δ[A378033(A006005(n+1))]`
-/

namespace A378034.P13096062385268323002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378034.P13096062385268323002

/-!
# A378035: Greatest perfect power < prime(n).

The programs for A378035, the canonical program `A378035.P2873726849471277714` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378035 has offset 1).

The definition of A378035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378035.P2873726849471277714

`A081676(∑[A075526(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A378035

/-- `A081676(∑[A075526(n)])` -/
def P2873726849471277714.Spec : Prop :=
  ∀ n, P2873726849471277714.a n = A378035 (n + 1)

theorem P2873726849471277714.correct : P2873726849471277714.Spec := by
  intro n
  simp only [A378035, Nat.add_sub_cancel]

end A378035

/-! ## A378035.P11593131927013410357

`A081676(Δ[A007504(n)])`
-/

namespace A378035.P11593131927013410357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (f1 (n + 1) - f1 n).toNat

end

end A378035.P11593131927013410357

namespace A378035

/-- `A081676(Δ[A007504(n)])` -/
def P11593131927013410357.Spec : Prop :=
  ∀ n, P11593131927013410357.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P13507797509878797949

`A081676(A000040(n+1))`
-/

namespace A378035.P13507797509878797949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A000040 (n + 1)).toNat

end

end A378035.P13507797509878797949

namespace A378035

/-- `A081676(A000040(n+1))` -/
def P13507797509878797949.Spec : Prop :=
  ∀ n, P13507797509878797949.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P12493378825690019203

`A081676(A006005(n+1))`
-/

namespace A378035.P12493378825690019203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A006005 (n + 1)).toNat

end

end A378035.P12493378825690019203

namespace A378035

/-- `A081676(A006005(n+1))` -/
def P12493378825690019203.Spec : Prop :=
  ∀ n, P12493378825690019203.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P1740986153147450450

`A081676(A006093(n+1))`
-/

namespace A378035.P1740986153147450450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A006093 (n + 1)).toNat

end

end A378035.P1740986153147450450

namespace A378035

/-- `A081676(A006093(n+1))` -/
def P1740986153147450450.Spec : Prop :=
  ∀ n, P1740986153147450450.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P1368848979289877852

`A081676(A014193(n+1))`
-/

namespace A378035.P1368848979289877852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A014193 (n + 1)).toNat

end

end A378035.P1368848979289877852

namespace A378035

/-- `A081676(A014193(n+1))` -/
def P1368848979289877852.Spec : Prop :=
  ∀ n, P1368848979289877852.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P9765781284556619551

`A081676(A039915(n+1))`
-/

namespace A378035.P9765781284556619551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A039915 (n + 1)).toNat

end

end A378035.P9765781284556619551

namespace A378035

/-- `A081676(A039915(n+1))` -/
def P9765781284556619551.Spec : Prop :=
  ∀ n, P9765781284556619551.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P8881110632765214232

`A081676(A082542(n+1))`
-/

namespace A378035.P8881110632765214232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A082542 (n + 1)).toNat

end

end A378035.P8881110632765214232

namespace A378035

/-- `A081676(A082542(n+1))` -/
def P8881110632765214232.Spec : Prop :=
  ∀ n, P8881110632765214232.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P799435811770132586

`A081676(A156037(n+1))`
-/

namespace A378035.P799435811770132586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A156037 (n + 1)).toNat

end

end A378035.P799435811770132586

namespace A378035

/-- `A081676(A156037(n+1))` -/
def P799435811770132586.Spec : Prop :=
  ∀ n, P799435811770132586.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P1644038054345821527

`A081676(A378032(n+1))`
-/

namespace A378035.P1644038054345821527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A378032 (n + 1)).toNat

end

end A378035.P1644038054345821527

namespace A378035

/-- `A081676(A378032(n+1))` -/
def P1644038054345821527.Spec : Prop :=
  ∀ n, P1644038054345821527.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P1020712808941636411

`A081676(A008578(n+2))`
-/

namespace A378035.P1020712808941636411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A008578 (n + 2)).toNat

end

end A378035.P1020712808941636411

namespace A378035

/-- `A081676(A008578(n+2))` -/
def P1020712808941636411.Spec : Prop :=
  ∀ n, P1020712808941636411.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P2919265452308942558

`A081676(A378249(n+1)-1)`
-/

namespace A378035.P2919265452308942558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A378249 (n + 1) - 1).toNat

end

end A378035.P2919265452308942558

namespace A378035

/-- `A081676(A378249(n+1)-1)` -/
def P2919265452308942558.Spec : Prop :=
  ∀ n, P2919265452308942558.a n = A378035 (n + 1)

end A378035

/-! ## A378035.P5776672482370506081

`A081676(A151800(A065514(n+1)))`
-/

namespace A378035.P5776672482370506081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A151800 (A065514 (n + 1)).toNat).toNat

end

end A378035.P5776672482370506081

namespace A378035

/-- `A081676(A151800(A065514(n+1)))` -/
def P5776672482370506081.Spec : Prop :=
  ∀ n, P5776672482370506081.a n = A378035 (n + 1)

end A378035

/-!
# A378036: First differences of A378033 (greatest positive integer < n that is 1 or nonsquarefree).

The programs for A378036, there is no canonical definition to state claims against.
-/

/-! ## A378036.P4355795129430558583

`A378033(n+2)-A378033(n+1)`
-/

namespace A378036.P4355795129430558583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (n + 2) - A378033 (n + 1)

end

end A378036.P4355795129430558583

/-! ## A378036.P12454302735135853497

`Δ[A378033(n+1)]`
-/

namespace A378036.P12454302735135853497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378036.P12454302735135853497

/-! ## A378036.P14344652113880775914

`A119187(A034869(n))%A057521(n+2)`
-/

namespace A378036.P14344652113880775914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119187 (A034869 n).toNat) (A057521 (n + 2))

end

end A378036.P14344652113880775914

/-! ## A378036.P18084382003586694429

`A054696(2*n+5)%A031363(A005361(n+2))`
-/

namespace A378036.P18084382003586694429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054696 (2 * n + 5)) (A031363 (A005361 (n + 2)).toNat)

end

end A378036.P18084382003586694429

/-!
# A378037: First differences of A112926 (smallest squarefree integer > prime(n)).

The programs for A378037, there is no canonical definition to state claims against.
-/

/-! ## A378037.P17691734011821286664

`Δ[A112926(n+1)]`
-/

namespace A378037.P17691734011821286664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378037.P17691734011821286664

/-! ## A378037.P4327100454346938506

`Δ[A067535(A008864(n+1))]`
-/

namespace A378037.P4327100454346938506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378037.P4327100454346938506

/-! ## A378037.P10285197103467774410

`Δ[A079114(A000040(n+1))]`
-/

namespace A378037.P10285197103467774410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378037.P10285197103467774410

/-! ## A378037.P4596175368690238326

`Δ[A067535(A028815(n+1))]`
-/

namespace A378037.P4596175368690238326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A028815 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378037.P4596175368690238326

/-! ## A378037.P316044723247087866

`Δ[A005117(A112930(n+1))]`
-/

namespace A378037.P316044723247087866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A112930 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378037.P316044723247087866

/-! ## A378037.P6766567056532763488

`Δ[A067535(A299763(n+2))]`
-/

namespace A378037.P6766567056532763488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A299763 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378037.P6766567056532763488

/-! ## A378037.P15930369079936663173

`Δ[A067535(A000040(n+1)+1)]`
-/

namespace A378037.P15930369079936663173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378037.P15930369079936663173

/-! ## A378037.P3400219363546731699

`Δ[A005117(A112929(n+1)+2)]`
-/

namespace A378037.P3400219363546731699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A112929 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378037.P3400219363546731699

/-! ## A378037.P15966039016226830773

`A112926(n+2)-A112926(n+1)`
-/

namespace A378037.P15966039016226830773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 2) - A112926 (n + 1)

end

end A378037.P15966039016226830773

/-! ## A378037.P18110708569410762853

`Δ[A240474(n+1)+A000040(n+1)]`
-/

namespace A378037.P18110708569410762853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240474 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378037.P18110708569410762853

/-!
# A378038: First differences of A112925 = greatest squarefree number < prime(n).

The programs for A378038, there is no canonical definition to state claims against.
-/

/-! ## A378038.P12535170052067437671

`Δ[A112925(n+1)]`
-/

namespace A378038.P12535170052067437671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378038.P12535170052067437671

/-! ## A378038.P15885293519919817800

`Δ[A070321(A006093(n+1))]`
-/

namespace A378038.P15885293519919817800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378038.P15885293519919817800

/-! ## A378038.P5515969864996270003

`Δ[A005117(A112929(n+1))]`
-/

namespace A378038.P5515969864996270003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A112929 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378038.P5515969864996270003

/-! ## A378038.P17996157888872144504

`Δ[A070321(A000040(n+1)-1)]`
-/

namespace A378038.P17996157888872144504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378038.P17996157888872144504

/-! ## A378038.P725244210772582156

`A112925(n+2)-A112925(n+1)`
-/

namespace A378038.P725244210772582156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 2) - A112925 (n + 1)

end

end A378038.P725244210772582156

/-! ## A378038.P18053465585984799064

`Δ[A005117(A337030(n+1)+n+1)]`
-/

namespace A378038.P18053465585984799064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A337030 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378038.P18053465585984799064

/-! ## A378038.P13966502478262603783

`Δ[A000040(n+1)-A240473(n+1)]`
-/

namespace A378038.P13966502478262603783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A240473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378038.P13966502478262603783

/-!
# A378039: a(1)=3; a(n>1) = n-th first difference of A120327(k) = least nonsquarefree number greater than k.

The programs for A378039, there is no canonical definition to state claims against.
-/

/-! ## A378039.P8353648683562363531

`Δ[A120327(n+1)^ceil(n/98)]`
-/

namespace A378039.P8353648683562363531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120327 (n + 1) : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378039.P8353648683562363531

/-! ## A378039.P3444732508635440956

`Δ[A120327(n+1)%A001539(n)]`
-/

namespace A378039.P3444732508635440956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120327 (n + 1)) (A001539 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378039.P3444732508635440956

/-! ## A378039.P2596440449083752375

`Δ[gcd(A120327(n+1), A151878(n))]`
-/

namespace A378039.P2596440449083752375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120327 (n + 1)) (A151878 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A378039.P2596440449083752375

/-!
# A378040: Union of A377783(n) = least nonsquarefree number > prime(n).

The programs for A378040, the canonical program `A378040.P15613936278681359725` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378040 has offset 1).

The definition of A378040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378040.P15613936278681359725

`record[A377783(A100727(n))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378040

/-- `record[A377783(A100727(n))]` -/
def P15613936278681359725.Spec : Prop :=
  ∀ n, P15613936278681359725.a n = A378040 (n + 1)

theorem P15613936278681359725.correct : P15613936278681359725.Spec := by
  intro n
  simp only [A378040, Nat.add_sub_cancel]

end A378040

/-! ## A378040.P927651944756090617

`record[A377783(A152271(n))]`
-/

namespace A378040.P927651944756090617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P927651944756090617

namespace A378040

/-- `record[A377783(A152271(n))]` -/
def P927651944756090617.Spec : Prop :=
  ∀ n, P927651944756090617.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P4075197893904832436

`record[A377783(A222266(n+1))]`
-/

namespace A378040.P4075197893904832436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A222266 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P4075197893904832436

namespace A378040

/-- `record[A377783(A222266(n+1))]` -/
def P4075197893904832436.Spec : Prop :=
  ∀ n, P4075197893904832436.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P11304370855259972446

`record[A377783(A286449(n+1))]`
-/

namespace A378040.P11304370855259972446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A286449 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P11304370855259972446

namespace A378040

/-- `record[A377783(A286449(n+1))]` -/
def P11304370855259972446.Spec : Prop :=
  ∀ n, P11304370855259972446.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P6148662020036958920

`record[A377783(A351037(n+1))]`
-/

namespace A378040.P6148662020036958920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A351037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P6148662020036958920

namespace A378040

/-- `record[A377783(A351037(n+1))]` -/
def P6148662020036958920.Spec : Prop :=
  ∀ n, P6148662020036958920.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P11345358872980571815

`record[A377783(A289439(n+2))]`
-/

namespace A378040.P11345358872980571815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A289439 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P11345358872980571815

namespace A378040

/-- `record[A377783(A289439(n+2))]` -/
def P11345358872980571815.Spec : Prop :=
  ∀ n, P11345358872980571815.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P10856892618159344226

`record[A377783(A055396(n+1)+1)]`
-/

namespace A378040.P10856892618159344226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A055396 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P10856892618159344226

namespace A378040

/-- `record[A377783(A055396(n+1)+1)]` -/
def P10856892618159344226.Spec : Prop :=
  ∀ n, P10856892618159344226.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P9527461963663200918

`record[A377783(A108954(n+1))]`
-/

namespace A378040.P9527461963663200918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A108954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P9527461963663200918

namespace A378040

/-- `record[A377783(A108954(n+1))]` -/
def P9527461963663200918.Spec : Prop :=
  ∀ n, P9527461963663200918.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P11310380570148840133

`record[A120327(A051698(n))]`
-/

namespace A378040.P11310380570148840133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A051698 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P11310380570148840133

namespace A378040

/-- `record[A120327(A051698(n))]` -/
def P11310380570148840133.Spec : Prop :=
  ∀ n, P11310380570148840133.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P7061032703437924878

`record[A120327(A002034(n+1))]`
-/

namespace A378040.P7061032703437924878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A002034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P7061032703437924878

namespace A378040

/-- `record[A120327(A002034(n+1))]` -/
def P7061032703437924878.Spec : Prop :=
  ∀ n, P7061032703437924878.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P11477252744885987334

`record[A120327(A006530(n+1))]`
-/

namespace A378040.P11477252744885987334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P11477252744885987334

namespace A378040

/-- `record[A120327(A006530(n+1))]` -/
def P11477252744885987334.Spec : Prop :=
  ∀ n, P11477252744885987334.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P7908226742749427195

`record[A120327(A014963(n+1))]`
-/

namespace A378040.P7908226742749427195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P7908226742749427195

namespace A378040

/-- `record[A120327(A014963(n+1))]` -/
def P7908226742749427195.Spec : Prop :=
  ∀ n, P7908226742749427195.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P12896381406893994778

`record[A120327(A020639(n+1))]`
-/

namespace A378040.P12896381406893994778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P12896381406893994778

namespace A378040

/-- `record[A120327(A020639(n+1))]` -/
def P12896381406893994778.Spec : Prop :=
  ∀ n, P12896381406893994778.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P17224607955792431311

`record[A120327(A027748(n+1))]`
-/

namespace A378040.P17224607955792431311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A027748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P17224607955792431311

namespace A378040

/-- `record[A120327(A027748(n+1))]` -/
def P17224607955792431311.Spec : Prop :=
  ∀ n, P17224607955792431311.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P268683583941406996

`record[A120327(A033677(n+1))]`
-/

namespace A378040.P268683583941406996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A033677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P268683583941406996

namespace A378040

/-- `record[A120327(A033677(n+1))]` -/
def P268683583941406996.Spec : Prop :=
  ∀ n, P268683583941406996.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P6276672198978133190

`record[A120327(A064989(n+1))]`
-/

namespace A378040.P6276672198978133190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A064989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P6276672198978133190

namespace A378040

/-- `record[A120327(A064989(n+1))]` -/
def P6276672198978133190.Spec : Prop :=
  ∀ n, P6276672198978133190.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P12541860206196634327

`record[A120327(A121053(n+1))]`
-/

namespace A378040.P12541860206196634327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A121053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P12541860206196634327

namespace A378040

/-- `record[A120327(A121053(n+1))]` -/
def P12541860206196634327.Spec : Prop :=
  ∀ n, P12541860206196634327.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P15034234905790788970

`record[A120327(A076605(n+2))]`
-/

namespace A378040.P15034234905790788970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A076605 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P15034234905790788970

namespace A378040

/-- `record[A120327(A076605(n+2))]` -/
def P15034234905790788970.Spec : Prop :=
  ∀ n, P15034234905790788970.a n = A378040 (n + 1)

end A378040

/-! ## A378040.P5596963535572784274

`record[A120327(A000010(n+1)+1)]`
-/

namespace A378040.P5596963535572784274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P5596963535572784274

namespace A378040

/-- `record[A120327(A000010(n+1)+1)]` -/
def P5596963535572784274.Spec : Prop :=
  ∀ n, P5596963535572784274.a n = A378040 (n + 1)

end A378040

/-!
# A378041: E.g.f. satisfies A(x) = exp( x * A(x)^2 / (1-x) ) / (1-x).

The programs for A378041, there is no canonical definition to state claims against.
-/

/-! ## A378041.P12545549568518706143

`A362664(A259763(n))+A096544(n)`
-/

namespace A378041.P12545549568518706143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362664 (A259763 n).toNat + A096544 n

end

end A378041.P12545549568518706143

/-!
# A378043: E.g.f. satisfies A(x) = (1+x) * exp( x * (1+x) * A(x)^2 ).

The programs for A378043, there is no canonical definition to state claims against.
-/

/-! ## A378043.P17097621663141279611

`A047449(A211825(n)+n²%3)`
-/

namespace A378043.P17097621663141279611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (A211825 n + ((n ^ 2 % 3 : ℕ) : ℤ)).toNat

end

end A378043.P17097621663141279611

/-!
# A378045: E.g.f. satisfies A(x) = (1+x) * exp(x * A(x)^2 / (1+x)).

The programs for A378045, there is no canonical definition to state claims against.
-/

/-! ## A378045.P5763261484424690033

`A190369(A168219(or(n, a(n-1))))` with `a(0)=1`
-/

namespace A378045.P5763261484424690033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A190369 (A168219 (Int.lor (n : ℤ) (a (n - 1))).toNat).toNat

end

end A378045.P5763261484424690033

/-!
# A378046: E.g.f. satisfies A(x) = (1+x) * exp(x * A(x)^3 / (1+x)^2).

The programs for A378046, there is no canonical definition to state claims against.
-/

/-! ## A378046.P14268970395642710826

`A319758(n)+A057519(A113089(n))`
-/

namespace A378046.P14268970395642710826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319758 n + A057519 (A113089 n).toNat

end

end A378046.P14268970395642710826

/-!
# A378047: E.g.f. satisfies A(x) = (1+x)^2 * exp(x * A(x) / (1+x)).

The programs for A378047, there is no canonical definition to state claims against.
-/

/-! ## A378047.P15019627047772544162

`∑[A156562(A063170(n))]`
-/

namespace A378047.P15019627047772544162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A063170 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378047.P15019627047772544162

/-!
# A378048: Numbers k such that k and k^2 together use at most 4 distinct decimal digits.

The programs for A378048, there is no canonical definition to state claims against.
-/

/-! ## A378048.P15888388909598404738

`lt[A370419(A287927(n+1)), A287934(n+1)]`
-/

namespace A378048.P15888388909598404738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 (A287927 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378048.P15888388909598404738

/-! ## A378048.P4487466831814597219

`lt[A001222(A075195(n+1)), A335465(2*n)]`
-/

namespace A378048.P4487466831814597219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A075195 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378048.P4487466831814597219

/-! ## A378048.P11651120096389258009

`lt[A109301(A187811(2*n+3)), 5]`
-/

namespace A378048.P11651120096389258009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109301 (A187811 (2 * n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A378048.P11651120096389258009

/-! ## A378048.P18233952999143739890

`lt[A001263(n+1), A046201(A054760(n))]`
-/

namespace A378048.P18233952999143739890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046201 (A054760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378048.P18233952999143739890

/-! ## A378048.P8722202196255080574

`lt[A181062(n+1), A191727(A210421(n+4))]`
-/

namespace A378048.P8722202196255080574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191727 (A210421 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378048.P8722202196255080574

/-!
# A378049: Numbers k such that the least m for which m*k is a lucky number (if such an m exists) sets a new record.

The programs for A378049, there is no canonical definition to state claims against.
-/

/-! ## A378049.P7467214310998191216

`A325395((3-(-1)^n)*a(floor(n/2))+1-(-1)^n)` with `a(0)=1, a(1)=5`
-/

namespace A378049.P7467214310998191216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A325395 ((3 - (-1) ^ n) * a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n)).toNat

end

end A378049.P7467214310998191216

/-!
# A378052: Records in A377778.

The programs for A378052, there is no canonical definition to state claims against.
-/

/-! ## A378052.P12822905329949291145

`record[A377778(3*(n+1)+n)]`
-/

namespace A378052.P12822905329949291145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377778 (3 * (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378052.P12822905329949291145

/-! ## A378052.P17244289635654071201

`A377778(A378051(n+1))`
-/

namespace A378052.P17244289635654071201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377778 (A378051 (n + 1)).toNat

end

end A378052.P17244289635654071201

/-!
# A378053: a(n) = gcd(Product_{d|n} (d + 1), Product_{d|n, d>1} (d - 1)) = gcd(A020696(n), A377484(n)).

The programs for A378053, the canonical program `A378053.P13354335164074839749` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378053 has offset 1).

The definition of A378053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, A377484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378053.P13354335164074839749

`gcd(A020696(n+1), A377484(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378053

/-- `gcd(A020696(n+1), A377484(n+1))` -/
def P13354335164074839749.Spec : Prop :=
  ∀ n, (P13354335164074839749.a n : ℤ) = A378053 (n + 1)

theorem P13354335164074839749.correct : P13354335164074839749.Spec := by
  intro n
  simp only [A378053, Nat.add_sub_cancel]

end A378053

/-!
# A378054: Numbers k that divide A378053(k) = gcd(Product_{d|k} (d + 1), Product_{d|k, d>1} (d - 1)).

The programs for A378054, there is no canonical definition to state claims against.
-/

/-! ## A378054.P4816586036195587246

`∩[A056954(n+1), A355331(n+1)]`
-/

namespace A378054.P4816586036195587246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378054.P4816586036195587246

/-! ## A378054.P18194090558857261231

`∩[A056954(n+1), A316114(n+1)]`
-/

namespace A378054.P18194090558857261231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378054.P18194090558857261231

/-! ## A378054.P10793652909871333414

`A204822(3*n+1)^A055396(A367278(n))`
-/

namespace A378054.P10793652909871333414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204822 (3 * n + 1) : ℚ) ^ (A055396 (A367278 n).toNat : ℤ)

end

end A378054.P10793652909871333414

/-!
# A378055: Numbers k such that k | A378053(k) and (k+1) | A378053(k+1).

The programs for A378055, there is no canonical definition to state claims against.
-/

/-! ## A378055.P9466362952586954313

`∩[A355332(n+1), A377949(n+1)]`
-/

namespace A378055.P9466362952586954313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378055.P9466362952586954313

/-!
# A378056: a(n) = gcd(A057643(n), A084190(n)) = gcd(lcm{d+1 : d|n}, lcm{d-1 : d > 1 and d|n}).

The programs for A378056, there is no canonical definition to state claims against.
-/

/-! ## A378056.P8630457392111572201

`gcd(A057643(n+1), A084190(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378056.P8630457392111572201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057643 (n + 1)) (A084190 (n + 1))

end

end A378056.P8630457392111572201

/-! ## A378056.P883433299788909726

`A019555(A378053(n+1)%A089085(n+1))`
-/

namespace A378056.P883433299788909726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (Int.tmod (A378053 (n + 1)) (A089085 (n + 1))).toNat

end

end A378056.P883433299788909726

/-! ## A378056.P10019646991931436945

`A019555(A378053(n+1)%A129224(n))`
-/

namespace A378056.P10019646991931436945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (Int.tmod (A378053 (n + 1)) (A129224 n)).toNat

end

end A378056.P10019646991931436945

/-! ## A378056.P7721197627252213947

`A019555(A378053(n+1))%A109933(n+3)`
-/

namespace A378056.P7721197627252213947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019555 (A378053 (n + 1)).toNat) (A109933 (n + 3))

end

end A378056.P7721197627252213947

/-!
# A378058: Numbers k that divide A378056(k) = gcd(lcm{d+1 : d|k}, lcm{d-1 : d > 1 and d|k}).

The programs for A378058, there is no canonical definition to state claims against.
-/

/-! ## A378058.P6442953496989487074

`∩[A377950(n+1), A377952(n+1)]`
-/

namespace A378058.P6442953496989487074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378058.P6442953496989487074

/-!
# A378060: a(n) = binomial(n, floor((n-1)/2))^2.

The programs for A378060, the canonical program `A378060.P15833111886239977344` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378060 has offset 0).

The definition of A378060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378060.P13886530368823281396

`C(n, ∑[log2(gcd(2, n))])²`
-/

namespace A378060.P13886530368823281396
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat ^ 2

end

end A378060.P13886530368823281396

namespace A378060

/-- `C(n, ∑[log2(gcd(2, n))])²` -/
def P13886530368823281396.Spec : Prop :=
  ∀ n, (P13886530368823281396.a n : ℤ) = A378060 n

end A378060

/-! ## A378060.P15833111886239977344

`Δ[C(n, floor(n/2))]²`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A378060

/-- `Δ[C(n, floor(n/2))]²` -/
def P15833111886239977344.Spec : Prop :=
  ∀ n, P15833111886239977344.a n = A378060 n

theorem P15833111886239977344.correct : P15833111886239977344.Spec := by
  intro n
  simp only [A378060]

end A378060

/-! ## A378060.P10371651444724200950

`C(n, ∑[char[2*n]])²`
-/

namespace A378060.P10371651444724200950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A378060.P10371651444724200950

namespace A378060

/-- `C(n, ∑[char[2*n]])²` -/
def P10371651444724200950.Spec : Prop :=
  ∀ n, (P10371651444724200950.a n : ℤ) = A378060 n

end A378060

/-! ## A378060.P3346991402031376458

`Δ[n*a(n-1)/∑[n%2]]²` with `a(0)=1`
-/

namespace A378060.P3346991402031376458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) * (f1 (n - 1) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P3346991402031376458

namespace A378060

/-- `Δ[n*a(n-1)/∑[n%2]]²` -/
def P3346991402031376458.Spec : Prop :=
  ∀ n, P3346991402031376458.a n = (A378060 n : ℚ)

end A378060

/-! ## A378060.P8552502408881934218

`Δ[(∏[2*or(1, n)/(n+1)]-2)/2]²`
-/

namespace A378060.P8552502408881934218
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j - 2) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P8552502408881934218

namespace A378060

/-- `Δ[(∏[2*or(1, n)/(n+1)]-2)/2]²` -/
def P8552502408881934218.Spec : Prop :=
  ∀ n, P8552502408881934218.a n = (A378060 n : ℚ)

end A378060

/-! ## A378060.P15269400642321297060

`A037952(n)²`
-/

namespace A378060.P15269400642321297060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n ^ 2

end

end A378060.P15269400642321297060

namespace A378060

/-- `A037952(n)²` -/
def P15269400642321297060.Spec : Prop :=
  ∀ n, P15269400642321297060.a n = A378060 n

end A378060

/-! ## A378060.P8100225966532327260

`Δ[A001405(n)]²`
-/

namespace A378060.P8100225966532327260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P8100225966532327260

namespace A378060

/-- `Δ[A001405(n)]²` -/
def P8100225966532327260.Spec : Prop :=
  ∀ n, P8100225966532327260.a n = A378060 n

end A378060

/-! ## A378060.P8485000677543595062

`Δ[A014495(n)]²`
-/

namespace A378060.P8485000677543595062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P8485000677543595062

namespace A378060

/-- `Δ[A014495(n)]²` -/
def P8485000677543595062.Spec : Prop :=
  ∀ n, P8485000677543595062.a n = A378060 n

end A378060

/-! ## A378060.P15191694027600670787

`Δ[A051920(n)]²`
-/

namespace A378060.P15191694027600670787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P15191694027600670787

namespace A378060

/-- `Δ[A051920(n)]²` -/
def P15191694027600670787.Spec : Prop :=
  ∀ n, P15191694027600670787.a n = A378060 n

end A378060

/-! ## A378060.P16687322472723304358

`Δ[A201686(n)]²`
-/

namespace A378060.P16687322472723304358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P16687322472723304358

namespace A378060

/-- `Δ[A201686(n)]²` -/
def P16687322472723304358.Spec : Prop :=
  ∀ n, P16687322472723304358.a n = A378060 n

end A378060

/-! ## A378060.P12744695737804186548

`Δ[abs(A126930(n))]²`
-/

namespace A378060.P12744695737804186548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P12744695737804186548

namespace A378060

/-- `Δ[abs(A126930(n))]²` -/
def P12744695737804186548.Spec : Prop :=
  ∀ n, P12744695737804186548.a n = A378060 n

end A378060

/-! ## A378060.P3227799206223660835

`∑[A191529(n+1)]²`
-/

namespace A378060.P3227799206223660835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A378060.P3227799206223660835

namespace A378060

/-- `∑[A191529(n+1)]²` -/
def P3227799206223660835.Spec : Prop :=
  ∀ n, P3227799206223660835.a n = A378060 n

end A378060

/-! ## A378060.P11681877577394518600

`Δ[A210736(n+1)]²`
-/

namespace A378060.P11681877577394518600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P11681877577394518600

namespace A378060

/-- `Δ[A210736(n+1)]²` -/
def P11681877577394518600.Spec : Prop :=
  ∀ n, P11681877577394518600.a n = A378060 n

end A378060

/-! ## A378060.P5660562518756720900

`Δ[A218008(n)/2]²`
-/

namespace A378060.P5660562518756720900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218008 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P5660562518756720900

namespace A378060

/-- `Δ[A218008(n)/2]²` -/
def P5660562518756720900.Spec : Prop :=
  ∀ n, P5660562518756720900.a n = (A378060 n : ℚ)

end A378060

/-! ## A378060.P13237391607098982495

`(1-A258144(n+1))²`
-/

namespace A378060.P13237391607098982495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A258144 (n + 1)) ^ 2

end

end A378060.P13237391607098982495

namespace A378060

/-- `(1-A258144(n+1))²` -/
def P13237391607098982495.Spec : Prop :=
  ∀ n, P13237391607098982495.a n = A378060 n

end A378060

/-! ## A378060.P5609813703491162985

`Δ[Δ[A072100(n+1)]]²`
-/

namespace A378060.P5609813703491162985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P5609813703491162985

namespace A378060

/-- `Δ[Δ[A072100(n+1)]]²` -/
def P5609813703491162985.Spec : Prop :=
  ∀ n, P5609813703491162985.a n = A378060 n

end A378060

/-! ## A378060.P6094886754828252267

`Δ[A063886(n+1)/2]²`
-/

namespace A378060.P6094886754828252267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P6094886754828252267

namespace A378060

/-- `Δ[A063886(n+1)/2]²` -/
def P6094886754828252267.Spec : Prop :=
  ∀ n, P6094886754828252267.a n = (A378060 n : ℚ)

end A378060

/-! ## A378060.P18177431106066281156

`Δ[A100071(n+1)/(n+1)]²`
-/

namespace A378060.P18177431106066281156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A378060.P18177431106066281156

namespace A378060

/-- `Δ[A100071(n+1)/(n+1)]²` -/
def P18177431106066281156.Spec : Prop :=
  ∀ n, P18177431106066281156.a n = (A378060 n : ℚ)

end A378060

/-! ## A378060.P8665143169937357359

`(A126930(n+1)+A126930(n))²`
-/

namespace A378060.P8665143169937357359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126930 (n + 1) + A126930 n) ^ 2

end

end A378060.P8665143169937357359

namespace A378060

/-- `(A126930(n+1)+A126930(n))²` -/
def P8665143169937357359.Spec : Prop :=
  ∀ n, P8665143169937357359.a n = A378060 n

end A378060

/-! ## A378060.P10520542827214478221

`(A001405(n+1)-A001405(n))²`
-/

namespace A378060.P10520542827214478221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) - A001405 n) ^ 2

end

end A378060.P10520542827214478221

namespace A378060

/-- `(A001405(n+1)-A001405(n))²` -/
def P10520542827214478221.Spec : Prop :=
  ∀ n, P10520542827214478221.a n = A378060 n

end A378060

/-!
# A378061: Triangle read by rows: T(n, k) = binomial(n + 1, (n - k)/2)^2*(k + 1)/(n + 1) if n - k is even, otherwise 0.

The programs for A378061, there is no canonical definition to state claims against.
-/

/-! ## A378061.P10050502776243644264

`comp[∑[4*n]]%2*A052174(n)`
-/

namespace A378061.P10050502776243644264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A052174 n

end

end A378061.P10050502776243644264

/-! ## A378061.P10077898243804374061

`A053121(n)*A117178(n)`
-/

namespace A378061.P10077898243804374061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A117178 n

end

end A378061.P10077898243804374061

/-! ## A378061.P7212847191165604327

`A053121(n)*A117184(n)`
-/

namespace A378061.P7212847191165604327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A117184 n

end

end A378061.P7212847191165604327

/-! ## A378061.P4721210054491306120

`A117178(n)*A165621(n)`
-/

namespace A378061.P4721210054491306120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117178 n * A165621 n

end

end A378061.P4721210054491306120

/-! ## A378061.P16595303699949552964

`A117178(n)*A189231(n)`
-/

namespace A378061.P16595303699949552964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117178 n * A189231 n

end

end A378061.P16595303699949552964

/-! ## A378061.P16925398497744003115

`lcm(A052174(n), A053121(n))`
-/

namespace A378061.P16925398497744003115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052174 n) (A053121 n)

end

end A378061.P16925398497744003115

/-! ## A378061.P14284217946928830661

`A052174(n)*A128174(n+1)`
-/

namespace A378061.P14284217946928830661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 n * A128174 (n + 1)

end

end A378061.P14284217946928830661

/-! ## A378061.P15010981665714740084

`A053121(n)*A335322(n+1)`
-/

namespace A378061.P15010981665714740084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A335322 (n + 1)

end

end A378061.P15010981665714740084

/-!
# A378062: Array read by ascending antidiagonals: A(n, k) = (n + 1)*binomial(2*k + n - 1, k - 1)^2 / (2*k + n - 1) for k > 0, and A(n, 0) = 0.

The programs for A378062, there is no canonical definition to state claims against.
-/

/-! ## A378062.P5525155070580024474

`A156080(A208918(n+1))*A172236(n+1)`
-/

namespace A378062.P5525155070580024474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156080 (A208918 (n + 1)).toNat * A172236 (n + 1)

end

end A378062.P5525155070580024474

/-! ## A378062.P7264831490080011721

`(A265648(A156953(n))+A172236(n+1))*A172236(n+1)`
-/

namespace A378062.P7264831490080011721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A265648 (A156953 n).toNat + A172236 (n + 1)) * A172236 (n + 1)

end

end A378062.P7264831490080011721

/-! ## A378062.P7168180302308700234

`A117707(A112367(n)*A135313(n))`
-/

namespace A378062.P7168180302308700234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A112367 n * A135313 n).toNat

end

end A378062.P7168180302308700234

/-! ## A378062.P10835886780849186019

`A273699(A249026(n))%(A182406(n+1)!%46)`
-/

namespace A378062.P10835886780849186019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273699 (A249026 n).toNat) ((Nat.factorial (A182406 (n + 1)).toNat % 46 : ℕ) : ℤ)

end

end A378062.P10835886780849186019

/-!
# A378063: a(n) = (-2*n)^n * Euler(n, (n - 1)/(2*n)) for n >= 1, and a(0) = 1. Main diagonal of A378066.

The programs for A378063, there is no canonical definition to state claims against.
-/

/-! ## A378063.P13606460348478956100

`A378066(∑[4*n])`
-/

namespace A378063.P13606460348478956100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378066 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378063.P13606460348478956100

/-!
# A378064: a(n) = 5*n^4 - 6*n^2 + 1. Column 4 of A378066.

The programs for A378064, the canonical program `A378064.P7835891324193449087` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378064 has offset 0).

The definition of A378064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n^4-6*n²+1` (program `A378064.P7835891324193449087`, by `A378064.P7835891324193449087.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A378064.P7835891324193449087

`5*n^4-6*n²+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A378064

/-- `5*n^4-6*n²+1` -/
def P7835891324193449087.Spec : Prop :=
  ∀ n, P7835891324193449087.a n = A378064 n

theorem P7835891324193449087.correct : P7835891324193449087.Spec := by
  intro n
  simp only [A378064]

end A378064

/-! ## A378064.P13735400170559376949

`A378066(A261422(n+3)+4)`
-/

namespace A378064.P13735400170559376949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378066 (A261422 (n + 3) + 4).toNat

end

end A378064.P13735400170559376949

namespace A378064

/-- `A378066(A261422(n+3)+4)` -/
def P13735400170559376949.Spec : Prop :=
  ∀ n, P13735400170559376949.a n = A378064 n

end A378064

/-!
# A378065: a(n) = (-10)^n * Euler(n, 2/5). Row 5 of A378066.

The programs for A378065, there is no canonical definition to state claims against.
-/

/-! ## A378065.P637403338091875002

`A378066(∑[n+4]+11+n+n)`
-/

namespace A378065.P637403338091875002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378066 (∑ j ∈ Finset.range (n + 1), f1 j + 11 + n + n)

end

end A378065.P637403338091875002

/-!
# A378068: Table read by row: T(n, k) = Sum_{j=0..k} A217831(n, j). Partial row sums of Euclid's triangle.

The programs for A378068, there is no canonical definition to state claims against.
-/

/-! ## A378068.P5278417960758531474

`A036580(lt[A339088(n), A046660(n+1)])`
-/

namespace A378068.P5278417960758531474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378068.P5278417960758531474

/-! ## A378068.P3076194082559802112

`A287397(A052843(n+1))`
-/

namespace A378068.P3076194082559802112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287397 (A052843 (n + 1)).toNat

end

end A378068.P3076194082559802112

/-! ## A378068.P1102850496569915384

`A276084(Δ[A370585(2*(n+2))])`
-/

namespace A378068.P1102850496569915384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370585 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (f1 (n + 1) - f1 n).toNat

end

end A378068.P1102850496569915384

/-! ## A378068.P7819155329488594496

`A036577(A288772(n+1)+A115341(n))`
-/

namespace A378068.P7819155329488594496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A288772 (n + 1) + A115341 n).toNat

end

end A378068.P7819155329488594496

/-! ## A378068.P2823551455608878759

`A071625(A359971(n+4))-A010054(n)`
-/

namespace A378068.P2823551455608878759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A359971 (n + 4)).toNat - A010054 n

end

end A378068.P2823551455608878759

/-!
# A378069: a(n) = Sum_{k=0..n} binomial(n, floor(k/2 - 1/2)) * binomial(n, ceiling(k/2 - 1/2)).

The programs for A378069, there is no canonical definition to state claims against.
-/

/-! ## A378069.P3520983989047053467

`A360861(n)-C(n, floor(n/2))²`
-/

namespace A378069.P3520983989047053467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360861 n - (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℤ)

end

end A378069.P3520983989047053467

/-! ## A378069.P3855111318875451743

`A001700(n)-A360861(n)`
-/

namespace A378069.P3855111318875451743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - A360861 n

end

end A378069.P3855111318875451743

/-! ## A378069.P11621173376865026538

`A360861(n)-A018224(n)`
-/

namespace A378069.P11621173376865026538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360861 n - A018224 n

end

end A378069.P11621173376865026538

/-! ## A378069.P6603753052437676763

`A360861(n)-A001405(n)²`
-/

namespace A378069.P6603753052437676763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360861 n - A001405 n ^ 2

end

end A378069.P6603753052437676763

/-! ## A378069.P7868142283964716467

`Δ[A024718(n)]-A360861(n)`
-/

namespace A378069.P7868142283964716467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A360861 n

end

end A378069.P7868142283964716467

/-!
# A378070: a(n) = binomial(n - 1, ceiling(n/2)) * binomial(n - 1, ceiling(n/2) - 1).

The programs for A378070, there is no canonical definition to state claims against.
-/

/-! ## A378070.P18098856245338148770

`A172101(A077221(n))`
-/

namespace A378070.P18098856245338148770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172101 (A077221 n).toNat

end

end A378070.P18098856245338148770

/-!
# A378071: a(n) = denominator((4^(2*n+1)*n!^2)/((2*n+3)*(2*n)!)).

The programs for A378071, the canonical program `A378071.P4414927123568891139` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378071 has offset 0).

The definition of A378071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378071.P15294912292873338700

`ratio[Δ[n²]]*A001803(n)`
-/

namespace A378071.P15294912292873338700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A001803 n : ℚ)

end

end A378071.P15294912292873338700

namespace A378071

/-- `ratio[Δ[n²]]*A001803(n)` -/
def P15294912292873338700.Spec : Prop :=
  ∀ n, P15294912292873338700.a n = (A378071 n : ℚ)

end A378071

/-! ## A378071.P4414927123568891139

`(2*n+3)*A001790(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378071

/-- `(2*n+3)*A001790(n)` -/
def P4414927123568891139.Spec : Prop :=
  ∀ n, P4414927123568891139.a n = A378071 n

theorem P4414927123568891139.correct : P4414927123568891139.Spec := by
  intro n
  simp only [A378071]

end A378071

/-! ## A378071.P17184606187837241657

`A001790(n)*A005408(n+1)`
-/

namespace A378071.P17184606187837241657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A005408 (n + 1)

end

end A378071.P17184606187837241657

namespace A378071

/-- `A001790(n)*A005408(n+1)` -/
def P17184606187837241657.Spec : Prop :=
  ∀ n, P17184606187837241657.a n = A378071 n

end A378071

/-! ## A378071.P2115528840206531070

`A001790(n)*A144396(n+1)`
-/

namespace A378071.P2115528840206531070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A144396 (n + 1)

end

end A378071.P2115528840206531070

namespace A378071

/-- `A001790(n)*A144396(n+1)` -/
def P2115528840206531070.Spec : Prop :=
  ∀ n, P2115528840206531070.a n = A378071 n

end A378071

/-! ## A378071.P778075023340980156

`A001790(n)*A060747(n+2)`
-/

namespace A378071.P778075023340980156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A060747 (n + 2)

end

end A378071.P778075023340980156

namespace A378071

/-- `A001790(n)*A060747(n+2)` -/
def P778075023340980156.Spec : Prop :=
  ∀ n, P778075023340980156.a n = A378071 n

end A378071

/-! ## A378071.P15341590288945386881

`A001790(n)+A001803(n)+A001790(n)`
-/

namespace A378071.P15341590288945386881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n + (A001803 n + A001790 n)

end

end A378071.P15341590288945386881

namespace A378071

/-- `A001790(n)+A001803(n)+A001790(n)` -/
def P15341590288945386881.Spec : Prop :=
  ∀ n, P15341590288945386881.a n = A378071 n

end A378071

/-! ## A378071.P256665657970835094

`A001803(n+1)/A001803(n)*A206771(n+1)`
-/

namespace A378071.P256665657970835094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001803 (n + 1) : ℚ) / (A001803 n : ℚ) * (A206771 (n + 1) : ℚ)

end

end A378071.P256665657970835094

namespace A378071

/-- `A001803(n+1)/A001803(n)*A206771(n+1)` -/
def P256665657970835094.Spec : Prop :=
  ∀ n, P256665657970835094.a n = (A378071 n : ℚ)

end A378071

/-! ## A378071.P8293472236662061658

`A004733(2*n)/(2*n+1)`
-/

namespace A378071.P8293472236662061658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004733 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A378071.P8293472236662061658

namespace A378071

/-- `A004733(2*n)/(2*n+1)` -/
def P8293472236662061658.Spec : Prop :=
  ∀ n, P8293472236662061658.a n = (A378071 n : ℚ)

end A378071

/-! ## A378071.P16632332608230672214

`(2*n+3)*A180955(∑[n])`
-/

namespace A378071.P16632332608230672214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A180955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378071.P16632332608230672214

namespace A378071

/-- `(2*n+3)*A180955(∑[n])` -/
def P16632332608230672214.Spec : Prop :=
  ∀ n, P16632332608230672214.a n = A378071 n

end A378071

/-!
# A378072: Number of elements in the completion of the Bruhat order on B_n.

The programs for A378072, there is no canonical definition to state claims against.
-/

/-! ## A378072.P16790057077943396607

`A007843(A107769(∑[n]))`
-/

namespace A378072.P16790057077943396607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (A107769 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A378072.P16790057077943396607

/-!
# A378073: Positive integers that are digitally balanced in some integer base b >= 2.

The programs for A378073, there is no canonical definition to state claims against.
-/

/-! ## A378073.P7055635306427590164

`comp[A378080(n+1)]`
-/

namespace A378073.P7055635306427590164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A378073.P7055635306427590164

/-! ## A378073.P11612609846954620885

`lt[0, A378191(n)]`
-/

namespace A378073.P11612609846954620885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A378073.P11612609846954620885

/-! ## A378073.P8766189923590050869

`eq[A368167(A238086(n+1)), A378191(n)]`
-/

namespace A378073.P8766189923590050869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368167 (A238086 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378073.P8766189923590050869

/-! ## A378073.P10174883011021036518

`eq[A001055(A156104(3*n+2)), A378191(n)]`
-/

namespace A378073.P10174883011021036518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A156104 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378073.P10174883011021036518

/-! ## A378073.P7275206117685163692

`eq[A368167(A001097(3*n+2)), A378191(n)]`
-/

namespace A378073.P7275206117685163692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368167 (A001097 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378073.P7275206117685163692

/-!
# A378077: Triangle read by rows: T(n,k) is the number of embeddings on the sphere of planar graphs with n vertices and k faces having connectivity exactly 2 and minimum vertex degree at least 3, k=6..2n-5.

The programs for A378077, there is no canonical definition to state claims against.
-/

/-! ## A378077.P7498824029853021883

`A040076(A188920(2*n+3)+A124765(n+3))`
-/

namespace A378077.P7498824029853021883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A188920 (2 * n + 3) + A124765 (n + 3)).toNat

end

end A378077.P7498824029853021883

/-!
# A378078: Number of noncrossing trees with n edges and all nodes having degree at most 3.

The programs for A378078, there is no canonical definition to state claims against.
-/

/-! ## A378078.P6743814617431346674

`A244225(A150641(n))`
-/

namespace A378078.P6743814617431346674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244225 (A150641 n).toNat

end

end A378078.P6743814617431346674

/-! ## A378078.P6926897696765597101

`A277193(A149073(n))`
-/

namespace A378078.P6926897696765597101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A149073 n).toNat

end

end A378078.P6926897696765597101

/-!
# A378080: Nonnegative integers that are not digitally balanced in any integer base b >= 2.

The programs for A378080, there is no canonical definition to state claims against.
-/

/-! ## A378080.P17724335369281907098

`comp[A378073(n+1)]`
-/

namespace A378080.P17724335369281907098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A378080.P17724335369281907098

/-! ## A378080.P2405442419845974835

`eq[0, A378191(n)]`
-/

namespace A378080.P2405442419845974835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A378080.P2405442419845974835

/-! ## A378080.P10011164416907914582

`lt[A378191(A028310(n)), 1]`
-/

namespace A378080.P10011164416907914582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A378080.P10011164416907914582

/-! ## A378080.P17344868658221900543

`lt[A378191(n), A031925(n+1)%2]`
-/

namespace A378080.P17344868658221900543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031925 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378080.P17344868658221900543

/-! ## A378080.P6625513217962359970

`lt[A378191(n), A038874(n+3)%2]`
-/

namespace A378080.P6625513217962359970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038874 (n + 3)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378080.P6625513217962359970

/-! ## A378080.P5400167158930753242

`lt[A378191(n), A336697(A113901(n+5))]`
-/

namespace A378080.P5400167158930753242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336697 (A113901 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378080.P5400167158930753242

/-! ## A378080.P4132439104682710633

`lt[A378191(n), A001221(A045344(n+1))]`
-/

namespace A378080.P4132439104682710633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A045344 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378080.P4132439104682710633

/-! ## A378080.P6023647444811947302

`lt[A378191(n), A004016(3*n+2)+1]`
-/

namespace A378080.P6023647444811947302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (3 * n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378080.P6023647444811947302

/-! ## A378080.P3243009352280689895

`lt[A378191(n), A000110(A004016(3*n+2))]`
-/

namespace A378080.P3243009352280689895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A004016 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378080.P3243009352280689895

/-! ## A378080.P8080020929902538620

`lt[A378191(n), A001221(A127925(n+1))]`
-/

namespace A378080.P8080020929902538620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A127925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378080.P8080020929902538620

/-! ## A378080.P1486803535100013077

`lt[A378191(n), A128174(A034856(n+1))]`
-/

namespace A378080.P1486803535100013077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A034856 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378080.P1486803535100013077

/-!
# A378083: Nonsquarefree numbers appearing exactly twice in A377783 (least nonsquarefree number > prime(n)).

The programs for A378083, there is no canonical definition to state claims against.
-/

/-! ## A378083.P780542886861650507

`record[A078579(n+1)+2]`
-/

namespace A378083.P780542886861650507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078579 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378083.P780542886861650507

/-! ## A378083.P7755452736191992106

`A003973(A061351(n))`
-/

namespace A378083.P7755452736191992106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A061351 n).toNat

end

end A378083.P7755452736191992106

/-! ## A378083.P17900548658981488883

`A377783(A068361(n+1))`
-/

namespace A378083.P17900548658981488883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A068361 (n + 1)).toNat

end

end A378083.P17900548658981488883

/-! ## A378083.P15446368054363846191

`A000203(or(3, A061351(n)))`
-/

namespace A378083.P15446368054363846191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lor 3 (A061351 n)).toNat

end

end A378083.P15446368054363846191

/-! ## A378083.P3051041302874025239

`A389447(or(3, A061351(n)))`
-/

namespace A378083.P3051041302874025239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389447 (Int.lor 3 (A061351 n)).toNat

end

end A378083.P3051041302874025239

/-!
# A378085: First differences of A070321 (greatest squarefree number <= n).

The programs for A378085, the canonical program `A378085.P12109818959703916191` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378085 has offset 1).

The definition of A378085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378085.P12109818959703916191

`1-Δ[A378619(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378085

/-- `1-Δ[A378619(n+1)]` -/
def P12109818959703916191.Spec : Prop :=
  ∀ n, P12109818959703916191.a n = A378085 (n + 1)

theorem P12109818959703916191.correct : P12109818959703916191.Spec := by
  intro n
  simp only [A378085, Nat.add_sub_cancel]

end A378085

/-! ## A378085.P7117855894270267361

`Δ[A005117(A013928(n+2))]`
-/

namespace A378085.P7117855894270267361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A013928 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378085.P7117855894270267361

namespace A378085

/-- `Δ[A005117(A013928(n+2))]` -/
def P7117855894270267361.Spec : Prop :=
  ∀ n, P7117855894270267361.a n = A378085 (n + 1)

end A378085

/-! ## A378085.P676646149115662666

`Δ[A070321(n+1)]`
-/

namespace A378085.P676646149115662666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378085.P676646149115662666

namespace A378085

/-- `Δ[A070321(n+1)]` -/
def P676646149115662666.Spec : Prop :=
  ∀ n, P676646149115662666.a n = A378085 (n + 1)

end A378085

/-! ## A378085.P9967363544393242465

`Δ[A005117(∑[A008966(n+1)])]`
-/

namespace A378085.P9967363544393242465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378085.P9967363544393242465

namespace A378085

/-- `Δ[A005117(∑[A008966(n+1)])]` -/
def P9967363544393242465.Spec : Prop :=
  ∀ n, P9967363544393242465.a n = A378085 (n + 1)

end A378085

/-! ## A378085.P9852246065438065936

`A070321(n+2)-A070321(n+1)`
-/

namespace A378085.P9852246065438065936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (n + 2) - A070321 (n + 1)

end

end A378085.P9852246065438065936

namespace A378085

/-- `A070321(n+2)-A070321(n+1)` -/
def P9852246065438065936.Spec : Prop :=
  ∀ n, P9852246065438065936.a n = A378085 (n + 1)

end A378085

/-! ## A378085.P10122818049159204227

`Δ[A005117(∑[char[∏{p}[n, #]-1]])]`
-/

namespace A378085.P10122818049159204227
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378085.P10122818049159204227

namespace A378085

/-- `Δ[A005117(∑[char[∏{p}[n, #]-1]])]` -/
def P10122818049159204227.Spec : Prop :=
  ∀ n, P10122818049159204227.a n = A378085 (n + 1)

end A378085

/-!
# A378086: Number of nonsquarefree numbers < prime(n).

The programs for A378086, there is no canonical definition to state claims against.
-/

/-! ## A378086.P652733009658938002

`A061399(n)+a(n-1)` with `a(0)=0`
-/

namespace A378086.P652733009658938002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A061399 n + a (n - 1)

end

end A378086.P652733009658938002

/-! ## A378086.P4644676759296668075

`∑[A061399(abs(1-n)+1)]-1`
-/

namespace A378086.P4644676759296668075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061399 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A378086.P4644676759296668075

/-! ## A378086.P10704829856495781180

`∑[A061399(A028310(n))]`
-/

namespace A378086.P10704829856495781180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061399 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378086.P10704829856495781180

/-! ## A378086.P252355636786731292

`A057627(∑[A075526(n)])`
-/

namespace A378086.P252355636786731292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378086.P252355636786731292

/-! ## A378086.P1629539357419581861

`A057627(Δ[A007504(n)])`
-/

namespace A378086.P1629539357419581861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (f1 (n + 1) - f1 n).toNat

end

end A378086.P1629539357419581861

/-! ## A378086.P6542279341321239931

`A057627(A000040(n+1))`
-/

namespace A378086.P6542279341321239931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A000040 (n + 1)).toNat

end

end A378086.P6542279341321239931

/-! ## A378086.P2127502603983340585

`A057627(A006005(n+1))`
-/

namespace A378086.P2127502603983340585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A006005 (n + 1)).toNat

end

end A378086.P2127502603983340585

/-! ## A378086.P466119971118834628

`A057627(A006093(n+1))`
-/

namespace A378086.P466119971118834628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A006093 (n + 1)).toNat

end

end A378086.P466119971118834628

/-! ## A378086.P12730672604361982067

`A057627(A039915(n+1))`
-/

namespace A378086.P12730672604361982067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A039915 (n + 1)).toNat

end

end A378086.P12730672604361982067

/-! ## A378086.P1083002613481731068

`A057627(A156037(n+1))`
-/

namespace A378086.P1083002613481731068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A156037 (n + 1)).toNat

end

end A378086.P1083002613481731068

/-!
# A378087: First-differences of A067535 (least positive integer >= n that is squarefree).

The programs for A378087, the canonical program `A378087.P5730754973821830144` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378087 has offset 1).

The definition of A378087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378087.P5730754973821830144

`Δ[A081221(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378087

/-- `Δ[A081221(n+1)]+1` -/
def P5730754973821830144.Spec : Prop :=
  ∀ n, P5730754973821830144.a n = A378087 (n + 1)

theorem P5730754973821830144.correct : P5730754973821830144.Spec := by
  intro n
  simp only [A378087, Nat.add_sub_cancel]

end A378087

/-! ## A378087.P12015938703470262057

`Δ[A005117(A107079(n+1))]`
-/

namespace A378087.P12015938703470262057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A107079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378087.P12015938703470262057

namespace A378087

/-- `Δ[A005117(A107079(n+1))]` -/
def P12015938703470262057.Spec : Prop :=
  ∀ n, P12015938703470262057.a n = A378087 (n + 1)

end A378087

/-! ## A378087.P9727136616291256811

`Δ[A005117(A013928(n+1)+1)]`
-/

namespace A378087.P9727136616291256811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A013928 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378087.P9727136616291256811

namespace A378087

/-- `Δ[A005117(A013928(n+1)+1)]` -/
def P9727136616291256811.Spec : Prop :=
  ∀ n, P9727136616291256811.a n = A378087 (n + 1)

end A378087

/-! ## A378087.P16606110518705443162

`A072909(n+1)-A081221(n+1)`
-/

namespace A378087.P16606110518705443162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (n + 1) - A081221 (n + 1)

end

end A378087.P16606110518705443162

namespace A378087

/-- `A072909(n+1)-A081221(n+1)` -/
def P16606110518705443162.Spec : Prop :=
  ∀ n, P16606110518705443162.a n = A378087 (n + 1)

end A378087

/-! ## A378087.P5248537213880253052

`A008966(n+1)*A072909(n+1)`
-/

namespace A378087.P5248537213880253052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A072909 (n + 1)

end

end A378087.P5248537213880253052

namespace A378087

/-- `A008966(n+1)*A072909(n+1)` -/
def P5248537213880253052.Spec : Prop :=
  ∀ n, P5248537213880253052.a n = A378087 (n + 1)

end A378087

/-! ## A378087.P11782515243479895327

`A008966(n+1)*A079229(n+1)`
-/

namespace A378087.P11782515243479895327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A079229 (n + 1)

end

end A378087.P11782515243479895327

namespace A378087

/-- `A008966(n+1)*A079229(n+1)` -/
def P11782515243479895327.Spec : Prop :=
  ∀ n, P11782515243479895327.a n = A378087 (n + 1)

end A378087

/-! ## A378087.P14545397468202160545

`lcm(A008683(n+1), A072909(n+1))`
-/

namespace A378087.P14545397468202160545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A072909 (n + 1))

end

end A378087.P14545397468202160545

namespace A378087

/-- `lcm(A008683(n+1), A072909(n+1))` -/
def P14545397468202160545.Spec : Prop :=
  ∀ n, (P14545397468202160545.a n : ℤ) = A378087 (n + 1)

end A378087

/-! ## A378087.P16111909485430382827

`lcm(A079229(n+1), A080323(n+1))`
-/

namespace A378087.P16111909485430382827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079229 (n + 1)) (A080323 (n + 1))

end

end A378087.P16111909485430382827

namespace A378087

/-- `lcm(A079229(n+1), A080323(n+1))` -/
def P16111909485430382827.Spec : Prop :=
  ∀ n, (P16111909485430382827.a n : ℤ) = A378087 (n + 1)

end A378087

/-! ## A378087.P5054973157967489768

`A378085(n+1)+A076260(n+2)-A076260(n+1)`
-/

namespace A378087.P5054973157967489768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378085 (n + 1) + (A076260 (n + 2) - A076260 (n + 1))

end

end A378087.P5054973157967489768

namespace A378087

/-- `A378085(n+1)+A076260(n+2)-A076260(n+1)` -/
def P5054973157967489768.Spec : Prop :=
  ∀ n, P5054973157967489768.a n = A378087 (n + 1)

end A378087

/-! ## A378087.P17208872644418470580

`Δ[A067535(n+1)]`
-/

namespace A378087.P17208872644418470580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378087.P17208872644418470580

namespace A378087

/-- `Δ[A067535(n+1)]` -/
def P17208872644418470580.Spec : Prop :=
  ∀ n, P17208872644418470580.a n = A378087 (n + 1)

end A378087

/-! ## A378087.P2261552149958536183

`A067535(n+2)-A067535(n+1)`
-/

namespace A378087.P2261552149958536183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 2) - A067535 (n + 1)

end

end A378087.P2261552149958536183

namespace A378087

/-- `A067535(n+2)-A067535(n+1)` -/
def P2261552149958536183.Spec : Prop :=
  ∀ n, P2261552149958536183.a n = A378087 (n + 1)

end A378087

/-!
# A378088: Repdigit untouchable numbers.

The programs for A378088, there is no canonical definition to state claims against.
-/

/-! ## A378088.P15493441965749175608

`∩[A048187(n+1), A010785(n)]`
-/

namespace A378088.P15493441965749175608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378088.P15493441965749175608

/-!
# A378090: E.g.f. satisfies A(x) = exp(x * (1-x)^2 * A(x)) / (1-x)^3.

The programs for A378090, there is no canonical definition to state claims against.
-/

/-! ## A378090.P8480768071307491589

`A187568((n+2)^n)`
-/

namespace A378090.P8480768071307491589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187568 ((n + 2) ^ n)

end

end A378090.P8480768071307491589

/-!
# A378091: E.g.f. satisfies A(x) = exp(x * (1-x)^3 * A(x)) / (1-x)^4.

The programs for A378091, there is no canonical definition to state claims against.
-/

/-! ## A378091.P1590252653953011560

`A063742(2*A082161(n+1))`
-/

namespace A378091.P1590252653953011560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (2 * A082161 (n + 1)).toNat

end

end A378091.P1590252653953011560

/-!
# A378092: E.g.f. satisfies A(x) = exp( x * (1-x) * A(x)^2 ) / (1-x).

The programs for A378092, there is no canonical definition to state claims against.
-/

/-! ## A378092.P4386328301801595685

`A361065(n)+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A378092.P4386328301801595685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A361065 n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A378092.P4386328301801595685

/-!
# A378093: E.g.f. satisfies A(x) = exp( x * (1-x)^2 * A(x)^3 ) / (1-x).

The programs for A378093, there is no canonical definition to state claims against.
-/

/-! ## A378093.P295947743084589377

`A057511(A187210(n)+A002753(n))`
-/

namespace A378093.P295947743084589377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057511 (A187210 n + A002753 n).toNat

end

end A378093.P295947743084589377

/-!
# A378099: The smallest number whose sum of proper divisors (aliquot parts) is the repunit number A002275(n) = (10^n - 1)/9.

The programs for A378099, there is no canonical definition to state claims against.
-/

/-! ## A378099.P13876486695444700228

`A070015(A002275(n))`
-/

namespace A378099.P13876486695444700228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A002275 n).toNat

end

end A378099.P13876486695444700228

