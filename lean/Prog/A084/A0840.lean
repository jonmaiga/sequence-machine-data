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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A084004: Squares obtained as a concatenation of k and 10's complement of k.

The programs for A084004, there is no canonical definition to state claims against.
-/

/-! ## A084004.P16094536609036958893

`A084005(n+1)²`
-/

namespace A084004.P16094536609036958893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084005 (n + 1) ^ 2

end

end A084004.P16094536609036958893

/-! ## A084004.P2207899711165222110

`A084005(n+1)^(A057979(2*n)+1)`
-/

namespace A084004.P2207899711165222110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084005 (n + 1) : ℚ) ^ (A057979 (2 * n) + 1 : ℤ)

end

end A084004.P2207899711165222110

/-! ## A084004.P15056176541659010059

`A084005(n+1)*A084005(-xor(n, -1))`
-/

namespace A084004.P15056176541659010059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084005 (n + 1) * A084005 (-Int.xor (n : ℤ) (-1)).toNat

end

end A084004.P15056176541659010059

/-! ## A084004.P9984474872333925546

`A084005(n+1)^A005811(xor(n, n+1)+1)`
-/

namespace A084004.P9984474872333925546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084005 (n + 1) : ℚ) ^ (A005811 (Nat.xor n (n + 1) + 1) : ℤ)

end

end A084004.P9984474872333925546

/-! ## A084004.P4759608724738015782

`A084005(n+1)^A320107(A084503(n))`
-/

namespace A084004.P4759608724738015782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084005 (n + 1) : ℚ) ^ (A320107 (A084503 n).toNat : ℤ)

end

end A084004.P4759608724738015782

/-!
# A084005: a(n) = sqrt(A084004(n)).

The programs for A084005, there is no canonical definition to state claims against.
-/

/-! ## A084005.P7847294068819477872

`sqrt(A084004(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084005.P7847294068819477872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A084004 (n + 1) : ℝ)

end

end A084005.P7847294068819477872

/-! ## A084005.P14776822047494912917

`root(A084004(n+1), A010673(2*n+1))`
-/

namespace A084005.P14776822047494912917
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A084004 (n + 1) : ℝ) ^ (1 / (A010673 (2 * n + 1) : ℝ))

end

end A084005.P14776822047494912917

/-! ## A084005.P10839825816166984712

`A107677(∑[A107910(2*(n+1))])`
-/

namespace A084005.P10839825816166984712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107910 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107677 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084005.P10839825816166984712

/-! ## A084005.P6070595953972750639

`A000027(root(A084004(n+1), 2))`
-/

namespace A084005.P6070595953972750639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A084004 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A084005.P6070595953972750639

/-! ## A084005.P17388926386003955155

`A107677(A076084(n+1))`
-/

namespace A084005.P17388926386003955155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107677 (A076084 (n + 1)).toNat

end

end A084005.P17388926386003955155

/-!
# A084006: Squares arising as a concatenation of k and 9's complement of k.

The programs for A084006, there is no canonical definition to state claims against.
-/

/-! ## A084006.P10928058973934004623

`A084007(n)²`
-/

namespace A084006.P10928058973934004623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084007 n ^ 2

end

end A084006.P10928058973934004623

/-! ## A084006.P2258121957883818037

`A084007(n)^gcd(2, A001105(n))`
-/

namespace A084006.P2258121957883818037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084007 n ^ Int.gcd 2 (A001105 n)

end

end A084006.P2258121957883818037

/-! ## A084006.P4933671758311093007

`A084007(n)^A020639(A017113(n))`
-/

namespace A084006.P4933671758311093007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084007 n : ℚ) ^ (A020639 (A017113 n).toNat : ℤ)

end

end A084006.P4933671758311093007

/-! ## A084006.P18012487415050125043

`A084007(n)^A020639(A259058(n))`
-/

namespace A084006.P18012487415050125043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084007 n : ℚ) ^ (A020639 (A259058 n).toNat : ℤ)

end

end A084006.P18012487415050125043

/-!
# A084007: a(n) = A084006(n)^(1/2).

The programs for A084007, there is no canonical definition to state claims against.
-/

/-! ## A084007.P12155499855148030027

`A084006(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084007.P12155499855148030027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A084006 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A084007.P12155499855148030027

/-! ## A084007.P14232182541260206042

`sqrt(A084006(n+1))`
-/

namespace A084007.P14232182541260206042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A084006 (n + 1) : ℝ)

end

end A084007.P14232182541260206042

/-! ## A084007.P13621664797656431343

`root(A084006(Δ[n²]-n), 2)`
-/

namespace A084007.P13621664797656431343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A084006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A084007.P13621664797656431343

/-! ## A084007.P17319384489711868057

`root(A084006(n+1), 2)%A000108(n+4)`
-/

namespace A084007.P17319384489711868057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A084006 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000108 (n + 4))

end

end A084007.P17319384489711868057

/-! ## A084007.P9990757673717604032

`root(A084006(n+1), 2)*gcd(n, A016993(n))`
-/

namespace A084007.P9990757673717604032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A084006 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (Int.gcd (n : ℤ) (A016993 n) : ℝ)

end

end A084007.P9990757673717604032

/-!
# A084008: a(n) = T(n) concatenated with reverse(T(n)) divided by 11, where T(n) is the n-th triangular number.

The programs for A084008, there is no canonical definition to state claims against.
-/

/-! ## A084008.P8734099281010103468

`A066492(A179865(n+1))+n²%(n+1)-1`
-/

namespace A084008.P8734099281010103468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A179865 (n + 1)).toNat + (((n ^ 2 % (n + 1) : ℕ) : ℤ) - 1)

end

end A084008.P8734099281010103468

/-! ## A084008.P8581289659611089786

`A066492(A179865(n+1))-A000007(n)`
-/

namespace A084008.P8581289659611089786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A179865 (n + 1)).toNat - A000007 n

end

end A084008.P8581289659611089786

/-! ## A084008.P6039247155764236138

`A000040(n+1)%2*A066492(A179865(n+1))`
-/

namespace A084008.P6039247155764236138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A066492 (A179865 (n + 1)).toNat

end

end A084008.P6039247155764236138

/-! ## A084008.P11592666957976359661

`and(1, A000040(3*n+1))*A066492(A179865(n+1))`
-/

namespace A084008.P11592666957976359661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (3 * n + 1)) * A066492 (A179865 (n + 1)).toNat

end

end A084008.P11592666957976359661

/-! ## A084008.P2232808366944596265

`A066492(A179865(n+1))%A007434(A244466(n+1))`
-/

namespace A084008.P2232808366944596265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066492 (A179865 (n + 1)).toNat) (A007434 (A244466 (n + 1)).toNat)

end

end A084008.P2232808366944596265

/-! ## A084008.P4636453676830753751

`A066492(A179865(n+1))%A001541(n)`
-/

namespace A084008.P4636453676830753751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066492 (A179865 (n + 1)).toNat) (A001541 n)

end

end A084008.P4636453676830753751

/-!
# A084009: a(n) = n^2 concatenated with reverse(n^2) divided by 11.

The programs for A084009, there is no canonical definition to state claims against.
-/

/-! ## A084009.P16671639368634160137

`A066492(A253909(n))-floor(acot(n))`
-/

namespace A084009.P16671639368634160137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A253909 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A084009.P16671639368634160137

/-! ## A084009.P14601262022851273243

`A066492(A253909(n))-A000007(n)`
-/

namespace A084009.P14601262022851273243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A253909 n).toNat - A000007 n

end

end A084009.P14601262022851273243

/-! ## A084009.P2324191935044808328

`A057427(n)*A066492(A253909(n))`
-/

namespace A084009.P2324191935044808328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A066492 (A253909 n).toNat

end

end A084009.P2324191935044808328

/-! ## A084009.P11309846056215289893

`A066492(A253909(n))%A060104(n)`
-/

namespace A084009.P11309846056215289893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066492 (A253909 n).toNat) (A060104 n)

end

end A084009.P11309846056215289893

/-! ## A084009.P5855680461702536672

`char[A133310(n)]*A066492(A253909(n))`
-/

namespace A084009.P5855680461702536672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A066492 (A253909 n).toNat

end

end A084009.P5855680461702536672

/-! ## A084009.P3462334647540393609

`A066492(A253909(n))+n-A028310(n)`
-/

namespace A084009.P3462334647540393609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A253909 n).toNat + ((n : ℤ) - A028310 n)

end

end A084009.P3462334647540393609

/-! ## A084009.P5588367078732415837

`A066492(A253909(n))-val(A000040(n+1), 2)`
-/

namespace A084009.P5588367078732415837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A253909 n).toNat - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A084009.P5588367078732415837

/-! ## A084009.P13141585203061771860

`A066492(A253909(n))+A008683(3*(n+1)²)`
-/

namespace A084009.P13141585203061771860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A253909 n).toNat + A008683 (3 * (n + 1) ^ 2)

end

end A084009.P13141585203061771860

/-! ## A084009.P4950998934569202419

`A066492(A253909(n))-C(A000010(n+1), 2*n)`
-/

namespace A084009.P4950998934569202419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A253909 n).toNat - (Nat.choose (A000010 (n + 1)).toNat (2 * n) : ℤ)

end

end A084009.P4950998934569202419

/-!
# A084010: a(n) = (2^n concatenated with Reverse(2^n)) divided by 11.

The programs for A084010, there is no canonical definition to state claims against.
-/

/-! ## A084010.P13870361805045375466

`A066492(2^n)`
-/

namespace A084010.P13870361805045375466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (2 ^ n)

end

end A084010.P13870361805045375466

/-! ## A084010.P15986507449118317402

`A056524(2^n)/11`
-/

namespace A084010.P15986507449118317402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056524 (2 ^ n) : ℚ) / 11

end

end A084010.P15986507449118317402

/-! ## A084010.P18228677271043425525

`A071274(A004094(n))`
-/

namespace A084010.P18228677271043425525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071274 (A004094 n).toNat

end

end A084010.P18228677271043425525

/-! ## A084010.P3268728897616269808

`record[A066492(A001316(n))]`
-/

namespace A084010.P3268728897616269808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084010.P3268728897616269808

/-! ## A084010.P10410699129527815197

`record[A066492(A055248(n))]`
-/

namespace A084010.P10410699129527815197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066492 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084010.P10410699129527815197

/-!
# A084011: Digit reversal of 11*n, divided by 11.

The programs for A084011, there is no canonical definition to state claims against.
-/

/-! ## A084011.P5265819237012192693

`A004086(11*(n+1))/11`
-/

namespace A084011.P5265819237012192693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004086 (11 * (n + 1)) : ℚ) / 11

end

end A084011.P5265819237012192693

/-! ## A084011.P7463411625996829399

`∑[Δ[A004086(11*n)]/11]`
-/

namespace A084011.P7463411625996829399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (11 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084011.P7463411625996829399

/-! ## A084011.P12265658982356897462

`A056964(11*(n+1))/11-(n+1)`
-/

namespace A084011.P12265658982356897462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056964 (11 * (n + 1)) : ℚ) / 11 - (n + 1 : ℚ)

end

end A084011.P12265658982356897462

/-! ## A084011.P11771045652849506865

`1-A056965(A285054(n+1))+n`
-/

namespace A084011.P11771045652849506865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056965 (A285054 (n + 1)).toNat + (n : ℤ)

end

end A084011.P11771045652849506865

/-!
# A084013: Smallest n-digit palindromic multiple of n. For n = 10k it is sufficient that the multiple is palindromic with leading zeros ignored. 0 if no such number exists.

The programs for A084013, there is no canonical definition to state claims against.
-/

/-! ## A084013.P7242582136597874637

`(n+1)*A084014(n+1)`
-/

namespace A084013.P7242582136597874637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084014 (n + 1)

end

end A084013.P7242582136597874637

/-! ## A084013.P8493262710581212695

`A084014(n+1)*A348553(n)`
-/

namespace A084013.P8493262710581212695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084014 (n + 1) * A348553 n

end

end A084013.P8493262710581212695

/-! ## A084013.P8732158428775435021

`record[A008619(n)*A084014(A158416(n))]`
-/

namespace A084013.P8732158428775435021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A084014 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084013.P8732158428775435021

/-! ## A084013.P8443178967418328245

`record[A084014(A158416(n))]*A348553(n)`
-/

namespace A084013.P8443178967418328245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084014 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A348553 n

end

end A084013.P8443178967418328245

/-! ## A084013.P8138278890981437259

`record[A084014(A290094(n))*A290094(n)]`
-/

namespace A084013.P8138278890981437259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084014 (A290094 n).toNat * A290094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084013.P8138278890981437259

/-!
# A084014: a(n) = A084013(n)/n.

The programs for A084014, there is no canonical definition to state claims against.
-/

/-! ## A084014.P17853752613202083692

`A084013(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084014.P17853752613202083692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084013 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A084014.P17853752613202083692

/-! ## A084014.P2903453816087084899

`record[A084013(A008619(n))/A052938(n)]`
-/

namespace A084014.P2903453816087084899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084013 (A008619 n).toNat : ℚ) / (A052938 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084014.P2903453816087084899

/-! ## A084014.P8450173877513184058

`record[A084013(A158416(n))/A008619(n)]`
-/

namespace A084014.P8450173877513184058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084013 (A158416 n).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084014.P8450173877513184058

/-! ## A084014.P5359568885504284537

`record[A084013(A158416(n))/A052938(n)]`
-/

namespace A084014.P5359568885504284537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084013 (A158416 n).toNat : ℚ) / (A052938 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084014.P5359568885504284537

/-! ## A084014.P1496804365037463285

`record[A084013(A158416(n))]/A348553(n)`
-/

namespace A084014.P1496804365037463285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084013 (A158416 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A348553 n : ℚ)

end

end A084014.P1496804365037463285

/-!
# A084016: a(n) = A084015(n)/n.

The programs for A084016, there is no canonical definition to state claims against.
-/

/-! ## A084016.P593262747854716631

`A084015(n+1)/A070939(A086953(n+2))`
-/

namespace A084016.P593262747854716631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084015 (n + 1) : ℚ) / (A070939 (A086953 (n + 2)).toNat : ℚ)

end

end A084016.P593262747854716631

/-!
# A084017: Smallest n-digit palindromic multiple of n with a digit sum that is also a multiple of n. For n = 10k it is sufficient that the multiple is palindromic with leading zeros ignored. 0 if no such number exists.

The programs for A084017, there is no canonical definition to state claims against.
-/

/-! ## A084017.P16873322325991665744

`(n+1)*A084018(n+1)`
-/

namespace A084017.P16873322325991665744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084018 (n + 1)

end

end A084017.P16873322325991665744

/-! ## A084017.P18395464736625292817

`A084018(n+1)*A348553(n)`
-/

namespace A084017.P18395464736625292817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084018 (n + 1) * A348553 n

end

end A084017.P18395464736625292817

/-! ## A084017.P14082852152886016269

`record[A008619(n)*A084018(A158416(n))]`
-/

namespace A084017.P14082852152886016269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A084018 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084017.P14082852152886016269

/-! ## A084017.P14552648450082523866

`record[A084018(A290094(n))*A290094(n)]`
-/

namespace A084017.P14552648450082523866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084018 (A290094 n).toNat * A290094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084017.P14552648450082523866

/-! ## A084017.P10560438229459327622

`A084018(A158416(2*n))*A158416(2*n)`
-/

namespace A084017.P10560438229459327622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084018 (A158416 (2 * n)).toNat * A158416 (2 * n)

end

end A084017.P10560438229459327622

/-!
# A084018: a(n) = A084017(n)/n.

The programs for A084018, there is no canonical definition to state claims against.
-/

/-! ## A084018.P4887970991097443764

`A084017(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084018.P4887970991097443764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084017 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A084018.P4887970991097443764

/-! ## A084018.P9734006714938601429

`record[A084017(A008619(n))/A052938(n)]`
-/

namespace A084018.P9734006714938601429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084017 (A008619 n).toNat : ℚ) / (A052938 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084018.P9734006714938601429

/-! ## A084018.P14177818474367726308

`record[A084017(A158416(n))/A008619(n)]`
-/

namespace A084018.P14177818474367726308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084017 (A158416 n).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084018.P14177818474367726308

/-! ## A084018.P12032541854551073091

`record[A084017(A158416(n))/A052938(n)]`
-/

namespace A084018.P12032541854551073091
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084017 (A158416 n).toNat : ℚ) / (A052938 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084018.P12032541854551073091

/-! ## A084018.P4943232118485379156

`record[A084017(A158416(n))]/A348553(n)`
-/

namespace A084018.P4943232118485379156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084017 (A158416 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A348553 n : ℚ)

end

end A084018.P4943232118485379156

/-!
# A084019: a(n) = 9's complement of n-th palindrome (A002113).

The programs for A084019, there is no canonical definition to state claims against.
-/

/-! ## A084019.P13309971183780362054

`A061601(A002113(n+1))`
-/

namespace A084019.P13309971183780362054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A002113 (n + 1)).toNat

end

end A084019.P13309971183780362054

/-! ## A084019.P16141046951338518890

`A061601(eq[n, A004086(n)])`
-/

namespace A084019.P16141046951338518890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084019.P16141046951338518890

/-! ## A084019.P13366646237737294218

`A061601(A014187(n)^(1/3))`
-/

namespace A084019.P13366646237737294218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.roundAway ((A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A084019.P13366646237737294218

/-! ## A084019.P15290565986670817863

`A061601(∑[A086862(n+1)]-A086862(n+1))`
-/

namespace A084019.P15290565986670817863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (∑ j ∈ Finset.range (n + 1), f1 j - A086862 (n + 1)).toNat

end

end A084019.P15290565986670817863

/-! ## A084019.P10583877559649303051

`A061601(eq[2*n, A056964(n)])`
-/

namespace A084019.P10583877559649303051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084019.P10583877559649303051

/-! ## A084019.P14219952144003975658

`A061601(eq[n, A056964(n)/2])`
-/

namespace A084019.P14219952144003975658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056964 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A084019.P14219952144003975658

/-! ## A084019.P15605093747428723107

`A061601(eq[n, A056964(n)-n])`
-/

namespace A084019.P15605093747428723107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084019.P15605093747428723107

/-! ## A084019.P13706861280881564820

`A061601(record[A047813(n)])`
-/

namespace A084019.P13706861280881564820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084019.P13706861280881564820

/-! ## A084019.P13921397926514395642

`A061601(record[A265525(n)])`
-/

namespace A084019.P13921397926514395642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084019.P13921397926514395642

/-! ## A084019.P11801389309672666399

`A061601(eq[0, A056965(n)])`
-/

namespace A084019.P11801389309672666399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084019.P11801389309672666399

/-! ## A084019.P1544080864411283539

`A267193(eq[n, A004086(n)])`
-/

namespace A084019.P1544080864411283539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084019.P1544080864411283539

/-! ## A084019.P16275408864639445900

`A061601(eq[n², A061205(n)])`
-/

namespace A084019.P16275408864639445900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084019.P16275408864639445900

/-! ## A084019.P307019537945433548

`A061601(record[gcd(n, A082216(n))])`
-/

namespace A084019.P307019537945433548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A082216 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A084019.P307019537945433548

/-! ## A084019.P4570976050288504656

`A109910(A002113(2*n+1-n))`
-/

namespace A084019.P4570976050288504656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109910 (A002113 (2 * n + 1 - n)).toNat

end

end A084019.P4570976050288504656

/-! ## A084019.P17949095685340952626

`A061601(eq[A061601(n), A267193(n)])`
-/

namespace A084019.P17949095685340952626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084019.P17949095685340952626

/-! ## A084019.P1464595262237843899

`A061601(eq[A256754(n), A256755(n)])`
-/

namespace A084019.P1464595262237843899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084019.P1464595262237843899

/-!
# A084020: Numbers which are either a divisor or a multiple of their 9's complement.

The programs for A084020, there is no canonical definition to state claims against.
-/

/-! ## A084020.P3251015724798595142

`eq[A043562(n), A078588(A048307(n))]`
-/

namespace A084020.P3251015724798595142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A048307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084020.P3251015724798595142

/-! ## A084020.P10440744439985092318

`eq[A078588(A048307(n)), A196222(n)]`
-/

namespace A084020.P10440744439985092318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A048307 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084020.P10440744439985092318

/-! ## A084020.P8135770742901897257

`eq[A078588(A048307(n)), A329340(n)]`
-/

namespace A084020.P8135770742901897257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A048307 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084020.P8135770742901897257

/-! ## A084020.P12029334117676453078

`lt[A151949(n), A078588(A048307(n))]`
-/

namespace A084020.P12029334117676453078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A048307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084020.P12029334117676453078

/-!
# A084021: Product of n and its 9's complement.

The programs for A084021, the canonical program `A084021.P10020689395487424378` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084021 has offset 0).

The definition of A084021 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061601, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084021.P10020689395487424378

`n*A061601(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A084021

/-- `n*A061601(n)` -/
def P10020689395487424378.Spec : Prop :=
  ∀ n, P10020689395487424378.a n = A084021 n

theorem P10020689395487424378.correct : P10020689395487424378.Spec := by
  intro n
  simp only [A084021]

end A084021

/-! ## A084021.P4549294090272891261

`n*(A178914(n)-1)`
-/

namespace A084021.P4549294090272891261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A178914 n - 1)

end

end A084021.P4549294090272891261

namespace A084021

/-- `n*(A178914(n)-1)` -/
def P4549294090272891261.Spec : Prop :=
  ∀ n, P4549294090272891261.a n = A084021 n

end A084021

/-! ## A084021.P161608136466557372

`n*(10^A055642(n)-(n+1))`
-/

namespace A084021.P161608136466557372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((10 : ℚ) ^ (A055642 n : ℤ) - (n + 1 : ℚ))

end

end A084021.P161608136466557372

namespace A084021

/-- `n*(10^A055642(n)-(n+1))` -/
def P161608136466557372.Spec : Prop :=
  ∀ n, P161608136466557372.a n = (A084021 n : ℚ)

end A084021

/-! ## A084021.P7217217998409173536

`n*A055120(A048379(n))`
-/

namespace A084021.P7217217998409173536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055120 (A048379 n).toNat

end

end A084021.P7217217998409173536

namespace A084021

/-- `n*A055120(A048379(n))` -/
def P7217217998409173536.Spec : Prop :=
  ∀ n, P7217217998409173536.a n = A084021 n

end A084021

/-! ## A084021.P1102609903752947644

`n*(A267193(n)-A056965(n))`
-/

namespace A084021.P1102609903752947644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A267193 n - A056965 n)

end

end A084021.P1102609903752947644

namespace A084021

/-- `n*(A267193(n)-A056965(n))` -/
def P1102609903752947644.Spec : Prop :=
  ∀ n, P1102609903752947644.a n = A084021 n

end A084021

/-! ## A084021.P5313032808794086110

`n*(A002283(∑{digits}[n, A097876(#)])-n)`
-/

namespace A084021.P5313032808794086110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002283 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A097876 x).sum.toNat - (n : ℤ))

end

end A084021.P5313032808794086110

namespace A084021

/-- `n*(A002283(∑{digits}[n, A097876(#)])-n)` -/
def P5313032808794086110.Spec : Prop :=
  ∀ n, P5313032808794086110.a n = A084021 n

end A084021

/-! ## A084021.P6770997165028910432

`(A068824(n+1)-A061601(n))%A068824(n+1)`
-/

namespace A084021.P6770997165028910432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068824 (n + 1) - A061601 n) (A068824 (n + 1))

end

end A084021.P6770997165028910432

namespace A084021

/-- `(A068824(n+1)-A061601(n))%A068824(n+1)` -/
def P6770997165028910432.Spec : Prop :=
  ∀ n, P6770997165028910432.a n = A084021 n

end A084021

/-! ## A084021.P13790633721818182075

`n*A178914(n+1)%A178914(n)`
-/

namespace A084021.P13790633721818182075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A178914 (n + 1)) (A178914 n)

end

end A084021.P13790633721818182075

namespace A084021

/-- `n*A178914(n+1)%A178914(n)` -/
def P13790633721818182075.Spec : Prop :=
  ∀ n, P13790633721818182075.a n = A084021 n

end A084021

/-!
# A084022: Largest n-digit palindromic multiple of n with a digit sum that is also a multiple of n, or 0 if no such number exists. For n a multiple of 10 it is sufficient that a(n) be palindromic when trailing zeros are ignored.

The programs for A084022, there is no canonical definition to state claims against.
-/

/-! ## A084022.P17268846249688409327

`(n+1)*A084023(n+1)`
-/

namespace A084022.P17268846249688409327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084023 (n + 1)

end

end A084022.P17268846249688409327

/-!
# A084023: a(n) = A084022(n)/n.

The programs for A084023, there is no canonical definition to state claims against.
-/

/-! ## A084023.P7936291632012132826

`A084022(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084023.P7936291632012132826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084022 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A084023.P7936291632012132826

/-!
# A084024: Triangle read by rows in which row n gives n smallest n-digit multiples of n that are palindromes with rows padded with 0 if there are insufficient palindromes.

The programs for A084024, there is no canonical definition to state claims against.
-/

/-! ## A084024.P6460470708652365141

`∑[char[∑[n]]]*A084025(n+1)`
-/

namespace A084024.P6460470708652365141
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A084025 (n + 1)

end

end A084024.P6460470708652365141

/-!
# A084025: Divide n-th row of A084024 by n.

The programs for A084025, there is no canonical definition to state claims against.
-/

/-! ## A084025.P3203322454216589268

`A084024(n+1)/∑[char[∑[n]]]`
-/

namespace A084025.P3203322454216589268
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084024 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A084025.P3203322454216589268

/-! ## A084025.P8802988159196592843

`floor(A084024(n+1)/∑[A010054(n)])`
-/

namespace A084025.P8802988159196592843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084024 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A084025.P8802988159196592843

/-! ## A084025.P3900788980981483854

`floor(A084024(n+1)/A002024(n+1))`
-/

namespace A084025.P3900788980981483854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084024 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A084025.P3900788980981483854

/-!
# A084026: Diagonal of A084024.

The programs for A084026, there is no canonical definition to state claims against.
-/

/-! ## A084026.P18104339029060035419

`A084024(∑[n+1])`
-/

namespace A084026.P18104339029060035419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084026.P18104339029060035419

/-! ## A084026.P3205542185866610955

`(n+1)*A084025(∑[n+1])`
-/

namespace A084026.P3205542185866610955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084025 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084026.P3205542185866610955

/-!
# A084027: Row sums in A084024.

The programs for A084027, there is no canonical definition to state claims against.
-/

/-! ## A084027.P5072631696155167000

`(n+1)*A084028(n+1)`
-/

namespace A084027.P5072631696155167000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084028 (n + 1)

end

end A084027.P5072631696155167000

/-! ## A084027.P3983702732023064120

`A084028(n+1)*A348553(n)`
-/

namespace A084027.P3983702732023064120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084028 (n + 1) * A348553 n

end

end A084027.P3983702732023064120

/-!
# A084028: Average of n-th row of A084024.

The programs for A084028, there is no canonical definition to state claims against.
-/

/-! ## A084028.P1647782287840933699

`A084027(n+1)/(n+1)`
-/

namespace A084028.P1647782287840933699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084027 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A084028.P1647782287840933699

/-!
# A084029: Triangle read by rows: n-th row contains the first n n-digit multiples of n with digit sum n. If there are fewer than n such numbers, the rest of the row is filled with 0's.

The programs for A084029, there is no canonical definition to state claims against.
-/

/-! ## A084029.P1651763265464782553

`∑[char[∑[n]]]*A084033(n+1)`
-/

namespace A084029.P1651763265464782553
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A084033 (n + 1)

end

end A084029.P1651763265464782553

/-! ## A084029.P5730970170820304457

`A084033(n+1)*A123578(n+1)`
-/

namespace A084029.P5730970170820304457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084033 (n + 1) * A123578 (n + 1)

end

end A084029.P5730970170820304457

/-!
# A084030: Main diagonal of triangle A084029.

The programs for A084030, there is no canonical definition to state claims against.
-/

/-! ## A084030.P7546721055895878820

`A084029(∑[n+1])`
-/

namespace A084030.P7546721055895878820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084029 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084030.P7546721055895878820

/-! ## A084030.P8243084683790622578

`(n+1)*A084033(∑[n+1])`
-/

namespace A084030.P8243084683790622578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084033 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084030.P8243084683790622578

/-!
# A084031: Arithmetic means of the rows of triangle A084029.

The programs for A084031, there is no canonical definition to state claims against.
-/

/-! ## A084031.P545461817025638789

`A084032(n+1)/(n+1)`
-/

namespace A084031.P545461817025638789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084032 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A084031.P545461817025638789

/-!
# A084032: Row sums of triangle A084029.

The programs for A084032, there is no canonical definition to state claims against.
-/

/-! ## A084032.P1357455220338385748

`(n+1)*A084031(n+1)`
-/

namespace A084032.P1357455220338385748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084031 (n + 1)

end

end A084032.P1357455220338385748

/-! ## A084032.P291277974178901004

`A084031(A106466(2*n))*A106466(2*n)`
-/

namespace A084032.P291277974178901004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084031 (A106466 (2 * n)).toNat * A106466 (2 * n)

end

end A084032.P291277974178901004

/-!
# A084033: Triangle read by rows: T(n, k) = A084029(n, k)/n.

The programs for A084033, there is no canonical definition to state claims against.
-/

/-! ## A084033.P14920928473555642553

`A084029(n+1)/∑[char[∑[n]]]`
-/

namespace A084033.P14920928473555642553
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084029 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A084033.P14920928473555642553

/-! ## A084033.P8047919629508306957

`floor(A084029(n+1)/A002024(n+1))`
-/

namespace A084033.P8047919629508306957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084029 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A084033.P8047919629508306957

/-! ## A084033.P4261747834675798253

`floor(A084029(n+1)/(A003056(n)+1))`
-/

namespace A084033.P4261747834675798253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084029 (n + 1) : ℚ) / (A003056 n + 1 : ℚ)⌋

end

end A084033.P4261747834675798253

/-!
# A084034: Numbers which are a product of repeated-digit numbers A010785.

The programs for A084034, there is no canonical definition to state claims against.
-/

/-! ## A084034.P11321001883307544769

`lt[A006530(A233583(9*n+1)), 13]`
-/

namespace A084034.P11321001883307544769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A233583 (9 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084034.P11321001883307544769

/-! ## A084034.P6562598156621141339

`A051038(round(sqrt(n²+1)))%A351552(n+1)`
-/

namespace A084034.P6562598156621141339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051038 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A351552 (n + 1))

end

end A084034.P6562598156621141339

/-! ## A084034.P12370383953325446257

`A051038(A028310(n))%A077472(n+1)`
-/

namespace A084034.P12370383953325446257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051038 (A028310 n).toNat) (A077472 (n + 1))

end

end A084034.P12370383953325446257

/-! ## A084034.P1971004129530726840

`lt[A061395(A008486(n)²), 6]`
-/

namespace A084034.P1971004129530726840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A008486 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084034.P1971004129530726840

/-! ## A084034.P8115522919160789766

`eq[0, A102605(∑{p}[n, A102605(#)²])]`
-/

namespace A084034.P8115522919160789766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102605 (∑ p ∈ Nat.primeFactors (f3 n), A102605 p ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084034.P8115522919160789766

/-! ## A084034.P264814514407213402

`record[A025480(A051038(n+1))]%A104020(A028310(n))`
-/

namespace A084034.P264814514407213402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A051038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A104020 (A028310 n).toNat)

end

end A084034.P264814514407213402

/-! ## A084034.P16160832029346389678

`record[A025480(A051038(n+1))]*A176801(A062786(n+1))`
-/

namespace A084034.P16160832029346389678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A051038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A176801 (A062786 (n + 1)).toNat

end

end A084034.P16160832029346389678

/-! ## A084034.P4854560604491016006

`lt[A252735(n^ceil(atan(n))), 5]`
-/

namespace A084034.P4854560604491016006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084034.P4854560604491016006

/-!
# A084035: a(1) = 1 and then distinct numbers such that the sum as well the absolute difference of successive terms is a prime.

The programs for A084035, there is no canonical definition to state claims against.
-/

/-! ## A084035.P6041703626762180410

`A084037(n)-a(n-1)` with `a(0)=1`
-/

namespace A084035.P6041703626762180410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084037 n - a (n - 1)

end

end A084035.P6041703626762180410

/-!
# A084037: Primes obtained as the sum of two successive terms of A084035.

The programs for A084037, there is no canonical definition to state claims against.
-/

/-! ## A084037.P16828952316188813516

`A084035(n+1)+A084035(n+2)`
-/

namespace A084037.P16828952316188813516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1) + A084035 (n + 2)

end

end A084037.P16828952316188813516

/-! ## A084037.P3925691755641540705

`abs(Δ[A038608(A084035(n+1))])`
-/

namespace A084037.P3925691755641540705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A084035 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084037.P3925691755641540705

/-! ## A084037.P4028312733794492923

`A006530(abs(Δ[A084035(n+1)²]))`
-/

namespace A084037.P4028312733794492923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |f1 (n + 1) - f1 n|.toNat

end

end A084037.P4028312733794492923

/-! ## A084037.P4023871381384535718

`A002034(abs(Δ[A084035(n+1)²]))`
-/

namespace A084037.P4023871381384535718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 |f1 (n + 1) - f1 n|.toNat

end

end A084037.P4023871381384535718

/-! ## A084037.P17831217264085088491

`A032742(abs(Δ[A084035(n+1)²]))`
-/

namespace A084037.P17831217264085088491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 |f1 (n + 1) - f1 n|.toNat

end

end A084037.P17831217264085088491

/-!
# A084038: Primes obtained as the absolute difference of two successive terms of A084035.

The programs for A084038, there is no canonical definition to state claims against.
-/

/-! ## A084038.P6383244992385763018

`abs(Δ[A084035(n+1)])`
-/

namespace A084038.P6383244992385763018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084038.P6383244992385763018

/-! ## A084038.P15477097796589639671

`A006530(lcm(2, Δ[A084035(n+1)]))`
-/

namespace A084038.P15477097796589639671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A084038.P15477097796589639671

/-! ## A084038.P16836063338102280386

`A006530(Δ[A084035(n+1)]²)`
-/

namespace A084038.P16836063338102280386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A084038.P16836063338102280386

/-! ## A084038.P14016614334737448337

`A007947(Δ[A084035(n+1)]²)`
-/

namespace A084038.P14016614334737448337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A084038.P14016614334737448337

/-! ## A084038.P4270554149383280211

`A020639(Δ[A084035(n+1)]²)`
-/

namespace A084038.P4270554149383280211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A084038.P4270554149383280211

/-! ## A084038.P12895336608983300395

`A000196(Δ[A084035(n+1)]²)`
-/

namespace A084038.P12895336608983300395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A084038.P12895336608983300395

/-! ## A084038.P777818533594387916

`A003557(Δ[A084035(n+1)]²)`
-/

namespace A084038.P777818533594387916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A084038.P777818533594387916

/-! ## A084038.P4904534578382688560

`A014648(Δ[A084035(n+1)]²)`
-/

namespace A084038.P4904534578382688560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014648 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A084038.P4904534578382688560

/-! ## A084038.P10628701774870467582

`A014963(Δ[A084035(n+1)]²)`
-/

namespace A084038.P10628701774870467582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A084038.P10628701774870467582

/-! ## A084038.P8892274078782304474

`A032742(Δ[A084035(n+1)]²)`
-/

namespace A084038.P8892274078782304474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A084038.P8892274078782304474

/-!
# A084039: a(1) = 1; then distinct numbers such that both the product of two successive terms + 1 and the ratio of the larger to the smaller of two successive terms + 1 is a prime.

The programs for A084039, there is no canonical definition to state claims against.
-/

/-! ## A084039.P14825425415162962498

`∏[A270096((n+2)!)]`
-/

namespace A084039.P14825425415162962498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (Nat.factorial (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084039.P14825425415162962498

/-! ## A084039.P8307609320404385636

`∏[∏{e}[A102928(2*n+1), #]]`
-/

namespace A084039.P8307609320404385636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102928 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084039.P8307609320404385636

/-!
# A084040: Primes obtained as the product of successive terms of A084039 + 1, i.e., a(n) = A084039(n)*A084039(n+1) + 1.

The programs for A084040, there is no canonical definition to state claims against.
-/

/-! ## A084040.P12836533168073517130

`A084039(n+1)*A084039(n+2)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084040.P12836533168073517130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084039 (n + 1) * A084039 (n + 2) + 1

end

end A084040.P12836533168073517130

/-!
# A084041: Primes obtained as the ratio of successive terms of A084039 + 1; i.e., a(n) = max(A084039(n), A084039(n+1))/min(A084039(n), A084039(n+1)) + 1.

The programs for A084041, there is no canonical definition to state claims against.
-/

/-! ## A084041.P11001757756499294478

`A006530(A084039(n+1)+A084039(n+2))`
-/

namespace A084041.P11001757756499294478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084039 (n + 1) + A084039 (n + 2)).toNat

end

end A084041.P11001757756499294478

/-! ## A084041.P14928415764774411764

`A339540(a(n-1))` with `a(0)=3, a(1)=5, a(2)=5, a(3)=13, a(4)=13`
-/

namespace A084041.P14928415764774411764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 5, 13, 13] fun n a =>
  A339540 (a (n - 1)).toNat

end

end A084041.P14928415764774411764

/-!
# A084042: Smallest multiple of n in which the digit string of n appears sandwiched between at least a pair of digits.

The programs for A084042, there is no canonical definition to state claims against.
-/

/-! ## A084042.P13113290819095730327

`A110735(n+1)/A110731(A048597(n+1))`
-/

namespace A084042.P13113290819095730327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110735 (n + 1) : ℚ) / (A110731 (A048597 (n + 1)).toNat : ℚ)

end

end A084042.P13113290819095730327

/-! ## A084042.P16964912910739196831

`A110735(A085908(n+1))/A110731(n+1)`
-/

namespace A084042.P16964912910739196831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110735 (A085908 (n + 1)).toNat : ℚ) / (A110731 (n + 1) : ℚ)

end

end A084042.P16964912910739196831

/-! ## A084042.P9377137679015343027

`A110735(n+1)/A110731(A110731(n+1))`
-/

namespace A084042.P9377137679015343027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110735 (n + 1) : ℚ) / (A110731 (A110731 (n + 1)).toNat : ℚ)

end

end A084042.P9377137679015343027

/-! ## A084042.P17329113445530101659

`(n+1)*A110736(n+1)/A110731(A048597(n+1))`
-/

namespace A084042.P17329113445530101659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A110736 (n + 1) : ℚ) / (A110731 (A048597 (n + 1)).toNat : ℚ)

end

end A084042.P17329113445530101659

/-! ## A084042.P14579963033655847551

`(n+1)*A110736(n+1)/A110731(A110731(n+1))`
-/

namespace A084042.P14579963033655847551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A110736 (n + 1) : ℚ) / (A110731 (A110731 (n + 1)).toNat : ℚ)

end

end A084042.P14579963033655847551

/-!
# A084044: Smallest palindromic multiple of n in which n is a substring (anywhere), or 0 if n = 10k or no such number exists.

The programs for A084044, there is no canonical definition to state claims against.
-/

/-! ## A084044.P13096861358631231036

`C(A077741(n+1), A236378(n)!)`
-/

namespace A084044.P13096861358631231036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077741 (n + 1)).toNat (Nat.factorial (A236378 n).toNat)

end

end A084044.P13096861358631231036

/-! ## A084044.P3907660425628472850

`C(A077741(n+1), Δ[A004893(n+1)])`
-/

namespace A084044.P3907660425628472850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077741 (n + 1)).toNat (f1 (n + 1) - f1 n).toNat

end

end A084044.P3907660425628472850

/-! ## A084044.P11285524679404443003

`C(A077741(n+1), Δ[A004904(n+1)])`
-/

namespace A084044.P11285524679404443003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077741 (n + 1)).toNat (f1 (n + 1) - f1 n).toNat

end

end A084044.P11285524679404443003

/-! ## A084044.P12368351036080927606

`C(A077741(n+1), Δ[A004915(n+1)])`
-/

namespace A084044.P12368351036080927606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077741 (n + 1)).toNat (f1 (n + 1) - f1 n).toNat

end

end A084044.P12368351036080927606

/-! ## A084044.P6318435784551687786

`C((n+1)*A077742(n+1), A236378(n)!)`
-/

namespace A084044.P6318435784551687786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) * A077742 (n + 1)).toNat (Nat.factorial (A236378 n).toNat)

end

end A084044.P6318435784551687786

/-!
# A084046: Smallest prime p such that p + n is an n-th power, or 0 if no such number exists; i.e., smallest prime of the form k^n - n.

The programs for A084046, there is no canonical definition to state claims against.
-/

/-! ## A084046.P7817510960989831673

`A000040(A233861(n+1))*A075437(n)`
-/

namespace A084046.P7817510960989831673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233861 (n + 1)).toNat * A075437 n

end

end A084046.P7817510960989831673

/-! ## A084046.P14465334292448987363

`A000040(A233861(n+1))*A242618(n)`
-/

namespace A084046.P14465334292448987363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233861 (n + 1)).toNat * A242618 n

end

end A084046.P14465334292448987363

/-!
# A084049: Numbers k such that k and k+1 have the same sum of digits of divisors; A034690(k) = A034690(k+1).

The programs for A084049, the canonical program `A084049.P14627945407384210214` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084049 has offset 1).

The definition of A084049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084049.P14627945407384210214

`eq[A034690(n+1), A034690(n+2)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084049

/-- `eq[A034690(n+1), A034690(n+2)]+1` -/
def P14627945407384210214.Spec : Prop :=
  ∀ n, (P14627945407384210214.a n : ℤ) = A084049 (n + 1)

theorem P14627945407384210214.correct : P14627945407384210214.Spec := by
  intro n
  simp only [A084049, Nat.add_sub_cancel]

end A084049

/-! ## A084049.P7729755108640078497

`A020725(eq[A034690(n+1), A034690(n+2)])`
-/

namespace A084049.P7729755108640078497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084049.P7729755108640078497

namespace A084049

/-- `A020725(eq[A034690(n+1), A034690(n+2)])` -/
def P7729755108640078497.Spec : Prop :=
  ∀ n, P7729755108640078497.a n = A084049 (n + 1)

end A084049

/-! ## A084049.P5017605434112699360

`A065475(eq[A034690(n+1), A034690(n+2)])`
-/

namespace A084049.P5017605434112699360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084049.P5017605434112699360

namespace A084049

/-- `A065475(eq[A034690(n+1), A034690(n+2)])` -/
def P5017605434112699360.Spec : Prop :=
  ∀ n, P5017605434112699360.a n = A084049 (n + 1)

end A084049

/-! ## A084049.P16978790908222012136

`eq[A034690(n+1), A034690(A000038(n)+n)]`
-/

namespace A084049.P16978790908222012136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084049.P16978790908222012136

namespace A084049

/-- `eq[A034690(n+1), A034690(A000038(n)+n)]` -/
def P16978790908222012136.Spec : Prop :=
  ∀ n, (P16978790908222012136.a n : ℤ) = A084049 (n + 1)

end A084049

/-!
# A084050: Numbers n such that at least one permutation of the digits of n yields a palindrome.

The programs for A084050, there is no canonical definition to state claims against.
-/

/-! ## A084050.P6705774221709080413

`eq[0, A322075(A113581(n))]`
-/

namespace A084050.P6705774221709080413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322075 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084050.P6705774221709080413

/-!
# A084051: Smallest palindrome corresponding to A084050(n).

The programs for A084051, there is no canonical definition to state claims against.
-/

/-! ## A084051.P1103766638100717396

`A087996(A273239(n+1))/2`
-/

namespace A084051.P1103766638100717396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087996 (A273239 (n + 1)).toNat : ℚ) / 2

end

end A084051.P1103766638100717396

/-! ## A084051.P10321382560046884659

`A343750(A084050(n+1))`
-/

namespace A084051.P10321382560046884659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343750 (A084050 (n + 1)).toNat

end

end A084051.P10321382560046884659

/-! ## A084051.P6403776142048297102

`A343750(A096091(n+1))`
-/

namespace A084051.P6403776142048297102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343750 (A096091 (n + 1)).toNat

end

end A084051.P6403776142048297102

/-! ## A084051.P10646538146079354972

`A343750(A113586(n+1))`
-/

namespace A084051.P10646538146079354972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343750 (A113586 (n + 1)).toNat

end

end A084051.P10646538146079354972

/-! ## A084051.P9492996480742606466

`A343750(A114801(n+1))`
-/

namespace A084051.P9492996480742606466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343750 (A114801 (n + 1)).toNat

end

end A084051.P9492996480742606466

/-!
# A084052: 2*n digit-reversed mod 2.

The programs for A084052, the canonical program `A084052.P15896097742026339928` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084052 has offset 5).

The definition of A084052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084052.P2978102907408236036

`A000035(A004093(n+5))`
-/

namespace A084052.P2978102907408236036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004093 (n + 5)).toNat

end

end A084052.P2978102907408236036

namespace A084052

/-- `A000035(A004093(n+5))` -/
def P2978102907408236036.Spec : Prop :=
  ∀ n, P2978102907408236036.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P15906767530509056131

`A004086(2*(n+5))%2`
-/

namespace A084052.P15906767530509056131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (2 * (n + 5))) 2

end

end A084052.P15906767530509056131

namespace A084052

/-- `A004086(2*(n+5))%2` -/
def P15906767530509056131.Spec : Prop :=
  ∀ n, P15906767530509056131.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P15896097742026339928

`A000030(ceil((n+1)/5))%2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084052

/-- `A000030(ceil((n+1)/5))%2` -/
def P15896097742026339928.Spec : Prop :=
  ∀ n, P15896097742026339928.a n = A084052 (n + 5)

theorem P15896097742026339928.correct : P15896097742026339928.Spec := by
  intro n
  simp only [A084052, Nat.add_sub_cancel]

end A084052

/-! ## A084052.P16509503215459769037

`and(1, A004086(∑[6%gcd(5, n)]))`
-/

namespace A084052.P16509503215459769037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 % Nat.gcd 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004086 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A084052.P16509503215459769037

namespace A084052

/-- `and(1, A004086(∑[6%gcd(5, n)]))` -/
def P16509503215459769037.Spec : Prop :=
  ∀ n, P16509503215459769037.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P10260624900408264979

`A032763(n+5)%2`
-/

namespace A084052.P10260624900408264979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032763 (n + 5)) 2

end

end A084052.P10260624900408264979

namespace A084052

/-- `A032763(n+5)%2` -/
def P10260624900408264979.Spec : Prop :=
  ∀ n, P10260624900408264979.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P9260822549971639158

`A032764(n+5)%2`
-/

namespace A084052.P9260822549971639158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032764 (n + 5)) 2

end

end A084052.P9260822549971639158

namespace A084052

/-- `A032764(n+5)%2` -/
def P9260822549971639158.Spec : Prop :=
  ∀ n, P9260822549971639158.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P13312737293355796965

`A056964(2*(n+5))%2`
-/

namespace A084052.P13312737293355796965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (2 * (n + 5))) 2

end

end A084052.P13312737293355796965

namespace A084052

/-- `A056964(2*(n+5))%2` -/
def P13312737293355796965.Spec : Prop :=
  ∀ n, P13312737293355796965.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P3123807622337473607

`A004156(n+5)%2`
-/

namespace A084052.P3123807622337473607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004156 (n + 5)) 2

end

end A084052.P3123807622337473607

namespace A084052

/-- `A004156(n+5)%2` -/
def P3123807622337473607.Spec : Prop :=
  ∀ n, P3123807622337473607.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P4385355434845635719

`A000035(A032763(n+5))`
-/

namespace A084052.P4385355434845635719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A032763 (n + 5)).toNat

end

end A084052.P4385355434845635719

namespace A084052

/-- `A000035(A032763(n+5))` -/
def P4385355434845635719.Spec : Prop :=
  ∀ n, P4385355434845635719.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P3513064410359615638

`A000035(A032764(n+5))`
-/

namespace A084052.P3513064410359615638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A032764 (n + 5)).toNat

end

end A084052.P3513064410359615638

namespace A084052

/-- `A000035(A032764(n+5))` -/
def P3513064410359615638.Spec : Prop :=
  ∀ n, P3513064410359615638.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P8082032972988411413

`A110726(2*n)%2`
-/

namespace A084052.P8082032972988411413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110726 (2 * n + 10)) 2

end

end A084052.P8082032972988411413

namespace A084052

/-- `A110726(2*n)%2` -/
def P8082032972988411413.Spec : Prop :=
  ∀ n, P8082032972988411413.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P1114932585567353076

`A110727(2*n)%2`
-/

namespace A084052.P1114932585567353076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110727 (2 * n + 10)) 2

end

end A084052.P1114932585567353076

namespace A084052

/-- `A110727(2*n)%2` -/
def P1114932585567353076.Spec : Prop :=
  ∀ n, P1114932585567353076.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P8441413137207272099

`and(1, A110727(n+n))`
-/

namespace A084052.P8441413137207272099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A110727 (n + n + 10))

end

end A084052.P8441413137207272099

namespace A084052

/-- `and(1, A110727(n+n))` -/
def P8441413137207272099.Spec : Prop :=
  ∀ n, P8441413137207272099.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P5395304169342286768

`A068061(n+6)%2`
-/

namespace A084052.P5395304169342286768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068061 (n + 6)) 2

end

end A084052.P5395304169342286768

namespace A084052

/-- `A068061(n+6)%2` -/
def P5395304169342286768.Spec : Prop :=
  ∀ n, P5395304169342286768.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P15764690249112880513

`and(A113608(2*n), A206371(n+1))`
-/

namespace A084052.P15764690249112880513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113608 (2 * n + 10)) (A206371 (n + 1))

end

end A084052.P15764690249112880513

namespace A084052

/-- `and(A113608(2*n), A206371(n+1))` -/
def P15764690249112880513.Spec : Prop :=
  ∀ n, P15764690249112880513.a n = A084052 (n + 5)

end A084052

/-! ## A084052.P15343696009837957707

`and(A057775(n+1), A113608(2*n))`
-/

namespace A084052.P15343696009837957707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057775 (n + 1)) (A113608 (2 * n + 10))

end

end A084052.P15343696009837957707

namespace A084052

/-- `and(A057775(n+1), A113608(2*n))` -/
def P15343696009837957707.Spec : Prop :=
  ∀ n, P15343696009837957707.a n = A084052 (n + 5)

end A084052

/-!
# A084053: 4*n digit-reversed mod 4.

The programs for A084053, there is no canonical definition to state claims against.
-/

/-! ## A084053.P10184158709385769195

`A004086(4*(n+3))%4`
-/

namespace A084053.P10184158709385769195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (4 * (n + 3))) 4

end

end A084053.P10184158709385769195

/-! ## A084053.P16573855650909413801

`A248423(n+3)%4`
-/

namespace A084053.P16573855650909413801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248423 (n + 3)) 4

end

end A084053.P16573855650909413801

/-! ## A084053.P11546552435926695653

`and(A020639(9*(2*n+1)), A004086(4*(n+3)))`
-/

namespace A084053.P11546552435926695653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (9 * (2 * n + 1))) (A004086 (4 * (n + 3)))

end

end A084053.P11546552435926695653

/-! ## A084053.P17518844470109696455

`A004093(2*(n+3))%4`
-/

namespace A084053.P17518844470109696455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004093 (2 * (n + 3))) 4

end

end A084053.P17518844470109696455

/-! ## A084053.P17722066737202269710

`A010873(A004086(A008586(n+3)))`
-/

namespace A084053.P17722066737202269710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A004086 (A008586 (n + 3)).toNat).toNat

end

end A084053.P17722066737202269710

/-! ## A084053.P10685020273323140079

`A056524(4*(n+3))%4`
-/

namespace A084053.P10685020273323140079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056524 (4 * (n + 3))) 4

end

end A084053.P10685020273323140079

/-! ## A084053.P2729456174521219382

`A056525(4*(n+3))%4`
-/

namespace A084053.P2729456174521219382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056525 (4 * (n + 3))) 4

end

end A084053.P2729456174521219382

/-! ## A084053.P6572689210497252862

`A082216(4*(n+3))%4`
-/

namespace A084053.P6572689210497252862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 (4 * (n + 3))) 4

end

end A084053.P6572689210497252862

/-!
# A084054: 5*n digit-reversed mod 5.

The programs for A084054, the canonical program `A084054.P2245921812110544947` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084054 has offset 2).

The definition of A084054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084054.P2245921812110544947

`A056142(∑[log2(gcd(2, n))])%5`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A084054

/-- `A056142(∑[log2(gcd(2, n))])%5` -/
def P2245921812110544947.Spec : Prop :=
  ∀ n, P2245921812110544947.a n = A084054 (n + 2)

theorem P2245921812110544947.correct : P2245921812110544947.Spec := by
  intro n
  simp only [A084054, Nat.add_sub_cancel]

end A084054

/-! ## A084054.P12498805922749470294

`A056142(∑[char[2*n]])%5`
-/

namespace A084054.P12498805922749470294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 (∑ j ∈ Finset.range (n + 1), f1 j)) 5

end

end A084054.P12498805922749470294

namespace A084054

/-- `A056142(∑[char[2*n]])%5` -/
def P12498805922749470294.Spec : Prop :=
  ∀ n, P12498805922749470294.a n = A084054 (n + 2)

end A084054

/-! ## A084054.P1104412435006346092

`A056524(∑[A059841(n)])%5`
-/

namespace A084054.P1104412435006346092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 5

end

end A084054.P1104412435006346092

namespace A084054

/-- `A056524(∑[A059841(n)])%5` -/
def P1104412435006346092.Spec : Prop :=
  ∀ n, P1104412435006346092.a n = A084054 (n + 2)

end A084054

/-! ## A084054.P10422009889419328947

`A167998(n+2)%5`
-/

namespace A084054.P10422009889419328947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167998 (n + 2)) 5

end

end A084054.P10422009889419328947

namespace A084054

/-- `A167998(n+2)%5` -/
def P10422009889419328947.Spec : Prop :=
  ∀ n, P10422009889419328947.a n = A084054 (n + 2)

end A084054

/-! ## A084054.P14477856374031283669

`A004086(5*(n+2))%5`
-/

namespace A084054.P14477856374031283669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (5 * (n + 2))) 5

end

end A084054.P14477856374031283669

namespace A084054

/-- `A004086(5*(n+2))%5` -/
def P14477856374031283669.Spec : Prop :=
  ∀ n, P14477856374031283669.a n = A084054 (n + 2)

end A084054

/-! ## A084054.P4906945597977345875

`A000030(5*(n+2))%5`
-/

namespace A084054.P4906945597977345875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000030 (5 * (n + 2))) 5

end

end A084054.P4906945597977345875

namespace A084054

/-- `A000030(5*(n+2))%5` -/
def P4906945597977345875.Spec : Prop :=
  ∀ n, P4906945597977345875.a n = A084054 (n + 2)

end A084054

/-! ## A084054.P14545299536184994563

`A032762(5*(n+2))%5`
-/

namespace A084054.P14545299536184994563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032762 (5 * (n + 2))) 5

end

end A084054.P14545299536184994563

namespace A084054

/-- `A032762(5*(n+2))%5` -/
def P14545299536184994563.Spec : Prop :=
  ∀ n, P14545299536184994563.a n = A084054 (n + 2)

end A084054

/-! ## A084054.P6966408587098477744

`A056525(5*(n+2))%5`
-/

namespace A084054.P6966408587098477744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056525 (5 * (n + 2))) 5

end

end A084054.P6966408587098477744

namespace A084054

/-- `A056525(5*(n+2))%5` -/
def P6966408587098477744.Spec : Prop :=
  ∀ n, P6966408587098477744.a n = A084054 (n + 2)

end A084054

/-! ## A084054.P5637134017924581285

`A010874(A004086(5*(n+2)))`
-/

namespace A084054.P5637134017924581285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A004086 (5 * (n + 2))).toNat

end

end A084054.P5637134017924581285

namespace A084054

/-- `A010874(A004086(5*(n+2)))` -/
def P5637134017924581285.Spec : Prop :=
  ∀ n, P5637134017924581285.a n = A084054 (n + 2)

end A084054

/-! ## A084054.P4663353880333812678

`A321474(5*n+12)%5`
-/

namespace A084054.P4663353880333812678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321474 (5 * n + 12)) 5

end

end A084054.P4663353880333812678

namespace A084054

/-- `A321474(5*n+12)%5` -/
def P4663353880333812678.Spec : Prop :=
  ∀ n, P4663353880333812678.a n = A084054 (n + 2)

end A084054

/-! ## A084054.P16978718980997266641

`A010874(A167998(n+2))`
-/

namespace A084054.P16978718980997266641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A167998 (n + 2)).toNat

end

end A084054.P16978718980997266641

namespace A084054

/-- `A010874(A167998(n+2))` -/
def P16978718980997266641.Spec : Prop :=
  ∀ n, P16978718980997266641.a n = A084054 (n + 2)

end A084054

/-!
# A084055: 6*n digit-reversed mod 6.

The programs for A084055, there is no canonical definition to state claims against.
-/

/-! ## A084055.P2002728248172214881

`A004086(6*(n+2))%6`
-/

namespace A084055.P2002728248172214881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (6 * (n + 2))) 6

end

end A084055.P2002728248172214881

/-! ## A084055.P13994838832813828883

`A004086(A008458(n+2))²%6`
-/

namespace A084055.P13994838832813828883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A008458 (n + 2)).toNat ^ 2) 6

end

end A084055.P13994838832813828883

/-! ## A084055.P12895134467706153287

`A056964(6*(n+2))%6`
-/

namespace A084055.P12895134467706153287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (6 * (n + 2))) 6

end

end A084055.P12895134467706153287

/-! ## A084055.P16184957561055413820

`A004093(Δ[A140091(n)])%6`
-/

namespace A084055.P16184957561055413820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004093 (f1 (n + 1) - f1 n).toNat) 6

end

end A084055.P16184957561055413820

/-! ## A084055.P8340398223964362745

`A010875(A004086(6*(n+2)))`
-/

namespace A084055.P8340398223964362745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A004086 (6 * (n + 2))).toNat

end

end A084055.P8340398223964362745

/-! ## A084055.P5385125541958224651

`A010875(A056964(6*(n+2)))`
-/

namespace A084055.P5385125541958224651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A056964 (6 * (n + 2))).toNat

end

end A084055.P5385125541958224651

/-! ## A084055.P5210162143588578277

`A103168(6*(n+2))%6`
-/

namespace A084055.P5210162143588578277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103168 (6 * (n + 2))) 6

end

end A084055.P5210162143588578277

/-! ## A084055.P2685588821897467427

`abs(A056965(6*(n+2))%6)`
-/

namespace A084055.P2685588821897467427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A056965 (6 * (n + 2))) 6|

end

end A084055.P2685588821897467427

/-!
# A084056: a(n) = -a(n-1) + a(n-2) + a(n-3), with a(0)=0, a(1)=1, a(2)=-3.

The programs for A084056, the canonical program `A084056.P16330420886694250436` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084056 has offset 0).

The definition of A084056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084056.P4189215161502798632

`((1-6*n)*(-1)^n-1)/4`
-/

namespace A084056.P4189215161502798632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (6 * n : ℤ)) * (-1) ^ n - 1 : ℚ) / 4

end

end A084056.P4189215161502798632

namespace A084056

/-- `((1-6*n)*(-1)^n-1)/4` -/
def P4189215161502798632.Spec : Prop :=
  ∀ n, P4189215161502798632.a n = (A084056 n : ℚ)

theorem P4189215161502798632.correct : P4189215161502798632.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A084056, Nat.add_sub_cancel, A084056.P4189215161502798632.a, A084056.P16330420886694250436.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A084056, Nat.add_sub_cancel, A084056.P4189215161502798632.a, A084056.P16330420886694250436.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084056

/-! ## A084056.P16330420886694250436

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=-3, a(3)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084056

/-- `2*a(n-2)-a(n-4)` -/
def P16330420886694250436.Spec : Prop :=
  ∀ n, P16330420886694250436.a n = A084056 n

theorem P16330420886694250436.correct : P16330420886694250436.Spec := by
  intro n
  simp only [A084056]

end A084056

/-! ## A084056.P5328438460293974067

`2-(a(n-1)+gcd(2, n)²)` with `a(0)=0`
-/

namespace A084056.P5328438460293974067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (a (n - 1) + (Nat.gcd 2 n ^ 2 : ℤ))

end

end A084056.P5328438460293974067

namespace A084056

/-- `2-(a(n-1)+gcd(2, n)²)` -/
def P5328438460293974067.Spec : Prop :=
  ∀ n, P5328438460293974067.a n = A084056 n

end A084056

/-! ## A084056.P16683264645517334413

`a(n-2)-3*(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A084056.P16683264645517334413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 3 * (-1) ^ n

end

end A084056.P16683264645517334413

namespace A084056

/-- `a(n-2)-3*(-1)^n` -/
def P16683264645517334413.Spec : Prop :=
  ∀ n, P16683264645517334413.a n = A084056 n

end A084056

/-! ## A084056.P5331665803703020059

`(-2)^∑[(-1)^n]-a(n-1)` with `a(0)=0`
-/

namespace A084056.P5331665803703020059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (-2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) - a (n - 1)

end

end A084056.P5331665803703020059

namespace A084056

/-- `(-2)^∑[(-1)^n]-a(n-1)` -/
def P5331665803703020059.Spec : Prop :=
  ∀ n, P5331665803703020059.a n = (A084056 n : ℚ)

end A084056

/-! ## A084056.P12328324271467886504

`3*n%2-(a(n-1)+2)` with `a(0)=0`
-/

namespace A084056.P12328324271467886504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((3 * (n % 2) : ℕ) : ℤ) - (a (n - 1) + 2)

end

end A084056.P12328324271467886504

namespace A084056

/-- `3*n%2-(a(n-1)+2)` -/
def P12328324271467886504.Spec : Prop :=
  ∀ n, P12328324271467886504.a n = A084056 n

end A084056

/-! ## A084056.P14334336963671145957

`2-floor(a(n-1)+4/gcd(3, a(n-1)))` with `a(0)=0`
-/

namespace A084056.P14334336963671145957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - ⌊(a (n - 1) : ℚ) + 4 / (Int.gcd 3 (a (n - 1)) : ℚ)⌋

end

end A084056.P14334336963671145957

namespace A084056

/-- `2-floor(a(n-1)+4/gcd(3, a(n-1)))` -/
def P14334336963671145957.Spec : Prop :=
  ∀ n, P14334336963671145957.a n = A084056 n

end A084056

/-! ## A084056.P2780672094515212545

`Δ[n-2-a(n-1)]-(a(n-1)+1)` with `a(0)=0`
-/

namespace A084056.P2780672094515212545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - (a (n - 1) + 1)

end

end A084056.P2780672094515212545

namespace A084056

/-- `Δ[n-2-a(n-1)]-(a(n-1)+1)` -/
def P2780672094515212545.Spec : Prop :=
  ∀ n, P2780672094515212545.a n = A084056 n

end A084056

/-! ## A084056.P10532205478365420750

`floor((2-n-n)/a(n-1)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A084056.P10532205478365420750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(2 - (n : ℤ) - (n : ℤ) : ℚ) / (a (n - 1) : ℚ) - (a (n - 1) : ℚ)⌋

end

end A084056.P10532205478365420750

namespace A084056

/-- `floor((2-n-n)/a(n-1)-a(n-1))` -/
def P10532205478365420750.Spec : Prop :=
  ∀ n, P10532205478365420750.a n = A084056 n

end A084056

/-! ## A084056.P2377228741003946170

`(a(n-1)+a(n-2))²-(a(n-1)+3)` with `a(0)=0, a(1)=1`
-/

namespace A084056.P2377228741003946170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) ^ 2 - (a (n - 1) + 3)

end

end A084056.P2377228741003946170

namespace A084056

/-- `(a(n-1)+a(n-2))²-(a(n-1)+3)` -/
def P2377228741003946170.Spec : Prop :=
  ∀ n, P2377228741003946170.a n = A084056 n

end A084056

/-! ## A084056.P15170856893521193881

`A001057(n)-A137501(n)`
-/

namespace A084056.P15170856893521193881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - A137501 n

end

end A084056.P15170856893521193881

namespace A084056

/-- `A001057(n)-A137501(n)` -/
def P15170856893521193881.Spec : Prop :=
  ∀ n, P15170856893521193881.a n = A084056 n

end A084056

/-! ## A084056.P915384582603197139

`A047215(n)-A195161(n)`
-/

namespace A084056.P915384582603197139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n - A195161 n

end

end A084056.P915384582603197139

namespace A084056

/-- `A047215(n)-A195161(n)` -/
def P915384582603197139.Spec : Prop :=
  ∀ n, P915384582603197139.a n = A084056 n

end A084056

/-! ## A084056.P11643559874209141262

`A123108(n)-A280166(n)`
-/

namespace A084056.P11643559874209141262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n - A280166 n

end

end A084056.P11643559874209141262

namespace A084056

/-- `A123108(n)-A280166(n)` -/
def P11643559874209141262.Spec : Prop :=
  ∀ n, P11643559874209141262.a n = A084056 n

end A084056

/-! ## A084056.P15355916789616687679

`A032766(n)*A062157(n)`
-/

namespace A084056.P15355916789616687679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n * A062157 n

end

end A084056.P15355916789616687679

namespace A084056

/-- `A032766(n)*A062157(n)` -/
def P15355916789616687679.Spec : Prop :=
  ∀ n, P15355916789616687679.a n = A084056 n

end A084056

/-! ## A084056.P834813077789134013

`A032766(n)*A165326(n)`
-/

namespace A084056.P834813077789134013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n * A165326 n

end

end A084056.P834813077789134013

namespace A084056

/-- `A032766(n)*A165326(n)` -/
def P834813077789134013.Spec : Prop :=
  ∀ n, P834813077789134013.a n = A084056 n

end A084056

/-! ## A084056.P319020236106593711

`A266303(n)-A123684(n+1)`
-/

namespace A084056.P319020236106593711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n - A123684 (n + 1)

end

end A084056.P319020236106593711

namespace A084056

/-- `A266303(n)-A123684(n+1)` -/
def P319020236106593711.Spec : Prop :=
  ∀ n, P319020236106593711.a n = A084056 n

end A084056

/-! ## A084056.P2676546083321025620

`A274757(n+1)-A129958(n)`
-/

namespace A084056.P2676546083321025620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274757 (n + 1) - A129958 n

end

end A084056.P2676546083321025620

namespace A084056

/-- `A274757(n+1)-A129958(n)` -/
def P2676546083321025620.Spec : Prop :=
  ∀ n, P2676546083321025620.a n = A084056 n

end A084056

/-! ## A084056.P17713910856450568617

`A124625(n)-A319556(n+1)`
-/

namespace A084056.P17713910856450568617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n - A319556 (n + 1)

end

end A084056.P17713910856450568617

namespace A084056

/-- `A124625(n)-A319556(n+1)` -/
def P17713910856450568617.Spec : Prop :=
  ∀ n, P17713910856450568617.a n = A084056 n

end A084056

/-!
# A084057: a(n) = 2*a(n-1) + 4*a(n-2), a(0)=1, a(1)=1.

The programs for A084057, the canonical program `A084057.P15831015062418186845` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084057 has offset 0).

The definition of A084057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)` (program `A084057.P15831015062418186845`, by `A084057.P15831015062418186845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084057.P15831015062418186845

`2*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084057

/-- `2*a(n-1)+4*a(n-2)` -/
def P15831015062418186845.Spec : Prop :=
  ∀ n, (P15831015062418186845.a n : ℤ) = A084057 n

theorem P15831015062418186845.correct : P15831015062418186845.Spec := by
  intro n
  simp only [A084057]

end A084057

/-! ## A084057.P3043249359920638523

`1+5*A014335(n)`
-/

namespace A084057.P3043249359920638523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 5 * A014335 n

end

end A084057.P3043249359920638523

namespace A084057

/-- `1+5*A014335(n)` -/
def P3043249359920638523.Spec : Prop :=
  ∀ n, P3043249359920638523.a n = A084057 n

end A084057

/-! ## A084057.P2039316189467678159

`2^(n-1)*A000032(n)`
-/

namespace A084057.P2039316189467678159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 n : ℚ)

end

end A084057.P2039316189467678159

namespace A084057

/-- `2^(n-1)*A000032(n)` -/
def P2039316189467678159.Spec : Prop :=
  ∀ n, P2039316189467678159.a n = (A084057 n : ℚ)

end A084057

/-! ## A084057.P14538166239590450166

`8*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A084057.P14538166239590450166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  8 * (a (n - 2) + a (n - 3))

end

end A084057.P14538166239590450166

namespace A084057

/-- `8*(a(n-2)+a(n-3))` -/
def P14538166239590450166.Spec : Prop :=
  ∀ n, (P14538166239590450166.a n : ℤ) = A084057 n

end A084057

/-! ## A084057.P11760804877474489869

`((1+sqrt(5))^n+(1-sqrt(5))^n)/2`
-/

namespace A084057.P11760804877474489869
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) ^ n + (1 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A084057.P11760804877474489869

namespace A084057

/-- `((1+sqrt(5))^n+(1-sqrt(5))^n)/2` -/
def P11760804877474489869.Spec : Prop :=
  ∀ n, P11760804877474489869.a n = (A084057 n : ℝ)

end A084057

/-! ## A084057.P6023271898719978378

`2*(3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A084057.P6023271898719978378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (3 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A084057.P6023271898719978378

namespace A084057

/-- `2*(3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P6023271898719978378.Spec : Prop :=
  ∀ n, P6023271898719978378.a n = A084057 n

end A084057

/-! ## A084057.P12733187554847376613

`Δ[A085449(n)]`
-/

namespace A084057.P12733187554847376613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084057.P12733187554847376613

namespace A084057

/-- `Δ[A085449(n)]` -/
def P12733187554847376613.Spec : Prop :=
  ∀ n, P12733187554847376613.a n = A084057 n

end A084057

/-! ## A084057.P10623937912078749738

`A203579(n)-1`
-/

namespace A084057.P10623937912078749738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203579 n - 1

end

end A084057.P10623937912078749738

namespace A084057

/-- `A203579(n)-1` -/
def P10623937912078749738.Spec : Prop :=
  ∀ n, P10623937912078749738.a n = A084057 n

end A084057

/-! ## A084057.P7056650255066761549

`Δ[Δ[A014335(n)]]`
-/

namespace A084057.P7056650255066761549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084057.P7056650255066761549

namespace A084057

/-- `Δ[Δ[A014335(n)]]` -/
def P7056650255066761549.Spec : Prop :=
  ∀ n, P7056650255066761549.a n = A084057 n

end A084057

/-! ## A084057.P369477323968977845

`ceil(A087131(n)/2)`
-/

namespace A084057.P369477323968977845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087131 n : ℚ) / 2⌉

end

end A084057.P369477323968977845

namespace A084057

/-- `ceil(A087131(n)/2)` -/
def P369477323968977845.Spec : Prop :=
  ∀ n, P369477323968977845.a n = A084057 n

end A084057

/-! ## A084057.P10742315458941459760

`ceil(A272263(n)/2)`
-/

namespace A084057.P10742315458941459760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A272263 n : ℚ) / 2⌉

end

end A084057.P10742315458941459760

namespace A084057

/-- `ceil(A272263(n)/2)` -/
def P10742315458941459760.Spec : Prop :=
  ∀ n, P10742315458941459760.a n = A084057 n

end A084057

/-! ## A084057.P7477548254184630903

`A163305(n)+a(n-1)` with `a(0)=1`
-/

namespace A084057.P7477548254184630903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163305 n + a (n - 1)

end

end A084057.P7477548254184630903

namespace A084057

/-- `A163305(n)+a(n-1)` -/
def P7477548254184630903.Spec : Prop :=
  ∀ n, P7477548254184630903.a n = A084057 n

end A084057

/-! ## A084057.P15084902746912799101

`Δ[2^(n-1)*A000045(n)]`
-/

namespace A084057.P15084902746912799101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084057.P15084902746912799101

namespace A084057

/-- `Δ[2^(n-1)*A000045(n)]` -/
def P15084902746912799101.Spec : Prop :=
  ∀ n, P15084902746912799101.a n = (A084057 n : ℚ)

end A084057

/-! ## A084057.P16069269176373185988

`A052899(n)+A014335(n)`
-/

namespace A084057.P16069269176373185988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052899 n + A014335 n

end

end A084057.P16069269176373185988

namespace A084057

/-- `A052899(n)+A014335(n)` -/
def P16069269176373185988.Spec : Prop :=
  ∀ n, P16069269176373185988.a n = A084057 n

end A084057

/-! ## A084057.P11007904743131497600

`A319196(n)+A103435(n)`
-/

namespace A084057.P11007904743131497600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319196 n + A103435 n

end

end A084057.P11007904743131497600

namespace A084057

/-- `A319196(n)+A103435(n)` -/
def P11007904743131497600.Spec : Prop :=
  ∀ n, P11007904743131497600.a n = A084057 n

end A084057

/-! ## A084057.P3969792209908566502

`A063727(n)-A085449(n)`
-/

namespace A084057.P3969792209908566502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n - A085449 n

end

end A084057.P3969792209908566502

namespace A084057

/-- `A063727(n)-A085449(n)` -/
def P3969792209908566502.Spec : Prop :=
  ∀ n, P3969792209908566502.a n = A084057 n

end A084057

/-! ## A084057.P15965876441690472496

`A063782(n)-A103435(n)`
-/

namespace A084057.P15965876441690472496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 n - A103435 n

end

end A084057.P15965876441690472496

namespace A084057

/-- `A063782(n)-A103435(n)` -/
def P15965876441690472496.Spec : Prop :=
  ∀ n, P15965876441690472496.a n = A084057 n

end A084057

/-! ## A084057.P18320724100826771858

`A094633(n)-A094632(n)`
-/

namespace A084057.P18320724100826771858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094633 n - A094632 n

end

end A084057.P18320724100826771858

namespace A084057

/-- `A094633(n)-A094632(n)` -/
def P18320724100826771858.Spec : Prop :=
  ∀ n, P18320724100826771858.a n = A084057 n

end A084057

/-! ## A084057.P11744149321483400502

`Δ[A000045(n)*A011782(n)]`
-/

namespace A084057.P11744149321483400502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084057.P11744149321483400502

namespace A084057

/-- `Δ[A000045(n)*A011782(n)]` -/
def P11744149321483400502.Spec : Prop :=
  ∀ n, P11744149321483400502.a n = A084057 n

end A084057

/-!
# A084058: a(n) = 2*a(n-1) + 7*a(n-2) for n>1, a(0)=1, a(1)=1.

The programs for A084058, the canonical program `A084058.P2146184900172563158` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084058 has offset 0).

The definition of A084058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+7*a(n-2)` (program `A084058.P2146184900172563158`, by `A084058.P2146184900172563158.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084058.P2146184900172563158

`2*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084058

/-- `2*a(n-1)+7*a(n-2)` -/
def P2146184900172563158.Spec : Prop :=
  ∀ n, (P2146184900172563158.a n : ℤ) = A084058 n

theorem P2146184900172563158.correct : P2146184900172563158.Spec := by
  intro n
  simp only [A084058]

end A084058

/-! ## A084058.P15674661499826484329

`2*A084136(n)-1`
-/

namespace A084058.P15674661499826484329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084136 n - 1

end

end A084058.P15674661499826484329

namespace A084058

/-- `2*A084136(n)-1` -/
def P15674661499826484329.Spec : Prop :=
  ∀ n, P15674661499826484329.a n = A084058 n

end A084058

/-! ## A084058.P545606623587003069

`8*A084150(n)+1`
-/

namespace A084058.P545606623587003069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A084150 n + 1

end

end A084058.P545606623587003069

namespace A084058

/-- `8*A084150(n)+1` -/
def P545606623587003069.Spec : Prop :=
  ∀ n, P545606623587003069.a n = A084058 n

end A084058

/-! ## A084058.P7355076111343407689

`A083100((n-1)%(n+1))`
-/

namespace A084058.P7355076111343407689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A084058.P7355076111343407689

namespace A084058

/-- `A083100((n-1)%(n+1))` -/
def P7355076111343407689.Spec : Prop :=
  ∀ n, P7355076111343407689.a n = A084058 n

end A084058

/-! ## A084058.P5273730109253040396

`A083100(floor(acot(n))-1+n)`
-/

namespace A084058.P5273730109253040396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 + (n : ℤ)).toNat

end

end A084058.P5273730109253040396

namespace A084058

/-- `A083100(floor(acot(n))-1+n)` -/
def P5273730109253040396.Spec : Prop :=
  ∀ n, P5273730109253040396.a n = A084058 n

end A084058

/-! ## A084058.P11917497355685344703

`A083100(round(sqrt(n²+1))-1)`
-/

namespace A084058.P11917497355685344703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

end

end A084058.P11917497355685344703

namespace A084058

/-- `A083100(round(sqrt(n²+1))-1)` -/
def P11917497355685344703.Spec : Prop :=
  ∀ n, P11917497355685344703.a n = A084058 n

end A084058

/-! ## A084058.P16673931224776152791

`A291001(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A084058.P16673931224776152791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291001 (n - 1) + a (n - 1)

end

end A084058.P16673931224776152791

namespace A084058

/-- `A291001(n-1)+a(n-1)` -/
def P16673931224776152791.Spec : Prop :=
  ∀ n, P16673931224776152791.a n = A084058 n

end A084058

/-! ## A084058.P8324125469606453703

`((1+sqrt(8))^n+(1-sqrt(8))^n)/2`
-/

namespace A084058.P8324125469606453703
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (8 : ℝ)) ^ n + (1 - Real.sqrt (8 : ℝ)) ^ n) / 2

end

end A084058.P8324125469606453703

namespace A084058

/-- `((1+sqrt(8))^n+(1-sqrt(8))^n)/2` -/
def P8324125469606453703.Spec : Prop :=
  ∀ n, P8324125469606453703.a n = (A084058 n : ℝ)

end A084058

/-! ## A084058.P8783083821064866131

`Δ[A015519(n)]`
-/

namespace A084058.P8783083821064866131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084058.P8783083821064866131

namespace A084058

/-- `Δ[A015519(n)]` -/
def P8783083821064866131.Spec : Prop :=
  ∀ n, P8783083821064866131.a n = A084058 n

end A084058

/-! ## A084058.P212996243942523123

`Δ[Δ[A084150(n)]]`
-/

namespace A084058.P212996243942523123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084058.P212996243942523123

namespace A084058

/-- `Δ[Δ[A084150(n)]]` -/
def P212996243942523123.Spec : Prop :=
  ∀ n, P212996243942523123.a n = A084058 n

end A084058

/-! ## A084058.P16955999427223665656

`Δ[A305492(n)/2]`
-/

namespace A084058.P16955999427223665656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305492 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084058.P16955999427223665656

namespace A084058

/-- `Δ[A305492(n)/2]` -/
def P16955999427223665656.Spec : Prop :=
  ∀ n, P16955999427223665656.a n = (A084058 n : ℚ)

end A084058

/-! ## A084058.P11860808751058880378

`A083100(n)-A291001(n)`
-/

namespace A084058.P11860808751058880378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n - A291001 n

end

end A084058.P11860808751058880378

namespace A084058

/-- `A083100(n)-A291001(n)` -/
def P11860808751058880378.Spec : Prop :=
  ∀ n, P11860808751058880378.a n = A084058 n

end A084058

/-! ## A084058.P10656742635020186293

`A015519(n+1)-A015519(n)`
-/

namespace A084058.P10656742635020186293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 1) - A015519 n

end

end A084058.P10656742635020186293

namespace A084058

/-- `A015519(n+1)-A015519(n)` -/
def P10656742635020186293.Spec : Prop :=
  ∀ n, P10656742635020186293.a n = A084058 n

end A084058

/-! ## A084058.P15496718367947004441

`A096980(n)-2*A305492(n)`
-/

namespace A084058.P15496718367947004441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096980 n - 2 * A305492 n

end

end A084058.P15496718367947004441

namespace A084058

/-- `A096980(n)-2*A305492(n)` -/
def P15496718367947004441.Spec : Prop :=
  ∀ n, P15496718367947004441.a n = A084058 n

end A084058

/-! ## A084058.P18420411642527779064

`A096980(n)-A291001(n)/2`
-/

namespace A084058.P18420411642527779064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096980 n : ℚ) - (A291001 n : ℚ) / 2

end

end A084058.P18420411642527779064

namespace A084058

/-- `A096980(n)-A291001(n)/2` -/
def P18420411642527779064.Spec : Prop :=
  ∀ n, P18420411642527779064.a n = (A084058 n : ℚ)

end A084058

/-! ## A084058.P10341339672389470284

`2*A083100(n)-A164602(n)`
-/

namespace A084058.P10341339672389470284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083100 n - A164602 n

end

end A084058.P10341339672389470284

namespace A084058

/-- `2*A083100(n)-A164602(n)` -/
def P10341339672389470284.Spec : Prop :=
  ∀ n, P10341339672389470284.a n = A084058 n

end A084058

/-! ## A084058.P16229158620990803907

`A164602(n)-2*A291001(n)`
-/

namespace A084058.P16229158620990803907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164602 n - 2 * A291001 n

end

end A084058.P16229158620990803907

namespace A084058

/-- `A164602(n)-2*A291001(n)` -/
def P16229158620990803907.Spec : Prop :=
  ∀ n, P16229158620990803907.a n = A084058 n

end A084058

/-!
# A084059: a(n) = 4*a(n-1) + 2*a(n-2) for n>1, a(0)=1, a(1)=2.

The programs for A084059, the canonical program `A084059.P17179364515291160020` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084059 has offset 0).

The definition of A084059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+2*a(n-2)` (program `A084059.P17179364515291160020`, by `A084059.P17179364515291160020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084059.P17179364515291160020

`4*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084059

/-- `4*a(n-1)+2*a(n-2)` -/
def P17179364515291160020.Spec : Prop :=
  ∀ n, (P17179364515291160020.a n : ℤ) = A084059 n

theorem P17179364515291160020.correct : P17179364515291160020.Spec := by
  intro n
  simp only [A084059]

end A084059

/-! ## A084059.P12977907531245589180

`A090017(n+1)-2*A090017(n)`
-/

namespace A084059.P12977907531245589180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 1) - 2 * A090017 n

end

end A084059.P12977907531245589180

namespace A084059

/-- `A090017(n+1)-2*A090017(n)` -/
def P12977907531245589180.Spec : Prop :=
  ∀ n, P12977907531245589180.a n = A084059 n

end A084059

/-! ## A084059.P1091284145085369362

`((2+sqrt(6))^n+(2-sqrt(6))^n)/2`
-/

namespace A084059.P1091284145085369362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (6 : ℝ)) ^ n + (2 - Real.sqrt (6 : ℝ)) ^ n) / 2

end

end A084059.P1091284145085369362

namespace A084059

/-- `((2+sqrt(6))^n+(2-sqrt(6))^n)/2` -/
def P1091284145085369362.Spec : Prop :=
  ∀ n, P1091284145085369362.a n = (A084059 n : ℝ)

end A084059

/-! ## A084059.P1374515111616743895

`2-2*(1-2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A084059.P1374515111616743895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - 2 * (1 - 2 * a (n - 1) - a (n - 2))

end

end A084059.P1374515111616743895

namespace A084059

/-- `2-2*(1-2*a(n-1)-a(n-2))` -/
def P1374515111616743895.Spec : Prop :=
  ∀ n, P1374515111616743895.a n = A084059 n

end A084059

/-! ## A084059.P1192755918281025663

`ceil((a(n-1)+a(n-1)+a(n-2))/(1-1/2))` with `a(0)=1, a(1)=2`
-/

namespace A084059.P1192755918281025663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(a (n - 1) + (a (n - 1) + a (n - 2)) : ℚ) / (1 - (1 : ℚ) / 2)⌉

end

end A084059.P1192755918281025663

namespace A084059

/-- `ceil((a(n-1)+a(n-1)+a(n-2))/(1-1/2))` -/
def P1192755918281025663.Spec : Prop :=
  ∀ n, P1192755918281025663.a n = A084059 n

end A084059

/-! ## A084059.P4032741041038467833

`A123348(n)-a(n-1)` with `a(0)=1`
-/

namespace A084059.P4032741041038467833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123348 n - a (n - 1)

end

end A084059.P4032741041038467833

namespace A084059

/-- `A123348(n)-a(n-1)` -/
def P4032741041038467833.Spec : Prop :=
  ∀ n, P4032741041038467833.a n = A084059 n

end A084059

/-! ## A084059.P4136488411692921296

`A335749(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A084059.P4136488411692921296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335749 (n - 1) + a (n - 1)

end

end A084059.P4136488411692921296

namespace A084059

/-- `A335749(n-1)+a(n-1)` -/
def P4136488411692921296.Spec : Prop :=
  ∀ n, P4136488411692921296.a n = A084059 n

end A084059

/-! ## A084059.P15821039854641189857

`a(n-1)+A189741(n+1)/2` with `a(0)=1`
-/

namespace A084059.P15821039854641189857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A189741 (n + 1) : ℚ) / 2

end

end A084059.P15821039854641189857

namespace A084059

/-- `a(n-1)+A189741(n+1)/2` -/
def P15821039854641189857.Spec : Prop :=
  ∀ n, P15821039854641189857.a n = (A084059 n : ℚ)

end A084059

/-! ## A084059.P4136266787886369775

`A026655(A004273(n))`
-/

namespace A084059.P4136266787886369775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026655 (A004273 n).toNat

end

end A084059.P4136266787886369775

namespace A084059

/-- `A026655(A004273(n))` -/
def P4136266787886369775.Spec : Prop :=
  ∀ n, P4136266787886369775.a n = A084059 n

end A084059

/-! ## A084059.P3671759575432569918

`A123347(n)-A123348(n)`
-/

namespace A084059.P3671759575432569918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123347 n - A123348 n

end

end A084059.P3671759575432569918

namespace A084059

/-- `A123347(n)-A123348(n)` -/
def P3671759575432569918.Spec : Prop :=
  ∀ n, P3671759575432569918.a n = A084059 n

end A084059

/-! ## A084059.P13311880213905988504

`∑[A335749(A004273(n)-n)]`
-/

namespace A084059.P13311880213905988504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335749 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084059.P13311880213905988504

namespace A084059

/-- `∑[A335749(A004273(n)-n)]` -/
def P13311880213905988504.Spec : Prop :=
  ∀ n, P13311880213905988504.a n = A084059 n

end A084059

/-! ## A084059.P7900624385596927235

`Δ[A090017(n)]-A090017(n)`
-/

namespace A084059.P7900624385596927235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A090017 n

end

end A084059.P7900624385596927235

namespace A084059

/-- `Δ[A090017(n)]-A090017(n)` -/
def P7900624385596927235.Spec : Prop :=
  ∀ n, P7900624385596927235.a n = A084059 n

end A084059

/-! ## A084059.P13295568447313885844

`A164549(n)-4*A090017(n)`
-/

namespace A084059.P13295568447313885844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 n - 4 * A090017 n

end

end A084059.P13295568447313885844

namespace A084059

/-- `A164549(n)-4*A090017(n)` -/
def P13295568447313885844.Spec : Prop :=
  ∀ n, P13295568447313885844.a n = A084059 n

end A084059

/-! ## A084059.P16133294486646805995

`record[gcd(2*A026656(n), A026655(n))]`
-/

namespace A084059.P16133294486646805995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A026656 n) (A026655 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084059.P16133294486646805995

namespace A084059

/-- `record[gcd(2*A026656(n), A026655(n))]` -/
def P16133294486646805995.Spec : Prop :=
  ∀ n, (P16133294486646805995.a n : ℤ) = A084059 n

end A084059

/-! ## A084059.P14152763456270710109

`∑[A335749(A004526(A004275(n)))]`
-/

namespace A084059.P14152763456270710109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335749 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084059.P14152763456270710109

namespace A084059

/-- `∑[A335749(A004526(A004275(n)))]` -/
def P14152763456270710109.Spec : Prop :=
  ∀ n, P14152763456270710109.a n = A084059 n

end A084059

/-! ## A084059.P3932030078530517251

`2*A123347(n)-A335749(n)`
-/

namespace A084059.P3932030078530517251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123347 n - A335749 n

end

end A084059.P3932030078530517251

namespace A084059

/-- `2*A123347(n)-A335749(n)` -/
def P3932030078530517251.Spec : Prop :=
  ∀ n, P3932030078530517251.a n = A084059 n

end A084059

/-! ## A084059.P8077552307627817019

`A335749(n)-2*A123348(n)`
-/

namespace A084059.P8077552307627817019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335749 n - 2 * A123348 n

end

end A084059.P8077552307627817019

namespace A084059

/-- `A335749(n)-2*A123348(n)` -/
def P8077552307627817019.Spec : Prop :=
  ∀ n, P8077552307627817019.a n = A084059 n

end A084059

/-! ## A084059.P11280035455443193377

`A021001(n)-(A164549(n)+A090017(n))`
-/

namespace A084059.P11280035455443193377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021001 n - (A164549 n + A090017 n)

end

end A084059.P11280035455443193377

namespace A084059

/-- `A021001(n)-(A164549(n)+A090017(n))` -/
def P11280035455443193377.Spec : Prop :=
  ∀ n, P11280035455443193377.a n = A084059 n

end A084059

/-!
# A084060: a(n) = 1/2 + (1-6*n)*(-1)^n/2.

The programs for A084060, the canonical program `A084060.P6968236759027825870` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084060 has offset 0).

The definition of A084060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084060.P6968236759027825870

`(1+(1-6*n)*(-1)^n)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084060

/-- `(1+(1-6*n)*(-1)^n)/2` -/
def P6968236759027825870.Spec : Prop :=
  ∀ n, P6968236759027825870.a n = (A084060 n : ℚ)

end A084060

/-! ## A084060.P8592044532852900581

`(6*n)^(n%2)-3*n`
-/

namespace A084060.P8592044532852900581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n) ^ (n % 2) : ℤ) - (3 * n : ℤ)

end

end A084060.P8592044532852900581

namespace A084060

/-- `(6*n)^(n%2)-3*n` -/
def P8592044532852900581.Spec : Prop :=
  ∀ n, P8592044532852900581.a n = A084060 n

end A084060

/-! ## A084060.P14367099124693031267

`gcd(6*n, and(1, n+1))-3*n`
-/

namespace A084060.P14367099124693031267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (6 * n) (Nat.land 1 (n + 1)) : ℤ) - (3 * n : ℤ)

end

end A084060.P14367099124693031267

namespace A084060

/-- `gcd(6*n, and(1, n+1))-3*n` -/
def P14367099124693031267.Spec : Prop :=
  ∀ n, P14367099124693031267.a n = A084060 n

end A084060

/-! ## A084060.P10436897273401945941

`xor(3, n-a(n-1))-(n-1)` with `a(0)=1`
-/

namespace A084060.P10436897273401945941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 3 ((n : ℤ) - a (n - 1)) - ((n : ℤ) - 1)

end

end A084060.P10436897273401945941

namespace A084060

/-- `xor(3, n-a(n-1))-(n-1)` -/
def P10436897273401945941.Spec : Prop :=
  ∀ n, P10436897273401945941.a n = A084060 n

end A084060

/-! ## A084060.P9113327113996491265

`1-(a(n-1)+3*(-1)^n)` with `a(0)=1`
-/

namespace A084060.P9113327113996491265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) + 3 * (-1) ^ n)

end

end A084060.P9113327113996491265

namespace A084060

/-- `1-(a(n-1)+3*(-1)^n)` -/
def P9113327113996491265.Spec : Prop :=
  ∀ n, P9113327113996491265.a n = A084060 n

end A084060

/-! ## A084060.P2640539907895850349

`1-3*(-1)^n-a(n-1)` with `a(0)=1`
-/

namespace A084060.P2640539907895850349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 3 * (-1) ^ n - a (n - 1)

end

end A084060.P2640539907895850349

namespace A084060

/-- `1-3*(-1)^n-a(n-1)` -/
def P2640539907895850349.Spec : Prop :=
  ∀ n, P2640539907895850349.a n = A084060 n

end A084060

/-! ## A084060.P2710966176586102397

`2-(2*a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A084060.P2710966176586102397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (2 * a (n - 1) + a (n - 2))

end

end A084060.P2710966176586102397

namespace A084060

/-- `2-(2*a(n-1)+a(n-2))` -/
def P2710966176586102397.Spec : Prop :=
  ∀ n, P2710966176586102397.a n = A084060 n

end A084060

/-! ## A084060.P11986530694526628041

`3/(-1)^(n+1)+1-a(n-1)` with `a(0)=1`
-/

namespace A084060.P11986530694526628041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 / ((-1) ^ (n + 1) : ℚ) + (1 - a (n - 1))

end

end A084060.P11986530694526628041

namespace A084060

/-- `3/(-1)^(n+1)+1-a(n-1)` -/
def P11986530694526628041.Spec : Prop :=
  ∀ n, P11986530694526628041.a n = (A084060 n : ℚ)

end A084060

/-! ## A084060.P4902251782326793492

`floor(2-a(n-1)-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A084060.P4902251782326793492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - a (n - 1) - a (n - 1) - a (n - 2)

end

end A084060.P4902251782326793492

namespace A084060

/-- `floor(2-a(n-1)-a(n-1)-a(n-2))` -/
def P4902251782326793492.Spec : Prop :=
  ∀ n, P4902251782326793492.a n = A084060 n

end A084060

/-! ## A084060.P16169913850303624726

`or(1, ∑[A228935(n)])`
-/

namespace A084060.P16169913850303624726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084060.P16169913850303624726

namespace A084060

/-- `or(1, ∑[A228935(n)])` -/
def P16169913850303624726.Spec : Prop :=
  ∀ n, P16169913850303624726.a n = A084060 n

end A084060

/-! ## A084060.P11130414687911057191

`2*A084056(n)+1`
-/

namespace A084060.P11130414687911057191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084056 n + 1

end

end A084060.P11130414687911057191

namespace A084060

/-- `2*A084056(n)+1` -/
def P11130414687911057191.Spec : Prop :=
  ∀ n, P11130414687911057191.a n = A084060 n

end A084060

/-! ## A084060.P6263530604212693413

`or(1, 3*n*A033999(n+1))`
-/

namespace A084060.P6263530604212693413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * n : ℤ) * A033999 (n + 1))

end

end A084060.P6263530604212693413

namespace A084060

/-- `or(1, 3*n*A033999(n+1))` -/
def P6263530604212693413.Spec : Prop :=
  ∀ n, P6263530604212693413.a n = A084060 n

end A084060

/-! ## A084060.P3272201072057102938

`A047461(n+1)-A317314(n)`
-/

namespace A084060.P3272201072057102938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (n + 1) - A317314 n

end

end A084060.P3272201072057102938

namespace A084060

/-- `A047461(n+1)-A317314(n)` -/
def P3272201072057102938.Spec : Prop :=
  ∀ n, P3272201072057102938.a n = A084060 n

end A084060

/-! ## A084060.P17747897387430324610

`A047238(n+1)*A062157(n)+1`
-/

namespace A084060.P17747897387430324610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 1) * A062157 n + 1

end

end A084060.P17747897387430324610

namespace A084060

/-- `A047238(n+1)*A062157(n)+1` -/
def P17747897387430324610.Spec : Prop :=
  ∀ n, P17747897387430324610.a n = A084060 n

end A084060

/-! ## A084060.P8064737492945521829

`(1-A047233(n+1))*A033999(n)`
-/

namespace A084060.P8064737492945521829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A047233 (n + 1)) * A033999 n

end

end A084060.P8064737492945521829

namespace A084060

/-- `(1-A047233(n+1))*A033999(n)` -/
def P8064737492945521829.Spec : Prop :=
  ∀ n, P8064737492945521829.a n = A084060 n

end A084060

/-! ## A084060.P6086333116333414225

`A185212(n-A004526(n))-A049450(n)`
-/

namespace A084060.P6086333116333414225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185212 ((n : ℤ) - A004526 n).toNat - A049450 n

end

end A084060.P6086333116333414225

namespace A084060

/-- `A185212(n-A004526(n))-A049450(n)` -/
def P6086333116333414225.Spec : Prop :=
  ∀ n, P6086333116333414225.a n = A084060 n

end A084060

/-! ## A084060.P16063173027268642352

`Δ[A141310(n)-Δ[A141310(n)]]`
-/

namespace A084060.P16063173027268642352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084060.P16063173027268642352

namespace A084060

/-- `Δ[A141310(n)-Δ[A141310(n)]]` -/
def P16063173027268642352.Spec : Prop :=
  ∀ n, P16063173027268642352.a n = A084060 n

end A084060

/-! ## A084060.P15560236621555913099

`Δ[A124625(n+1)-Δ[A124625(n+1)]]`
-/

namespace A084060.P15560236621555913099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084060.P15560236621555913099

namespace A084060

/-- `Δ[A124625(n+1)-Δ[A124625(n+1)]]` -/
def P15560236621555913099.Spec : Prop :=
  ∀ n, P15560236621555913099.a n = A084060 n

end A084060

/-!
# A084062: Main diagonal of number array A084061.

The programs for A084062, there is no canonical definition to state claims against.
-/

/-! ## A084062.P3154856411402319883

`((n+sqrt(n))^n+(n-sqrt(n))^n)/2`
-/

namespace A084062.P3154856411402319883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) + Real.sqrt (n : ℝ)) ^ n + ((n : ℝ) - Real.sqrt (n : ℝ)) ^ n) / 2

end

end A084062.P3154856411402319883

/-! ## A084062.P17214117976625375801

`A361432(∑[4*n])`
-/

namespace A084062.P17214117976625375801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361432 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084062.P17214117976625375801

/-! ## A084062.P13019671249429785913

`A084061(∑[4*n])`
-/

namespace A084062.P13019671249429785913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084062.P13019671249429785913

/-! ## A084062.P14073464469054617166

`A007318(C(2, n))*A084061(A106232(n+1))`
-/

namespace A084062.P14073464469054617166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A084061 (A106232 (n + 1)).toNat

end

end A084062.P14073464469054617166

/-! ## A084062.P1615073788385696807

`A000041(C(2, n+2))*A084061(A106232(n+1))`
-/

namespace A084062.P1615073788385696807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A084061 (A106232 (n + 1)).toNat

end

end A084062.P1615073788385696807

/-!
# A084063: First subdiagonal of number array A084061.

The programs for A084063, there is no canonical definition to state claims against.
-/

/-! ## A084063.P854446811845272102

`((n-sqrt(n+1))^n+(n+sqrt(n+1))^n)/2`
-/

namespace A084063.P854446811845272102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (n + 1 : ℝ)) ^ n + ((n : ℝ) + Real.sqrt (n + 1 : ℝ)) ^ n) / 2

end

end A084063.P854446811845272102

/-! ## A084063.P12813222326987621631

`A084061(A056220(n+1))`
-/

namespace A084063.P12813222326987621631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (A056220 (n + 1)).toNat

end

end A084063.P12813222326987621631

/-! ## A084063.P12238549306601077031

`A084061(eq[1, A114327(n)])`
-/

namespace A084063.P12238549306601077031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084063.P12238549306601077031

/-! ## A084063.P11213386781023572454

`A084061(∑[A016825(n)]-1)`
-/

namespace A084063.P11213386781023572454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A084063.P11213386781023572454

/-! ## A084063.P16600142281830046109

`A084061(A054000(n+1)+1)`
-/

namespace A084063.P16600142281830046109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (A054000 (n + 1) + 1).toNat

end

end A084063.P16600142281830046109

/-!
# A084064: Third row of number array A084061.

The programs for A084064, the canonical program `A084064.P3569560282940518345` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084064 has offset 0).

The definition of A084064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084064.P3569560282940518345

`((n+sqrt(2))^n+(n-sqrt(2))^n)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084064

/-- `((n+sqrt(2))^n+(n-sqrt(2))^n)/2` -/
def P3569560282940518345.Spec : Prop :=
  ∀ n, P3569560282940518345.a n = (A084064 n : ℝ)

end A084064

/-! ## A084064.P13850417935457897201

`A084061(∑[n+3])`
-/

namespace A084064.P13850417935457897201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084064.P13850417935457897201

namespace A084064

/-- `A084061(∑[n+3])` -/
def P13850417935457897201.Spec : Prop :=
  ∀ n, P13850417935457897201.a n = A084064 n

end A084064

/-! ## A084064.P14692961592613037707

`char[n-a(n-1)]*A084061(A055998(n+1))` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A084064.P14692961592613037707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A084061 (A055998 (n + 1)).toNat

end

end A084064.P14692961592613037707

namespace A084064

/-- `char[n-a(n-1)]*A084061(A055998(n+1))` -/
def P14692961592613037707.Spec : Prop :=
  ∀ n, P14692961592613037707.a n = A084064 n

end A084064

/-! ## A084064.P6901453101359575466

`A059841(2*n)*A084061(A055998(n+1))`
-/

namespace A084064.P6901453101359575466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A084061 (A055998 (n + 1)).toNat

end

end A084064.P6901453101359575466

namespace A084064

/-- `A059841(2*n)*A084061(A055998(n+1))` -/
def P6901453101359575466.Spec : Prop :=
  ∀ n, P6901453101359575466.a n = A084064 n

end A084064

/-! ## A084064.P11502270240517451876

`or(A059841(n+1), A084061(A055998(n+1)))`
-/

namespace A084064.P11502270240517451876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (n + 1)) (A084061 (A055998 (n + 1)).toNat)

end

end A084064.P11502270240517451876

namespace A084064

/-- `or(A059841(n+1), A084061(A055998(n+1)))` -/
def P11502270240517451876.Spec : Prop :=
  ∀ n, P11502270240517451876.a n = A084064 n

end A084064

/-! ## A084064.P11732628298416462920

`A084061(A055998(n+1))-char[A243050(n+1)]`
-/

namespace A084064.P11732628298416462920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243050 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (A055998 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A084064.P11732628298416462920

namespace A084064

/-- `A084061(A055998(n+1))-char[A243050(n+1)]` -/
def P11732628298416462920.Spec : Prop :=
  ∀ n, P11732628298416462920.a n = A084064 n

end A084064

/-!
# A084065: Fourth row of number array A084061.

The programs for A084065, the canonical program `A084065.P12519243158238363735` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084065 has offset 0).

The definition of A084065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084065.P12519243158238363735

`((n+sqrt(3))^n+(n-sqrt(3))^n)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084065

/-- `((n+sqrt(3))^n+(n-sqrt(3))^n)/2` -/
def P12519243158238363735.Spec : Prop :=
  ∀ n, P12519243158238363735.a n = (A084065 n : ℝ)

end A084065

/-! ## A084065.P17560632126084915408

`A084061(∑[n+3]+n+3)`
-/

namespace A084065.P17560632126084915408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A084065.P17560632126084915408

namespace A084065

/-- `A084061(∑[n+3]+n+3)` -/
def P17560632126084915408.Spec : Prop :=
  ∀ n, P17560632126084915408.a n = A084065 n

end A084065

/-!
# A084068: a(1) = 1, a(2) = 2; a(2*k) = 2*a(2*k-1) - a(2*k-2), a(2*k+1) = 4*a(2*k) - a(2*k-1).

The programs for A084068, the canonical program `A084068.P6527394399570719045` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084068 has offset 1).

The definition of A084068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084068.P6527394399570719045

`2*gcd(2, n)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084068

/-- `2*gcd(2, n)*a(n-1)-a(n-2)` -/
def P6527394399570719045.Spec : Prop :=
  ∀ n, P6527394399570719045.a n = A084068 (n + 1)

theorem P6527394399570719045.correct : P6527394399570719045.Spec := by
  intro n
  simp only [A084068, Nat.add_sub_cancel]

end A084068

/-! ## A084068.P1681116659695988285

`∑[A000129(or(1, n))]`
-/

namespace A084068.P1681116659695988285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084068.P1681116659695988285

namespace A084068

/-- `∑[A000129(or(1, n))]` -/
def P1681116659695988285.Spec : Prop :=
  ∀ n, P1681116659695988285.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P11039158020958560854

`∑[A215928(or(1, n))]`
-/

namespace A084068.P11039158020958560854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084068.P11039158020958560854

namespace A084068

/-- `∑[A215928(or(1, n))]` -/
def P11039158020958560854.Spec : Prop :=
  ∀ n, P11039158020958560854.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P2510178816451654018

`∑[A000129(char[2*n]+n)]`
-/

namespace A084068.P2510178816451654018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084068.P2510178816451654018

namespace A084068

/-- `∑[A000129(char[2*n]+n)]` -/
def P2510178816451654018.Spec : Prop :=
  ∀ n, P2510178816451654018.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P8894613840102947930

`∑[xor(3, A000129(n-and(1, n)+1))-1]`
-/

namespace A084068.P8894613840102947930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A000129 ((n : ℤ) - (Nat.land 1 n : ℤ) + 1).toNat) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084068.P8894613840102947930

namespace A084068

/-- `∑[xor(3, A000129(n-and(1, n)+1))-1]` -/
def P8894613840102947930.Spec : Prop :=
  ∀ n, P8894613840102947930.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P10283737306471710482

`∑[A215928(A109613(n))]`
-/

namespace A084068.P10283737306471710482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084068.P10283737306471710482

namespace A084068

/-- `∑[A215928(A109613(n))]` -/
def P10283737306471710482.Spec : Prop :=
  ∀ n, P10283737306471710482.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P1564126447173789008

`A002965(A014601(n+1))`
-/

namespace A084068.P1564126447173789008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A014601 (n + 1)).toNat

end

end A084068.P1564126447173789008

namespace A084068

/-- `A002965(A014601(n+1))` -/
def P1564126447173789008.Spec : Prop :=
  ∀ n, P1564126447173789008.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P15585958003474582157

`A092550(A047235(n+1))`
-/

namespace A084068.P15585958003474582157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A047235 (n + 1)).toNat

end

end A084068.P15585958003474582157

namespace A084068

/-- `A092550(A047235(n+1))` -/
def P15585958003474582157.Spec : Prop :=
  ∀ n, P15585958003474582157.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P10224514247458630041

`A002965(A154708(n+1))`
-/

namespace A084068.P10224514247458630041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A154708 (n + 1)).toNat

end

end A084068.P10224514247458630041

namespace A084068

/-- `A002965(A154708(n+1))` -/
def P10224514247458630041.Spec : Prop :=
  ∀ n, P10224514247458630041.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P7676415920140983059

`A155046(A014601(n)+1)`
-/

namespace A084068.P7676415920140983059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (A014601 n + 1).toNat

end

end A084068.P7676415920140983059

namespace A084068

/-- `A155046(A014601(n)+1)` -/
def P7676415920140983059.Spec : Prop :=
  ∀ n, P7676415920140983059.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P6086085984661752623

`A155046(A042948(n+1))`
-/

namespace A084068.P6086085984661752623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (A042948 (n + 1)).toNat

end

end A084068.P6086085984661752623

namespace A084068

/-- `A155046(A042948(n+1))` -/
def P6086085984661752623.Spec : Prop :=
  ∀ n, P6086085984661752623.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P11446844110205606061

`A092550(A118286(n+1))`
-/

namespace A084068.P11446844110205606061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A118286 (n + 1)).toNat

end

end A084068.P11446844110205606061

namespace A084068

/-- `A092550(A118286(n+1))` -/
def P11446844110205606061.Spec : Prop :=
  ∀ n, P11446844110205606061.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P3685997366854534217

`A116560(A168489(n+1))`
-/

namespace A084068.P3685997366854534217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A168489 (n + 1)).toNat

end

end A084068.P3685997366854534217

namespace A084068

/-- `A116560(A168489(n+1))` -/
def P3685997366854534217.Spec : Prop :=
  ∀ n, P3685997366854534217.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P14047420016231235972

`A092550(A284794(n+1))`
-/

namespace A084068.P14047420016231235972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A284794 (n + 1)).toNat

end

end A084068.P14047420016231235972

namespace A084068

/-- `A092550(A284794(n+1))` -/
def P14047420016231235972.Spec : Prop :=
  ∀ n, P14047420016231235972.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P7446562555623830276

`A155046(A338062(n+1))`
-/

namespace A084068.P7446562555623830276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (A338062 (n + 1)).toNat

end

end A084068.P7446562555623830276

namespace A084068

/-- `A155046(A338062(n+1))` -/
def P7446562555623830276.Spec : Prop :=
  ∀ n, P7446562555623830276.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P12315198776532435637

`A092550(A047238(n+2))`
-/

namespace A084068.P12315198776532435637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A047238 (n + 2)).toNat

end

end A084068.P12315198776532435637

namespace A084068

/-- `A092550(A047238(n+2))` -/
def P12315198776532435637.Spec : Prop :=
  ∀ n, P12315198776532435637.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P9494705797512646305

`A249576(A047233(n+2))`
-/

namespace A084068.P9494705797512646305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A047233 (n + 2)).toNat

end

end A084068.P9494705797512646305

namespace A084068

/-- `A249576(A047233(n+2))` -/
def P9494705797512646305.Spec : Prop :=
  ∀ n, P9494705797512646305.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P6847958824856063187

`A116560(A272975(n+2))`
-/

namespace A084068.P6847958824856063187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A272975 (n + 2)).toNat

end

end A084068.P6847958824856063187

namespace A084068

/-- `A116560(A272975(n+2))` -/
def P6847958824856063187.Spec : Prop :=
  ∀ n, P6847958824856063187.a n = A084068 (n + 1)

end A084068

/-! ## A084068.P16711815982392774089

`A089499(n)+A001333(n)`
-/

namespace A084068.P16711815982392774089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 n + A001333 n

end

end A084068.P16711815982392774089

namespace A084068

/-- `A089499(n)+A001333(n)` -/
def P16711815982392774089.Spec : Prop :=
  ∀ n, P16711815982392774089.a n = A084068 (n + 1)

end A084068

/-!
# A084069: Numbers k such that 7*k^2 = floor(k*sqrt(7)*ceiling(k*sqrt(7))).

The programs for A084069, the canonical program `A084069.P9953815794884153221` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084069 has offset 1).

The definition of A084069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084069.P9953815794884153221

`16*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=17, a(3)=48`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084069

/-- `16*a(n-2)-a(n-4)` -/
def P9953815794884153221.Spec : Prop :=
  ∀ n, P9953815794884153221.a n = A084069 (n + 1)

theorem P9953815794884153221.correct : P9953815794884153221.Spec := by
  intro n
  simp only [A084069, Nat.add_sub_cancel]

end A084069

/-! ## A084069.P16380393265363131554

`A259596(2*n)`
-/

namespace A084069.P16380393265363131554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259596 (2 * n)

end

end A084069.P16380393265363131554

namespace A084069

/-- `A259596(2*n)` -/
def P16380393265363131554.Spec : Prop :=
  ∀ n, P16380393265363131554.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P3552472402267826433

`A041009(Δ[n²])`
-/

namespace A084069.P3552472402267826433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A084069.P3552472402267826433

namespace A084069

/-- `A041009(Δ[n²])` -/
def P3552472402267826433.Spec : Prop :=
  ∀ n, P3552472402267826433.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P15697379789344248487

`∑[A202638(n+1)]`
-/

namespace A084069.P15697379789344248487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084069.P15697379789344248487

namespace A084069

/-- `∑[A202638(n+1)]` -/
def P15697379789344248487.Spec : Prop :=
  ∀ n, P15697379789344248487.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P716881707363087822

`∑[A041009(2*n)]`
-/

namespace A084069.P716881707363087822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084069.P716881707363087822

namespace A084069

/-- `∑[A041009(2*n)]` -/
def P716881707363087822.Spec : Prop :=
  ∀ n, P716881707363087822.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P10175667319533406984

`record[A041009(xor(1, n))]`
-/

namespace A084069.P10175667319533406984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084069.P10175667319533406984

namespace A084069

/-- `record[A041009(xor(1, n))]` -/
def P10175667319533406984.Spec : Prop :=
  ∀ n, P10175667319533406984.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P6528335969720940908

`record[A041009(n*n%2)]`
-/

namespace A084069.P6528335969720940908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084069.P6528335969720940908

namespace A084069

/-- `record[A041009(n*n%2)]` -/
def P6528335969720940908.Spec : Prop :=
  ∀ n, P6528335969720940908.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P10370742058908401333

`Δ[A007750(n)]/gcd(2, n+1)`
-/

namespace A084069.P10370742058908401333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A084069.P10370742058908401333

namespace A084069

/-- `Δ[A007750(n)]/gcd(2, n+1)` -/
def P10370742058908401333.Spec : Prop :=
  ∀ n, P10370742058908401333.a n = (A084069 (n + 1) : ℚ)

end A084069

/-! ## A084069.P13410504595307417789

`record[A041009(A004442(n))]`
-/

namespace A084069.P13410504595307417789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084069.P13410504595307417789

namespace A084069

/-- `record[A041009(A004442(n))]` -/
def P13410504595307417789.Spec : Prop :=
  ∀ n, P13410504595307417789.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P1257920019293809263

`record[A041009(A014681(n)+1)]`
-/

namespace A084069.P1257920019293809263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084069.P1257920019293809263

namespace A084069

/-- `record[A041009(A014681(n)+1)]` -/
def P1257920019293809263.Spec : Prop :=
  ∀ n, P1257920019293809263.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P5270182331759191535

`record[A041009(A237420(n)+1)]`
-/

namespace A084069.P5270182331759191535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084069.P5270182331759191535

namespace A084069

/-- `record[A041009(A237420(n)+1)]` -/
def P5270182331759191535.Spec : Prop :=
  ∀ n, P5270182331759191535.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P5556676034042035544

`record[A041009(A033999(n)+n)]`
-/

namespace A084069.P5556676034042035544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084069.P5556676034042035544

namespace A084069

/-- `record[A041009(A033999(n)+n)]` -/
def P5556676034042035544.Spec : Prop :=
  ∀ n, P5556676034042035544.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P14752305343839053680

`record[A041009(n-A237420(n))]`
-/

namespace A084069.P14752305343839053680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 ((n : ℤ) - A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084069.P14752305343839053680

namespace A084069

/-- `record[A041009(n-A237420(n))]` -/
def P14752305343839053680.Spec : Prop :=
  ∀ n, P14752305343839053680.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P2198389386530104170

`A010689(2*n)*A041009(2*n+1)`
-/

namespace A084069.P2198389386530104170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 (2 * n) * A041009 (2 * n + 1)

end

end A084069.P2198389386530104170

namespace A084069

/-- `A010689(2*n)*A041009(2*n+1)` -/
def P2198389386530104170.Spec : Prop :=
  ∀ n, P2198389386530104170.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P8974266445356493970

`A033999(2*n)*A041009(2*n+1)`
-/

namespace A084069.P8974266445356493970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A041009 (2 * n + 1)

end

end A084069.P8974266445356493970

namespace A084069

/-- `A033999(2*n)*A041009(2*n+1)` -/
def P8974266445356493970.Spec : Prop :=
  ∀ n, P8974266445356493970.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P9357478082659842520

`A237420(2*n+1)+A041009(2*n+1)`
-/

namespace A084069.P9357478082659842520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (2 * n + 1) + A041009 (2 * n + 1)

end

end A084069.P9357478082659842520

namespace A084069

/-- `A237420(2*n+1)+A041009(2*n+1)` -/
def P9357478082659842520.Spec : Prop :=
  ∀ n, P9357478082659842520.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P3607337637938762250

`A041009(2*n+1)*A067513(2*n+1)`
-/

namespace A084069.P3607337637938762250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (2 * n + 1) * A067513 (2 * n + 1)

end

end A084069.P3607337637938762250

namespace A084069

/-- `A041009(2*n+1)*A067513(2*n+1)` -/
def P3607337637938762250.Spec : Prop :=
  ∀ n, P3607337637938762250.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P8295594853242322648

`A041009(2*n+1)*A140670(2*n+1)`
-/

namespace A084069.P8295594853242322648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (2 * n + 1) * A140670 (2 * n + 1)

end

end A084069.P8295594853242322648

namespace A084069

/-- `A041009(2*n+1)*A140670(2*n+1)` -/
def P8295594853242322648.Spec : Prop :=
  ∀ n, P8295594853242322648.a n = A084069 (n + 1)

end A084069

/-! ## A084069.P10985708170638373081

`record[A041009(n)/A041009(A237420(n))]`
-/

namespace A084069.P10985708170638373081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041009 n : ℚ) / (A041009 (A237420 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084069.P10985708170638373081

namespace A084069

/-- `record[A041009(n)/A041009(A237420(n))]` -/
def P10985708170638373081.Spec : Prop :=
  ∀ n, P10985708170638373081.a n = (A084069 (n + 1) : ℚ)

end A084069

/-! ## A084069.P4809655043889547134

`A041004(A041002(n))*A041009(2*n+1)`
-/

namespace A084069.P4809655043889547134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041004 (A041002 n).toNat * A041009 (2 * n + 1)

end

end A084069.P4809655043889547134

namespace A084069

/-- `A041004(A041002(n))*A041009(2*n+1)` -/
def P4809655043889547134.Spec : Prop :=
  ∀ n, P4809655043889547134.a n = A084069 (n + 1)

end A084069

/-!
# A084070: a(n) = 38*a(n-1) - a(n-2), with a(0)=0, a(1)=6.

The programs for A084070, the canonical program `A084070.P3256128229508002151` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084070 has offset 0).

The definition of A084070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `38*a(n-1)-a(n-2)` (program `A084070.P3256128229508002151`, by `A084070.P3256128229508002151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084070.P3256128229508002151

`38*a(n-1)-a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084070

/-- `38*a(n-1)-a(n-2)` -/
def P3256128229508002151.Spec : Prop :=
  ∀ n, P3256128229508002151.a n = A084070 n

theorem P3256128229508002151.correct : P3256128229508002151.Spec := by
  intro n
  simp only [A084070]

end A084070

/-! ## A084070.P5640318310406625472

`A005668(2*n)`
-/

namespace A084070.P5640318310406625472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (2 * n)

end

end A084070.P5640318310406625472

namespace A084070

/-- `A005668(2*n)` -/
def P5640318310406625472.Spec : Prop :=
  ∀ n, P5640318310406625472.a n = A084070 n

end A084070

/-! ## A084070.P14264553969976850778

`sqrt(10)/20*((19+6*sqrt(10))^n-(19-6*sqrt(10))^n)`
-/

namespace A084070.P14264553969976850778
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (10 : ℝ) / 20 * ((19 + 6 * Real.sqrt (10 : ℝ)) ^ n - (19 - 6 * Real.sqrt (10 : ℝ)) ^ n)

end

end A084070.P14264553969976850778

namespace A084070

/-- `sqrt(10)/20*((19+6*sqrt(10))^n-(19-6*sqrt(10))^n)` -/
def P14264553969976850778.Spec : Prop :=
  ∀ n, P14264553969976850778.a n = (A084070 n : ℝ)

end A084070

/-! ## A084070.P6885776672676171730

`floor(A078469(2*n)/2)`
-/

namespace A084070.P6885776672676171730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078469 (2 * n) : ℚ) / 2⌋

end

end A084070.P6885776672676171730

namespace A084070

/-- `floor(A078469(2*n)/2)` -/
def P6885776672676171730.Spec : Prop :=
  ∀ n, P6885776672676171730.a n = A084070 n

end A084070

/-! ## A084070.P511804932160852490

`record[xor((-1)^n, A005668(n))]-1`
-/

namespace A084070.P511804932160852490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n) (A005668 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A084070.P511804932160852490

namespace A084070

/-- `record[xor((-1)^n, A005668(n))]-1` -/
def P511804932160852490.Spec : Prop :=
  ∀ n, P511804932160852490.a n = A084070 n

end A084070

/-! ## A084070.P18192057470583113008

`record[A005668(A014681(n))]`
-/

namespace A084070.P18192057470583113008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084070.P18192057470583113008

namespace A084070

/-- `record[A005668(A014681(n))]` -/
def P18192057470583113008.Spec : Prop :=
  ∀ n, P18192057470583113008.a n = A084070 n

end A084070

/-! ## A084070.P9054075443494305934

`record[A005668(A083220(n))]`
-/

namespace A084070.P9054075443494305934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084070.P9054075443494305934

namespace A084070

/-- `record[A005668(A083220(n))]` -/
def P9054075443494305934.Spec : Prop :=
  ∀ n, P9054075443494305934.a n = A084070 n

end A084070

/-! ## A084070.P14451525835688223799

`record[A005668(and(n, A005126(n)))]`
-/

namespace A084070.P14451525835688223799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (Int.land (n : ℤ) (A005126 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084070.P14451525835688223799

namespace A084070

/-- `record[A005668(and(n, A005126(n)))]` -/
def P14451525835688223799.Spec : Prop :=
  ∀ n, P14451525835688223799.a n = A084070 n

end A084070

/-! ## A084070.P3893537650750568326

`A221874(2*n+1)-A097315(n)`
-/

namespace A084070.P3893537650750568326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221874 (2 * n + 1) - A097315 n

end

end A084070.P3893537650750568326

namespace A084070

/-- `A221874(2*n+1)-A097315(n)` -/
def P3893537650750568326.Spec : Prop :=
  ∀ n, P3893537650750568326.a n = A084070 n

end A084070

/-! ## A084070.P14916680747140993125

`A097315(n)-A221875(2*n+1)`
-/

namespace A084070.P14916680747140993125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097315 n - A221875 (2 * n + 1)

end

end A084070.P14916680747140993125

namespace A084070

/-- `A097315(n)-A221875(2*n+1)` -/
def P14916680747140993125.Spec : Prop :=
  ∀ n, P14916680747140993125.a n = A084070 n

end A084070

/-!
# A084073: Starting index of a record-breaking string of consecutive equal digits in the decimal expansion of Pi.

The programs for A084073, there is no canonical definition to state claims against.
-/

/-! ## A084073.P13223501568270466226

`record[A049522(∑{digits}[n, #]+1)]`
-/

namespace A084073.P13223501568270466226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049522 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084073.P13223501568270466226

/-! ## A084073.P13438803230471017093

`record[A049522(n+1)-char[4]]`
-/

namespace A084073.P13438803230471017093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049522 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084073.P13438803230471017093

/-! ## A084073.P17830018759911306494

`record[A049522(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A084073.P17830018759911306494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049522 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084073.P17830018759911306494

/-!
# A084075: Length of list created by n substitutions k -> Range( -abs(k+1), abs(k-1), 2) starting with {1}.

The programs for A084075, there is no canonical definition to state claims against.
-/

/-! ## A084075.P6023029725291992460

`A084078(n+1)/2`
-/

namespace A084075.P6023029725291992460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084078 (n + 1) : ℚ) / 2

end

end A084075.P6023029725291992460

/-! ## A084075.P17987921543037826378

`A137842(n+2)/2`
-/

namespace A084075.P17987921543037826378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137842 (n + 2) : ℚ) / 2

end

end A084075.P17987921543037826378

/-! ## A084075.P10635689779557727086

`A071949(A101881(n+1))/2`
-/

namespace A084075.P10635689779557727086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071949 (A101881 (n + 1)).toNat : ℚ) / 2

end

end A084075.P10635689779557727086

/-! ## A084075.P7058295207125762929

`A121703(n+3)/4`
-/

namespace A084075.P7058295207125762929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121703 (n + 3) : ℚ) / 4

end

end A084075.P7058295207125762929

/-! ## A084075.P12366949232510678173

`Δ[∑[A084078(n)]/2]`
-/

namespace A084075.P12366949232510678173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084075.P12366949232510678173

/-! ## A084075.P5083487886585883245

`Δ[∑[A137842(log2(2*2^n))]/2]`
-/

namespace A084075.P5083487886585883245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137842 (SequenceMachineLib.roundAway (Real.logb 2 (2 * 2 ^ n : ℝ))).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084075.P5083487886585883245

/-!
# A084076: Length of list created by n substitutions k -> Range[-1-abs(k), abs(k)+1] starting with {1}.

The programs for A084076, the canonical program `A084076.P14134499529502510955` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084076 has offset 0).

The definition of A084076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084076.P4840756840522668812

`Δ[A062992(n)/2]`
-/

namespace A084076.P4840756840522668812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062992 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084076.P4840756840522668812

namespace A084076

/-- `Δ[A062992(n)/2]` -/
def P4840756840522668812.Spec : Prop :=
  ∀ n, P4840756840522668812.a n = (A084076 n : ℚ)

end A084076

/-! ## A084076.P5901180841933549753

`Δ[A064062(n+1)/2]`
-/

namespace A084076.P5901180841933549753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064062 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084076.P5901180841933549753

namespace A084076

/-- `Δ[A064062(n+1)/2]` -/
def P5901180841933549753.Spec : Prop :=
  ∀ n, P5901180841933549753.a n = (A084076 n : ℚ)

end A084076

/-! ## A084076.P18321811013533587633

`Δ[abs(A114191(n+1)/2)]`
-/

namespace A084076.P18321811013533587633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A114191 (n + 1) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084076.P18321811013533587633

namespace A084076

/-- `Δ[abs(A114191(n+1)/2)]` -/
def P18321811013533587633.Spec : Prop :=
  ∀ n, P18321811013533587633.a n = (A084076 n : ℚ)

end A084076

/-! ## A084076.P8810739467127716673

`A115193(A133263(n+2))`
-/

namespace A084076.P8810739467127716673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A133263 (n + 2)).toNat

end

end A084076.P8810739467127716673

namespace A084076

/-- `A115193(A133263(n+2))` -/
def P8810739467127716673.Spec : Prop :=
  ∀ n, P8810739467127716673.a n = A084076 n

end A084076

/-! ## A084076.P265337563620081506

`A115193(eq[2, A002262(n)])`
-/

namespace A084076.P265337563620081506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084076.P265337563620081506

namespace A084076

/-- `A115193(eq[2, A002262(n)])` -/
def P265337563620081506.Spec : Prop :=
  ∀ n, P265337563620081506.a n = A084076 n

end A084076

/-! ## A084076.P14134499529502510955

`Δ[A064306(n)+A000035(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084076

/-- `Δ[A064306(n)+A000035(n)]` -/
def P14134499529502510955.Spec : Prop :=
  ∀ n, P14134499529502510955.a n = A084076 n

theorem P14134499529502510955.correct : P14134499529502510955.Spec := by
  intro n
  simp only [A084076]

end A084076

/-! ## A084076.P14908063766335937185

`A115193(A167614(n+1)-1)`
-/

namespace A084076.P14908063766335937185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A167614 (n + 1) - 1).toNat

end

end A084076.P14908063766335937185

namespace A084076

/-- `A115193(A167614(n+1)-1)` -/
def P14908063766335937185.Spec : Prop :=
  ∀ n, P14908063766335937185.a n = A084076 n

end A084076

/-! ## A084076.P16513570850004880040

`A052701(n+2)-A062992(n)`
-/

namespace A084076.P16513570850004880040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 (n + 2) - A062992 n

end

end A084076.P16513570850004880040

namespace A084076

/-- `A052701(n+2)-A062992(n)` -/
def P16513570850004880040.Spec : Prop :=
  ∀ n, P16513570850004880040.a n = A084076 n

end A084076

/-! ## A084076.P17526997301365627403

`2*A003645(n)-A062992(n)`
-/

namespace A084076.P17526997301365627403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003645 n - A062992 n

end

end A084076.P17526997301365627403

namespace A084076

/-- `2*A003645(n)-A062992(n)` -/
def P17526997301365627403.Spec : Prop :=
  ∀ n, P17526997301365627403.a n = A084076 n

end A084076

/-! ## A084076.P10768427205957706950

`A052701(n+2)-A064062(n+1)`
-/

namespace A084076.P10768427205957706950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 (n + 2) - A064062 (n + 1)

end

end A084076.P10768427205957706950

namespace A084076

/-- `A052701(n+2)-A064062(n+1)` -/
def P10768427205957706950.Spec : Prop :=
  ∀ n, P10768427205957706950.a n = A084076 n

end A084076

/-! ## A084076.P2475613610914477780

`(A115137(n+1)+A064062(n+1))/2`
-/

namespace A084076.P2475613610914477780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115137 (n + 1) + A064062 (n + 1) : ℚ) / 2

end

end A084076.P2475613610914477780

namespace A084076

/-- `(A115137(n+1)+A064062(n+1))/2` -/
def P2475613610914477780.Spec : Prop :=
  ∀ n, P2475613610914477780.a n = (A084076 n : ℚ)

end A084076

/-! ## A084076.P5253733449754723353

`(A062992(n+1)-A064062(n+1))/2`
-/

namespace A084076.P5253733449754723353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062992 (n + 1) - A064062 (n + 1) : ℚ) / 2

end

end A084076.P5253733449754723353

namespace A084076

/-- `(A062992(n+1)-A064062(n+1))/2` -/
def P5253733449754723353.Spec : Prop :=
  ∀ n, P5253733449754723353.a n = (A084076 n : ℚ)

end A084076

/-! ## A084076.P10732652890566549875

`A062992(n+1)-A025225(n+2)/2`
-/

namespace A084076.P10732652890566549875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062992 (n + 1) : ℚ) - (A025225 (n + 2) : ℚ) / 2

end

end A084076.P10732652890566549875

namespace A084076

/-- `A062992(n+1)-A025225(n+2)/2` -/
def P10732652890566549875.Spec : Prop :=
  ∀ n, P10732652890566549875.a n = (A084076 n : ℚ)

end A084076

/-! ## A084076.P16394094436732191306

`A003645(n)+A003645(n)-A064062(n+1)`
-/

namespace A084076.P16394094436732191306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003645 n + (A003645 n - A064062 (n + 1))

end

end A084076.P16394094436732191306

namespace A084076

/-- `A003645(n)+A003645(n)-A064062(n+1)` -/
def P16394094436732191306.Spec : Prop :=
  ∀ n, P16394094436732191306.a n = A084076 n

end A084076

/-!
# A084077: Length of list created by n substitutions k -> Range(-abs(k+1), abs(k-1)) starting with {1}.

The programs for A084077, the canonical program `A084077.P15331156053743558899` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084077 has offset 0).

The definition of A084077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084077.P6884078444189253768

`Δ[A052709(n+2)/2]`
-/

namespace A084077.P6884078444189253768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052709 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084077.P6884078444189253768

namespace A084077

/-- `Δ[A052709(n+2)/2]` -/
def P6884078444189253768.Spec : Prop :=
  ∀ n, P6884078444189253768.a n = (A084077 n : ℚ)

end A084077

/-! ## A084077.P15331156053743558899

`Δ[A071356(n)]-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A084077

/-- `Δ[A071356(n)]-a(n-1)` -/
def P15331156053743558899.Spec : Prop :=
  ∀ n, P15331156053743558899.a n = A084077 n

theorem P15331156053743558899.correct : P15331156053743558899.Spec := by
  intro n
  simp only [A084077]

end A084077

/-! ## A084077.P17339591266461605791

`A071356(n+1)-A052709(n+2)`
-/

namespace A084077.P17339591266461605791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071356 (n + 1) - A052709 (n + 2)

end

end A084077.P17339591266461605791

namespace A084077

/-- `A071356(n+1)-A052709(n+2)` -/
def P17339591266461605791.Spec : Prop :=
  ∀ n, P17339591266461605791.a n = A084077 n

end A084077

/-! ## A084077.P15616974542289571262

`A052709(n+3)%A071356(n+1)`
-/

namespace A084077.P15616974542289571262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052709 (n + 3)) (A071356 (n + 1))

end

end A084077.P15616974542289571262

namespace A084077

/-- `A052709(n+3)%A071356(n+1)` -/
def P15616974542289571262.Spec : Prop :=
  ∀ n, P15616974542289571262.a n = A084077 n

end A084077

/-! ## A084077.P1225764432853390148

`(A052709(n+3)-A052709(n+2))/2`
-/

namespace A084077.P1225764432853390148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052709 (n + 3) - A052709 (n + 2) : ℚ) / 2

end

end A084077.P1225764432853390148

namespace A084077

/-- `(A052709(n+3)-A052709(n+2))/2` -/
def P1225764432853390148.Spec : Prop :=
  ∀ n, P1225764432853390148.a n = (A084077 n : ℚ)

end A084077

/-! ## A084077.P6279862008686665632

`A071356(n+1)-A108073(A000217(n+1))`
-/

namespace A084077.P6279862008686665632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071356 (n + 1) - A108073 (A000217 (n + 1)).toNat

end

end A084077.P6279862008686665632

namespace A084077

/-- `A071356(n+1)-A108073(A000217(n+1))` -/
def P6279862008686665632.Spec : Prop :=
  ∀ n, P6279862008686665632.a n = A084077 n

end A084077

/-! ## A084077.P14468960980390673988

`record[A110681(n+1)-A108916(n+1)]`
-/

namespace A084077.P14468960980390673988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110681 (n + 1) - A108916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084077.P14468960980390673988

namespace A084077

/-- `record[A110681(n+1)-A108916(n+1)]` -/
def P14468960980390673988.Spec : Prop :=
  ∀ n, P14468960980390673988.a n = A084077 n

end A084077

/-!
# A084078: Length of list created by n substitutions k -> Range[-abs(k+1), abs(k-1), 2] starting with {0}.

The programs for A084078, there is no canonical definition to state claims against.
-/

/-! ## A084078.P5884244318204917023

`record[A071949(n)]`
-/

namespace A084078.P5884244318204917023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084078.P5884244318204917023

/-! ## A084078.P5005512453573216186

`A137842(n+1)`
-/

namespace A084078.P5005512453573216186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137842 (n + 1)

end

end A084078.P5005512453573216186

/-! ## A084078.P15181092051060613537

`A071949(A101881(n))`
-/

namespace A084078.P15181092051060613537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 (A101881 n).toNat

end

end A084078.P15181092051060613537

/-! ## A084078.P9693849275996902150

`record[A110682(A061579(n))]`
-/

namespace A084078.P9693849275996902150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084078.P9693849275996902150

/-! ## A084078.P2935963947947496485

`A121703(n+2)/2`
-/

namespace A084078.P2935963947947496485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121703 (n + 2) : ℚ) / 2

end

end A084078.P2935963947947496485

/-! ## A084078.P6847046246452514775

`∪[A032349(n+1), A027307(n)]`
-/

namespace A084078.P6847046246452514775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084078.P6847046246452514775

/-! ## A084078.P11121403135596100825

`∪[A032349(n+1), record[A110682(n)]]`
-/

namespace A084078.P11121403135596100825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032349 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084078.P11121403135596100825

/-! ## A084078.P6183344909832625403

`∪[record[A257532(n+1)], A027307(n)]`
-/

namespace A084078.P6183344909832625403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A084078.P6183344909832625403

/-!
# A084079: Sum of absolute values of lists created by n substitutions k -> Range(-abs(k+1),abs(k-1),2) starting with {1}.

The programs for A084079, there is no canonical definition to state claims against.
-/

/-! ## A084079.P16042370430023227417

`∑[A167268(A002966(n+1))-1]`
-/

namespace A084079.P16042370430023227417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167268 (A002966 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084079.P16042370430023227417

/-! ## A084079.P9029946231130012712

`A334195(A324739(3*(n+1)))+A275585(n)`
-/

namespace A084079.P9029946231130012712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (A324739 (3 * (n + 1))).toNat + A275585 n

end

end A084079.P9029946231130012712

/-!
# A084080: Length of lists created by n substitutions k -> range(k+1,1,-3) starting with {1}, counting down from k+1 to 1 step -3.

The programs for A084080, there is no canonical definition to state claims against.
-/

/-! ## A084080.P2334319150782256929

`A124753(n+1)`
-/

namespace A084080.P2334319150782256929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (n + 1)

end

end A084080.P2334319150782256929

/-! ## A084080.P8545067026314871766

`abs(Δ[-∑[A124753(n)]])`
-/

namespace A084080.P8545067026314871766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084080.P8545067026314871766

/-! ## A084080.P15138550588235311649

`or(char[1], A124753(comp[2*n]-n))`
-/

namespace A084080.P15138550588235311649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A124753 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n))

end

end A084080.P15138550588235311649

/-! ## A084080.P4474930480452104356

`A124752(A000217(n+4)+3)`
-/

namespace A084080.P4474930480452104356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124752 (A000217 (n + 4) + 3).toNat

end

end A084080.P4474930480452104356

/-! ## A084080.P8540382292739929078

`A007318(∑[n])*A124753(comp[2*n]-n)`
-/

namespace A084080.P8540382292739929078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A124753 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

end

end A084080.P8540382292739929078

/-!
# A084081: Sum of lists created by n substitutions k -> Range[k+1,0,-2] starting with {0}, counting down from k+1 to 0 step -2.

The programs for A084081, there is no canonical definition to state claims against.
-/

/-! ## A084081.P5269583383344108144

`A093951(n+1)-A047749(n+1)`
-/

namespace A084081.P5269583383344108144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093951 (n + 1) - A047749 (n + 1)

end

end A084081.P5269583383344108144

/-! ## A084081.P9269600911185405011

`A047750(n+1)-A116637(n+1)`
-/

namespace A084081.P9269600911185405011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047750 (n + 1) - A116637 (n + 1)

end

end A084081.P9269600911185405011

/-! ## A084081.P6345751115283843252

`A093951(n+1)-abs(A134565(n+1))`
-/

namespace A084081.P6345751115283843252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093951 (n + 1) - |A134565 (n + 1)|

end

end A084081.P6345751115283843252

/-! ## A084081.P4642096917658220385

`A047750(n+1)-2*A047749(n+1)`
-/

namespace A084081.P4642096917658220385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047750 (n + 1) - 2 * A047749 (n + 1)

end

end A084081.P4642096917658220385

/-! ## A084081.P356548035132995085

`A093951(n+1)+A093951(n+1)-A047750(n+1)`
-/

namespace A084081.P356548035132995085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093951 (n + 1) + (A093951 (n + 1) - A047750 (n + 1))

end

end A084081.P356548035132995085

/-! ## A084081.P3858991445841499593

`A093951(n+1)-A099576(n)/(n+1)`
-/

namespace A084081.P3858991445841499593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093951 (n + 1) : ℚ) - (A099576 n : ℚ) / (n + 1 : ℚ)

end

end A084081.P3858991445841499593

/-!
# A084082: Length of lists created by n substitutions k -> range(-floor(abs(k)/2), abs(k)+1) starting with {0}.

The programs for A084082, there is no canonical definition to state claims against.
-/

/-! ## A084082.P13945071822015724139

`A296020(A272123(n))`
-/

namespace A084082.P13945071822015724139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296020 (A272123 n).toNat

end

end A084082.P13945071822015724139

/-! ## A084082.P9740413213579469805

`A209081(A375086(n+1))`
-/

namespace A084082.P9740413213579469805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A375086 (n + 1)).toNat

end

end A084082.P9740413213579469805

/-! ## A084082.P10517052513627463897

`A248183(A150120(n)+2)`
-/

namespace A084082.P10517052513627463897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A150120 n + 2).toNat

end

end A084082.P10517052513627463897

/-!
# A084083: Length of lists created by n substitutions k -> range(k+1, -abs(k), -2) starting with {1}.

The programs for A084083, there is no canonical definition to state claims against.
-/

/-! ## A084083.P17080047908967451262

`Δ[A093951(n+1)]`
-/

namespace A084083.P17080047908967451262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084083.P17080047908967451262

/-! ## A084083.P17976440812049591101

`Δ[record[A093951(A038568(n))]]`
-/

namespace A084083.P17976440812049591101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093951 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084083.P17976440812049591101

/-! ## A084083.P9925250792223246110

`record[Δ[A093951(A080513(n))]]`
-/

namespace A084083.P9925250792223246110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093951 (A080513 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084083.P9925250792223246110

/-! ## A084083.P7761386067315768916

`Δ[record[A093951(A102885(n))]]`
-/

namespace A084083.P7761386067315768916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093951 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084083.P7761386067315768916

/-! ## A084083.P8015196357829000232

`Δ[record[A093951(A106466(n))]]`
-/

namespace A084083.P8015196357829000232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093951 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084083.P8015196357829000232

/-!
# A084084: Length of lists created by n substitutions k -> Range[0,1+Mod[k+1,3]] starting with {0}.

The programs for A084084, the canonical program `A084084.P11655744217698943536` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084084 has offset 0).

The definition of A084084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084084.P11655744217698943536

`A000931(4*n+6)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084084

/-- `A000931(4*n+6)` -/
def P11655744217698943536.Spec : Prop :=
  ∀ n, P11655744217698943536.a n = A084084 n

theorem P11655744217698943536.correct : P11655744217698943536.Spec := by
  intro n
  simp only [A084084]

end A084084

/-! ## A084084.P8212100914890516934

`A005314(Δ[n²])`
-/

namespace A084084.P8212100914890516934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A084084.P8212100914890516934

namespace A084084

/-- `A005314(Δ[n²])` -/
def P8212100914890516934.Spec : Prop :=
  ∀ n, P8212100914890516934.a n = A084084 n

end A084084

/-! ## A084084.P17255147479650131175

`record[∑[A078065(n)]]`
-/

namespace A084084.P17255147479650131175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078065 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084084.P17255147479650131175

namespace A084084

/-- `record[∑[A078065(n)]]` -/
def P17255147479650131175.Spec : Prop :=
  ∀ n, P17255147479650131175.a n = A084084 n

end A084084

/-! ## A084084.P18024937695946699252

`∑[A049853(2*n)]`
-/

namespace A084084.P18024937695946699252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084084.P18024937695946699252

namespace A084084

/-- `∑[A049853(2*n)]` -/
def P18024937695946699252.Spec : Prop :=
  ∀ n, P18024937695946699252.a n = A084084 n

end A084084

/-! ## A084084.P15709778713689207326

`record[A000931(lcm(2, n))]`
-/

namespace A084084.P15709778713689207326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (Nat.lcm 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084084.P15709778713689207326

namespace A084084

/-- `record[A000931(lcm(2, n))]` -/
def P15709778713689207326.Spec : Prop :=
  ∀ n, P15709778713689207326.a n = A084084 n

end A084084

/-! ## A084084.P2939183683475859935

`record[A005314(xor(1, n))]`
-/

namespace A084084.P2939183683475859935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084084.P2939183683475859935

namespace A084084

/-- `record[A005314(xor(1, n))]` -/
def P2939183683475859935.Spec : Prop :=
  ∀ n, P2939183683475859935.a n = A084084 n

end A084084

/-! ## A084084.P15414609465102917512

`Δ[A347493(Δ[n²])]`
-/

namespace A084084.P15414609465102917512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084084.P15414609465102917512

namespace A084084

/-- `Δ[A347493(Δ[n²])]` -/
def P15414609465102917512.Spec : Prop :=
  ∀ n, P15414609465102917512.a n = A084084 n

end A084084

/-! ## A084084.P2226895078981282323

`A078027(4*(n+2))`
-/

namespace A084084.P2226895078981282323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (4 * (n + 2))

end

end A084084.P2226895078981282323

namespace A084084

/-- `A078027(4*(n+2))` -/
def P2226895078981282323.Spec : Prop :=
  ∀ n, P2226895078981282323.a n = A084084 n

end A084084

/-! ## A084084.P8077764379430990547

`A124745(4*(n+2))`
-/

namespace A084084.P8077764379430990547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (4 * (n + 2))

end

end A084084.P8077764379430990547

namespace A084084

/-- `A124745(4*(n+2))` -/
def P8077764379430990547.Spec : Prop :=
  ∀ n, P8077764379430990547.a n = A084084 n

end A084084

/-! ## A084084.P9378565584431114457

`A134816(4*n+2)`
-/

namespace A084084.P9378565584431114457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (4 * n + 2)

end

end A084084.P9378565584431114457

namespace A084084

/-- `A134816(4*n+2)` -/
def P9378565584431114457.Spec : Prop :=
  ∀ n, P9378565584431114457.a n = A084084 n

end A084084

/-! ## A084084.P10437433067941933879

`A182097(4*n+3)`
-/

namespace A084084.P10437433067941933879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (4 * n + 3)

end

end A084084.P10437433067941933879

namespace A084084

/-- `A182097(4*n+3)` -/
def P10437433067941933879.Spec : Prop :=
  ∀ n, P10437433067941933879.a n = A084084 n

end A084084

/-! ## A084084.P8412263189780165332

`A289692(Δ[n²])+1`
-/

namespace A084084.P8412263189780165332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289692 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A084084.P8412263189780165332

namespace A084084

/-- `A289692(Δ[n²])+1` -/
def P8412263189780165332.Spec : Prop :=
  ∀ n, P8412263189780165332.a n = A084084 n

end A084084

/-! ## A084084.P1987741596329367123

`record[A000931(xor(3, n)+3)]`
-/

namespace A084084.P1987741596329367123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (Nat.xor 3 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084084.P1987741596329367123

namespace A084084

/-- `record[A000931(xor(3, n)+3)]` -/
def P1987741596329367123.Spec : Prop :=
  ∀ n, P1987741596329367123.a n = A084084 n

end A084084

/-! ## A084084.P14139113630084502035

`record[A005314(n^(n%2))]`
-/

namespace A084084.P14139113630084502035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084084.P14139113630084502035

namespace A084084

/-- `record[A005314(n^(n%2))]` -/
def P14139113630084502035.Spec : Prop :=
  ∀ n, P14139113630084502035.a n = A084084 n

end A084084

/-! ## A084084.P2561634343089383764

`A232582(2*(n+1))/2`
-/

namespace A084084.P2561634343089383764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232582 (2 * (n + 1)) : ℚ) / 2

end

end A084084.P2561634343089383764

namespace A084084

/-- `A232582(2*(n+1))/2` -/
def P2561634343089383764.Spec : Prop :=
  ∀ n, P2561634343089383764.a n = (A084084 n : ℚ)

end A084084

/-! ## A084084.P14646848521563077371

`A133034(Δ[2*(n+2)²])`
-/

namespace A084084.P14646848521563077371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A084084.P14646848521563077371

namespace A084084

/-- `A133034(Δ[2*(n+2)²])` -/
def P14646848521563077371.Spec : Prop :=
  ∀ n, P14646848521563077371.a n = A084084 n

end A084084

/-! ## A084084.P6164892651925247891

`record[A000931(2*n*and(1, n))]`
-/

namespace A084084.P6164892651925247891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084084.P6164892651925247891

namespace A084084

/-- `record[A000931(2*n*and(1, n))]` -/
def P6164892651925247891.Spec : Prop :=
  ∀ n, P6164892651925247891.a n = A084084 n

end A084084

/-! ## A084084.P2932121267859055764

`A099098(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A084084.P2932121267859055764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099098 (n + 1) - a (n - 1)

end

end A084084.P2932121267859055764

namespace A084084

/-- `A099098(n+1)-a(n-1)` -/
def P2932121267859055764.Spec : Prop :=
  ∀ n, P2932121267859055764.a n = A084084 n

end A084084

/-! ## A084084.P4753360190076577223

`A164001(4*n)-a(n-1)` with `a(0)=1`
-/

namespace A084084.P4753360190076577223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164001 (4 * n) - a (n - 1)

end

end A084084.P4753360190076577223

namespace A084084

/-- `A164001(4*n)-a(n-1)` -/
def P4753360190076577223.Spec : Prop :=
  ∀ n, P4753360190076577223.a n = A084084 n

end A084084

/-!
# A084085: Length of lists created by n substitutions k -> Range[0,Mod[k+1,4]] starting with {0}.

The programs for A084085, there is no canonical definition to state claims against.
-/

/-! ## A084085.P3045769549121920502

`∑[A333309(A285447(n))]`
-/

namespace A084085.P3045769549121920502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333309 (A285447 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084085.P3045769549121920502

/-! ## A084085.P12415519084696041324

`A054404(A002906(n))+1`
-/

namespace A084085.P12415519084696041324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A002906 n).toNat + 1

end

end A084085.P12415519084696041324

/-!
# A084086: a(n) = Fibonacci(2*n+1) + 2*Fibonacci(2*n-1) - 2^n - [n = 0], where [b] is the Iverson bracket of b.

The programs for A084086, the canonical program `A084086.P10038631514795972338` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084086 has offset 0).

The definition of A084086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084086.P10038631514795972338

`5*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084086

/-- `5*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P10038631514795972338.Spec : Prop :=
  ∀ n, P10038631514795972338.a n = A084086 n

theorem P10038631514795972338.correct : P10038631514795972338.Spec := by
  intro n
  simp only [A084086]

end A084086

/-! ## A084086.P803526752657557328

`A295856(A004273(n))+2^n`
-/

namespace A084086.P803526752657557328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295856 (A004273 n).toNat + (2 ^ n : ℤ)

end

end A084086.P803526752657557328

namespace A084086

/-- `A295856(A004273(n))+2^n` -/
def P803526752657557328.Spec : Prop :=
  ∀ n, P803526752657557328.a n = A084086 n

end A084086

/-! ## A084086.P4589908211789996057

`A104449(2*n)-Δ[A083318(n)]`
-/

namespace A084086.P4589908211789996057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (2 * n) - (f1 (n + 1) - f1 n)

end

end A084086.P4589908211789996057

namespace A084086

/-- `A104449(2*n)-Δ[A083318(n)]` -/
def P4589908211789996057.Spec : Prop :=
  ∀ n, P4589908211789996057.a n = A084086 n

end A084086

/-! ## A084086.P10250978908660796423

`A295723(A004273(n))+A001519(n)`
-/

namespace A084086.P10250978908660796423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 (A004273 n).toNat + A001519 n

end

end A084086.P10250978908660796423

namespace A084086

/-- `A295723(A004273(n))+A001519(n)` -/
def P10250978908660796423.Spec : Prop :=
  ∀ n, P10250978908660796423.a n = A084086 n

end A084086

/-! ## A084086.P18263742831752778368

`A000285(A004273(n))-A155559(n)`
-/

namespace A084086.P18263742831752778368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (A004273 n).toNat - A155559 n

end

end A084086.P18263742831752778368

namespace A084086

/-- `A000285(A004273(n))-A155559(n)` -/
def P18263742831752778368.Spec : Prop :=
  ∀ n, P18263742831752778368.a n = A084086 n

end A084086

/-! ## A084086.P12213042991050139189

`A295717(A004273(n))-A131577(n)`
-/

namespace A084086.P12213042991050139189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295717 (A004273 n).toNat - A131577 n

end

end A084086.P12213042991050139189

namespace A084086

/-- `A295717(A004273(n))-A131577(n)` -/
def P12213042991050139189.Spec : Prop :=
  ∀ n, P12213042991050139189.a n = A084086 n

end A084086

/-! ## A084086.P2733150725662335602

`A000285(A004273(n))-record[A138219(n)]`
-/

namespace A084086.P2733150725662335602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (A004273 n).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084086.P2733150725662335602

namespace A084086

/-- `A000285(A004273(n))-record[A138219(n)]` -/
def P2733150725662335602.Spec : Prop :=
  ∀ n, P2733150725662335602.a n = A084086 n

end A084086

/-!
# A084087: Numbers k not divisible by 3 such that the exponent of the highest power of 2 dividing k is even.

The programs for A084087, the canonical program `A084087.P14271585874331749264` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084087 has offset 1).

The definition of A084087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084087.P2411817532950498167

`record[(n+1)/3^val(n+1, 3)*xor(n, n+1)%3]`
-/

namespace A084087.P2411817532950498167
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) * ((Nat.xor n (n + 1) % 3 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084087.P2411817532950498167

namespace A084087

/-- `record[(n+1)/3^val(n+1, 3)*xor(n, n+1)%3]` -/
def P2411817532950498167.Spec : Prop :=
  ∀ n, P2411817532950498167.a n = (A084087 (n + 1) : ℚ)

end A084087

/-! ## A084087.P17471509443958317603

`record[(n+1)/3^val(n+1, 3)*(-1)^val(n+1, 2)]`
-/

namespace A084087.P17471509443958317603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) * ((-1) ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084087.P17471509443958317603

namespace A084087

/-- `record[(n+1)/3^val(n+1, 3)*(-1)^val(n+1, 2)]` -/
def P17471509443958317603.Spec : Prop :=
  ∀ n, P17471509443958317603.a n = (A084087 (n + 1) : ℚ)

end A084087

/-! ## A084087.P10022574328288140520

`record[((n+1)/3^val(n+1, 3))^(-1)^val(n+1, 2)]`
-/

namespace A084087.P10022574328288140520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)) ^ ((-1) ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084087.P10022574328288140520

namespace A084087

/-- `record[((n+1)/3^val(n+1, 3))^(-1)^val(n+1, 2)]` -/
def P10022574328288140520.Spec : Prop :=
  ∀ n, P10022574328288140520.a n = (A084087 (n + 1) : ℚ)

end A084087

/-! ## A084087.P14271585874331749264

`eq[1, A084091(n)²]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A084087

/-- `eq[1, A084091(n)²]` -/
def P14271585874331749264.Spec : Prop :=
  ∀ n, (P14271585874331749264.a n : ℤ) = A084087 (n + 1)

theorem P14271585874331749264.correct : P14271585874331749264.Spec := by
  intro n
  simp only [A084087, Nat.add_sub_cancel]

end A084087

/-! ## A084087.P9296722890921339921

`record[(n+1)/3^val(n+1, 3)*A035263(n+1)]`
-/

namespace A084087.P9296722890921339921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) * (A035263 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084087.P9296722890921339921

namespace A084087

/-- `record[(n+1)/3^val(n+1, 3)*A035263(n+1)]` -/
def P9296722890921339921.Spec : Prop :=
  ∀ n, P9296722890921339921.a n = (A084087 (n + 1) : ℚ)

end A084087

/-! ## A084087.P4614472393642365186

`∪[A084088(n+1), A084089(n+1)]`
-/

namespace A084087.P4614472393642365186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084087.P4614472393642365186

namespace A084087

/-- `∪[A084088(n+1), A084089(n+1)]` -/
def P4614472393642365186.Spec : Prop :=
  ∀ n, (P4614472393642365186.a n : ℤ) = A084087 (n + 1)

end A084087

/-! ## A084087.P18137746698303718730

`filter[A339690(n+1), A187074(#)]`
-/

namespace A084087.P18137746698303718730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A084087.P18137746698303718730

namespace A084087

/-- `filter[A339690(n+1), A187074(#)]` -/
def P18137746698303718730.Spec : Prop :=
  ∀ n, P18137746698303718730.a n = A084087 (n + 1)

end A084087

/-! ## A084087.P3489105404782602534

`filter[A339690(n+1), A373155(#)]`
-/

namespace A084087.P3489105404782602534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084087.P3489105404782602534

namespace A084087

/-- `filter[A339690(n+1), A373155(#)]` -/
def P3489105404782602534.Spec : Prop :=
  ∀ n, P3489105404782602534.a n = A084087 (n + 1)

end A084087

/-! ## A084087.P2553648745088654525

`filter[A359380(n+1), A035263(#)]`
-/

namespace A084087.P2553648745088654525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A084087.P2553648745088654525

namespace A084087

/-- `filter[A359380(n+1), A035263(#)]` -/
def P2553648745088654525.Spec : Prop :=
  ∀ n, P2553648745088654525.a n = A084087 (n + 1)

end A084087

/-! ## A084087.P11492368371824299299

`filter[A359380(n+1), A372574(#)]`
-/

namespace A084087.P11492368371824299299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A084087.P11492368371824299299

namespace A084087

/-- `filter[A359380(n+1), A372574(#)]` -/
def P11492368371824299299.Spec : Prop :=
  ∀ n, P11492368371824299299.a n = A084087 (n + 1)

end A084087

/-! ## A084087.P213731470923262828

`filter[A359380(n+1), A373136(#)]`
-/

namespace A084087.P213731470923262828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A084087.P213731470923262828

namespace A084087

/-- `filter[A359380(n+1), A373136(#)]` -/
def P213731470923262828.Spec : Prop :=
  ∀ n, P213731470923262828.a n = A084087 (n + 1)

end A084087

/-! ## A084087.P100397954500976871

`filter[A359380(n+1), A373155(#)]`
-/

namespace A084087.P100397954500976871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084087.P100397954500976871

namespace A084087

/-- `filter[A359380(n+1), A373155(#)]` -/
def P100397954500976871.Spec : Prop :=
  ∀ n, P100397954500976871.a n = A084087 (n + 1)

end A084087

/-! ## A084087.P302154187728722802

`eq[A010155(n), A254378(n+1)]`
-/

namespace A084087.P302154187728722802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084087.P302154187728722802

namespace A084087

/-- `eq[A010155(n), A254378(n+1)]` -/
def P302154187728722802.Spec : Prop :=
  ∀ n, (P302154187728722802.a n : ℤ) = A084087 (n + 1)

end A084087

/-! ## A084087.P12248306224077038508

`eq[A010155(n), A254655(n+1)]`
-/

namespace A084087.P12248306224077038508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084087.P12248306224077038508

namespace A084087

/-- `eq[A010155(n), A254655(n+1)]` -/
def P12248306224077038508.Spec : Prop :=
  ∀ n, (P12248306224077038508.a n : ℤ) = A084087 (n + 1)

end A084087

/-! ## A084087.P16450320394498817881

`∩[A339690(n+1), A359380(n+1)]`
-/

namespace A084087.P16450320394498817881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084087.P16450320394498817881

namespace A084087

/-- `∩[A339690(n+1), A359380(n+1)]` -/
def P16450320394498817881.Spec : Prop :=
  ∀ n, (P16450320394498817881.a n : ℤ) = A084087 (n + 1)

end A084087

/-! ## A084087.P29172963641370484

`filter[A036668(n+1), A187074(#)]`
-/

namespace A084087.P29172963641370484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A084087.P29172963641370484

namespace A084087

/-- `filter[A036668(n+1), A187074(#)]` -/
def P29172963641370484.Spec : Prop :=
  ∀ n, P29172963641370484.a n = A084087 (n + 1)

end A084087

/-! ## A084087.P2231786210923663484

`filter[A036668(n+1), A373155(#)]`
-/

namespace A084087.P2231786210923663484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084087.P2231786210923663484

namespace A084087

/-- `filter[A036668(n+1), A373155(#)]` -/
def P2231786210923663484.Spec : Prop :=
  ∀ n, P2231786210923663484.a n = A084087 (n + 1)

end A084087

/-! ## A084087.P10151978537471907410

`filter[A191276(n+2), A373155(#)]`
-/

namespace A084087.P10151978537471907410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084087.P10151978537471907410

namespace A084087

/-- `filter[A191276(n+2), A373155(#)]` -/
def P10151978537471907410.Spec : Prop :=
  ∀ n, P10151978537471907410.a n = A084087 (n + 1)

end A084087

/-! ## A084087.P4215157395147402110

`∩[A036668(n+1), A359380(n+1)]`
-/

namespace A084087.P4215157395147402110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084087.P4215157395147402110

namespace A084087

/-- `∩[A036668(n+1), A359380(n+1)]` -/
def P4215157395147402110.Spec : Prop :=
  ∀ n, (P4215157395147402110.a n : ℤ) = A084087 (n + 1)

end A084087

/-! ## A084087.P6375687742047578425

`eq[1, A290099(n+1)%2]+1`
-/

namespace A084087.P6375687742047578425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290099 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084087.P6375687742047578425

namespace A084087

/-- `eq[1, A290099(n+1)%2]+1` -/
def P6375687742047578425.Spec : Prop :=
  ∀ n, (P6375687742047578425.a n : ℤ) = A084087 (n + 1)

end A084087

/-!
# A084088: Numbers k such that k == 2 (mod 3) and the exponent of the highest power of 2 dividing k is even.

The programs for A084088, the canonical program `A084088.P9034609164511326196` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084088 has offset 1).

The definition of A084088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084088.P17952374235325418859

`eq[1, A084091(n)+2]`
-/

namespace A084088.P17952374235325418859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084088.P17952374235325418859

namespace A084088

/-- `eq[1, A084091(n)+2]` -/
def P17952374235325418859.Spec : Prop :=
  ∀ n, (P17952374235325418859.a n : ℤ) = A084088 (n + 1)

end A084088

/-! ## A084088.P9034609164511326196

`eq[(n+1)%3+1, A000035(A123726(n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084088

/-- `eq[(n+1)%3+1, A000035(A123726(n))]` -/
def P9034609164511326196.Spec : Prop :=
  ∀ n, (P9034609164511326196.a n : ℤ) = A084088 (n + 1)

theorem P9034609164511326196.correct : P9034609164511326196.Spec := by
  intro n
  simp only [A084088, Nat.add_sub_cancel]

end A084088

/-! ## A084088.P14282668931702499405

`filter[A352273(n+1), A187074(#)]`
-/

namespace A084088.P14282668931702499405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A084088.P14282668931702499405

namespace A084088

/-- `filter[A352273(n+1), A187074(#)]` -/
def P14282668931702499405.Spec : Prop :=
  ∀ n, P14282668931702499405.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P2059136603453965615

`filter[A352273(n+1), A373155(#)]`
-/

namespace A084088.P2059136603453965615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084088.P2059136603453965615

namespace A084088

/-- `filter[A352273(n+1), A373155(#)]` -/
def P2059136603453965615.Spec : Prop :=
  ∀ n, P2059136603453965615.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P15365701507646344400

`filter[A016789(n), A035263(#)]`
-/

namespace A084088.P15365701507646344400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A084088.P15365701507646344400

namespace A084088

/-- `filter[A016789(n), A035263(#)]` -/
def P15365701507646344400.Spec : Prop :=
  ∀ n, P15365701507646344400.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P2954281781568224850

`filter[A016789(n), A372574(#)]`
-/

namespace A084088.P2954281781568224850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A084088.P2954281781568224850

namespace A084088

/-- `filter[A016789(n), A372574(#)]` -/
def P2954281781568224850.Spec : Prop :=
  ∀ n, P2954281781568224850.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P10766203958423675711

`filter[A016789(n), A373136(#)]`
-/

namespace A084088.P10766203958423675711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A084088.P10766203958423675711

namespace A084088

/-- `filter[A016789(n), A373136(#)]` -/
def P10766203958423675711.Spec : Prop :=
  ∀ n, P10766203958423675711.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P6923584151814763147

`filter[A016789(n), A373155(#)]`
-/

namespace A084088.P6923584151814763147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084088.P6923584151814763147

namespace A084088

/-- `filter[A016789(n), A373155(#)]` -/
def P6923584151814763147.Spec : Prop :=
  ∀ n, P6923584151814763147.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P10887171959520029993

`filter[A180486(n+1), A035263(#)]`
-/

namespace A084088.P10887171959520029993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A084088.P10887171959520029993

namespace A084088

/-- `filter[A180486(n+1), A035263(#)]` -/
def P10887171959520029993.Spec : Prop :=
  ∀ n, P10887171959520029993.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P291788018695321885

`filter[A180486(n+1), A372574(#)]`
-/

namespace A084088.P291788018695321885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A084088.P291788018695321885

namespace A084088

/-- `filter[A180486(n+1), A372574(#)]` -/
def P291788018695321885.Spec : Prop :=
  ∀ n, P291788018695321885.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P2998055141888954767

`filter[A180486(n+1), A373136(#)]`
-/

namespace A084088.P2998055141888954767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A084088.P2998055141888954767

namespace A084088

/-- `filter[A180486(n+1), A373136(#)]` -/
def P2998055141888954767.Spec : Prop :=
  ∀ n, P2998055141888954767.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P14246525210555673412

`filter[A180486(n+1), A373155(#)]`
-/

namespace A084088.P14246525210555673412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084088.P14246525210555673412

namespace A084088

/-- `filter[A180486(n+1), A373155(#)]` -/
def P14246525210555673412.Spec : Prop :=
  ∀ n, P14246525210555673412.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P10411691811131270551

`∩[A352273(n+1), A016789(n)]`
-/

namespace A084088.P10411691811131270551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084088.P10411691811131270551

namespace A084088

/-- `∩[A352273(n+1), A016789(n)]` -/
def P10411691811131270551.Spec : Prop :=
  ∀ n, (P10411691811131270551.a n : ℤ) = A084088 (n + 1)

end A084088

/-! ## A084088.P13955547480546712084

`filter[A055048(n+1), A373155(#)]`
-/

namespace A084088.P13955547480546712084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084088.P13955547480546712084

namespace A084088

/-- `filter[A055048(n+1), A373155(#)]` -/
def P13955547480546712084.Spec : Prop :=
  ∀ n, P13955547480546712084.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P7860940464449790490

`filter[A277574(n+1), A373155(#)]`
-/

namespace A084088.P7860940464449790490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084088.P7860940464449790490

namespace A084088

/-- `filter[A277574(n+1), A373155(#)]` -/
def P7860940464449790490.Spec : Prop :=
  ∀ n, P7860940464449790490.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P3701095980314915818

`filter[A174438(n+2), A373155(#)]`
-/

namespace A084088.P3701095980314915818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084088.P3701095980314915818

namespace A084088

/-- `filter[A174438(n+2), A373155(#)]` -/
def P3701095980314915818.Spec : Prop :=
  ∀ n, P3701095980314915818.a n = A084088 (n + 1)

end A084088

/-! ## A084088.P3026197984746073939

`∩[A084087(n+1), A016789(n)]`
-/

namespace A084088.P3026197984746073939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084088.P3026197984746073939

namespace A084088

/-- `∩[A084087(n+1), A016789(n)]` -/
def P3026197984746073939.Spec : Prop :=
  ∀ n, (P3026197984746073939.a n : ℤ) = A084088 (n + 1)

end A084088

/-! ## A084088.P18067755714461586711

`∩[A084087(n+1), A016777(n)+1]`
-/

namespace A084088.P18067755714461586711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084088.P18067755714461586711

namespace A084088

/-- `∩[A084087(n+1), A016777(n)+1]` -/
def P18067755714461586711.Spec : Prop :=
  ∀ n, (P18067755714461586711.a n : ℤ) = A084088 (n + 1)

end A084088

/-! ## A084088.P12523565452199455106

`∩[A055048(n+1), A084087(n+1)]`
-/

namespace A084088.P12523565452199455106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084088.P12523565452199455106

namespace A084088

/-- `∩[A055048(n+1), A084087(n+1)]` -/
def P12523565452199455106.Spec : Prop :=
  ∀ n, (P12523565452199455106.a n : ℤ) = A084088 (n + 1)

end A084088

/-! ## A084088.P7601927922773629631

`∩[A084087(n+1), A174438(n+1)]`
-/

namespace A084088.P7601927922773629631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084088.P7601927922773629631

namespace A084088

/-- `∩[A084087(n+1), A174438(n+1)]` -/
def P7601927922773629631.Spec : Prop :=
  ∀ n, (P7601927922773629631.a n : ℤ) = A084088 (n + 1)

end A084088

/-!
# A084089: Numbers k such that k == 1 (mod 3) and the exponent of the highest power of 2 dividing k is even.

The programs for A084089, the canonical program `A084089.P5876549493066983916` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084089 has offset 1).

The definition of A084089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084089.P5876549493066983916

`eq[1, A084091(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A084089

/-- `eq[1, A084091(n)]` -/
def P5876549493066983916.Spec : Prop :=
  ∀ n, (P5876549493066983916.a n : ℤ) = A084089 (n + 1)

theorem P5876549493066983916.correct : P5876549493066983916.Spec := by
  intro n
  simp only [A084089, Nat.add_sub_cancel]

end A084089

/-! ## A084089.P14138146552680471905

`record[A302792(3*n+2)]`
-/

namespace A084089.P14138146552680471905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084089.P14138146552680471905

namespace A084089

/-- `record[A302792(3*n+2)]` -/
def P14138146552680471905.Spec : Prop :=
  ∀ n, P14138146552680471905.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P8111253642672649654

`filter[A016777(n), A035263(#)]`
-/

namespace A084089.P8111253642672649654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A084089.P8111253642672649654

namespace A084089

/-- `filter[A016777(n), A035263(#)]` -/
def P8111253642672649654.Spec : Prop :=
  ∀ n, P8111253642672649654.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P11369946379539770956

`filter[A016777(n), A372574(#)]`
-/

namespace A084089.P11369946379539770956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A084089.P11369946379539770956

namespace A084089

/-- `filter[A016777(n), A372574(#)]` -/
def P11369946379539770956.Spec : Prop :=
  ∀ n, P11369946379539770956.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P5967796696261424512

`filter[A016777(n), A373136(#)]`
-/

namespace A084089.P5967796696261424512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A084089.P5967796696261424512

namespace A084089

/-- `filter[A016777(n), A373136(#)]` -/
def P5967796696261424512.Spec : Prop :=
  ∀ n, P5967796696261424512.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P11803898137879261230

`filter[A016777(n), A373155(#)]`
-/

namespace A084089.P11803898137879261230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084089.P11803898137879261230

namespace A084089

/-- `filter[A016777(n), A373155(#)]` -/
def P11803898137879261230.Spec : Prop :=
  ∀ n, P11803898137879261230.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P10018999590068290488

`filter[A033627(n+1), A035263(#)]`
-/

namespace A084089.P10018999590068290488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A084089.P10018999590068290488

namespace A084089

/-- `filter[A033627(n+1), A035263(#)]` -/
def P10018999590068290488.Spec : Prop :=
  ∀ n, P10018999590068290488.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P8508047560015393626

`filter[A033627(n+1), A372574(#)]`
-/

namespace A084089.P8508047560015393626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A084089.P8508047560015393626

namespace A084089

/-- `filter[A033627(n+1), A372574(#)]` -/
def P8508047560015393626.Spec : Prop :=
  ∀ n, P8508047560015393626.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P5654147707869223472

`filter[A033627(n+1), A373136(#)]`
-/

namespace A084089.P5654147707869223472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A084089.P5654147707869223472

namespace A084089

/-- `filter[A033627(n+1), A373136(#)]` -/
def P5654147707869223472.Spec : Prop :=
  ∀ n, P5654147707869223472.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P10734783906606216635

`filter[A033627(n+1), A373155(#)]`
-/

namespace A084089.P10734783906606216635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084089.P10734783906606216635

namespace A084089

/-- `filter[A033627(n+1), A373155(#)]` -/
def P10734783906606216635.Spec : Prop :=
  ∀ n, P10734783906606216635.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P14156116847993981191

`filter[A230240(n+2), A373155(#)]`
-/

namespace A084089.P14156116847993981191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084089.P14156116847993981191

namespace A084089

/-- `filter[A230240(n+2), A373155(#)]` -/
def P14156116847993981191.Spec : Prop :=
  ∀ n, P14156116847993981191.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P2240100263080143548

`∩[A016777(n), A260488(n)]`
-/

namespace A084089.P2240100263080143548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084089.P2240100263080143548

namespace A084089

/-- `∩[A016777(n), A260488(n)]` -/
def P2240100263080143548.Spec : Prop :=
  ∀ n, (P2240100263080143548.a n : ℤ) = A084089 (n + 1)

end A084089

/-! ## A084089.P13631181415473828714

`filter[A260488(n+1), A035263(#)]`
-/

namespace A084089.P13631181415473828714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A084089.P13631181415473828714

namespace A084089

/-- `filter[A260488(n+1), A035263(#)]` -/
def P13631181415473828714.Spec : Prop :=
  ∀ n, P13631181415473828714.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P5472657146533884416

`filter[A260488(n+1), A372574(#)]`
-/

namespace A084089.P5472657146533884416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A084089.P5472657146533884416

namespace A084089

/-- `filter[A260488(n+1), A372574(#)]` -/
def P5472657146533884416.Spec : Prop :=
  ∀ n, P5472657146533884416.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P456656892125630337

`filter[A260488(n+1), A373136(#)]`
-/

namespace A084089.P456656892125630337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A084089.P456656892125630337

namespace A084089

/-- `filter[A260488(n+1), A373136(#)]` -/
def P456656892125630337.Spec : Prop :=
  ∀ n, P456656892125630337.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P16385933542931599156

`filter[A260488(n+1), A373155(#)]`
-/

namespace A084089.P16385933542931599156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084089.P16385933542931599156

namespace A084089

/-- `filter[A260488(n+1), A373155(#)]` -/
def P16385933542931599156.Spec : Prop :=
  ∀ n, P16385933542931599156.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P1743050784578490410

`filter[A055047(n+1), A373155(#)]`
-/

namespace A084089.P1743050784578490410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084089.P1743050784578490410

namespace A084089

/-- `filter[A055047(n+1), A373155(#)]` -/
def P1743050784578490410.Spec : Prop :=
  ∀ n, P1743050784578490410.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P2041421053490681349

`∩[A055047(n+1), A260488(n)]`
-/

namespace A084089.P2041421053490681349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084089.P2041421053490681349

namespace A084089

/-- `∩[A055047(n+1), A260488(n)]` -/
def P2041421053490681349.Spec : Prop :=
  ∀ n, (P2041421053490681349.a n : ℤ) = A084089 (n + 1)

end A084089

/-! ## A084089.P15512012108058105889

`filter[A277572(n+1), A373155(#)]`
-/

namespace A084089.P15512012108058105889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A084089.P15512012108058105889

namespace A084089

/-- `filter[A277572(n+1), A373155(#)]` -/
def P15512012108058105889.Spec : Prop :=
  ∀ n, P15512012108058105889.a n = A084089 (n + 1)

end A084089

/-! ## A084089.P13370578520663229353

`∩[A277572(n+1), A260488(n)]`
-/

namespace A084089.P13370578520663229353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084089.P13370578520663229353

namespace A084089

/-- `∩[A277572(n+1), A260488(n)]` -/
def P13370578520663229353.Spec : Prop :=
  ∀ n, (P13370578520663229353.a n : ℤ) = A084089 (n + 1)

end A084089

/-!
# A084090: Numbers k such that k is divisible by 3 or the exponent of the highest power of 2 dividing k is odd. Complement of A084087.

The programs for A084090, the canonical program `A084090.P17348984621324137681` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084090 has offset 1).

The definition of A084090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084090.P914060252257397961

`comp[C((n+1)/3^val(n+1, 3), xor(n, n+1)%3)]`
-/

namespace A084090.P914060252257397961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat (Nat.xor n (n + 1) % 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A084090.P914060252257397961

namespace A084090

/-- `comp[C((n+1)/3^val(n+1, 3), xor(n, n+1)%3)]` -/
def P914060252257397961.Spec : Prop :=
  ∀ n, (P914060252257397961.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P17348984621324137681

`eq[0, A084091(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A084090

/-- `eq[0, A084091(n)]` -/
def P17348984621324137681.Spec : Prop :=
  ∀ n, (P17348984621324137681.a n : ℤ) = A084090 (n + 1)

theorem P17348984621324137681.correct : P17348984621324137681.Spec := by
  intro n
  simp only [A084090, Nat.add_sub_cancel]

end A084090

/-! ## A084090.P10436747552649639360

`comp[A084087(n+1)]`
-/

namespace A084090.P10436747552649639360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A084090.P10436747552649639360

namespace A084090

/-- `comp[A084087(n+1)]` -/
def P10436747552649639360.Spec : Prop :=
  ∀ n, (P10436747552649639360.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P13755613268936631176

`∪[A036554(n+1), A008585(n)]`
-/

namespace A084090.P13755613268936631176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084090.P13755613268936631176

namespace A084090

/-- `∪[A036554(n+1), A008585(n)]` -/
def P13755613268936631176.Spec : Prop :=
  ∀ n, (P13755613268936631176.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P4066904594176928331

`∪[A325424(n+1), A008585(n)]`
-/

namespace A084090.P4066904594176928331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084090.P4066904594176928331

namespace A084090

/-- `∪[A325424(n+1), A008585(n)]` -/
def P4066904594176928331.Spec : Prop :=
  ∀ n, (P4066904594176928331.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P14676048010572992465

`eq[0, A235201(n)%2]`
-/

namespace A084090.P14676048010572992465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235201 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084090.P14676048010572992465

namespace A084090

/-- `eq[0, A235201(n)%2]` -/
def P14676048010572992465.Spec : Prop :=
  ∀ n, (P14676048010572992465.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P5517762873607301651

`eq[2, A020639(A235201(n)+2)]`
-/

namespace A084090.P5517762873607301651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A235201 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084090.P5517762873607301651

namespace A084090

/-- `eq[2, A020639(A235201(n)+2)]` -/
def P5517762873607301651.Spec : Prop :=
  ∀ n, (P5517762873607301651.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P13087495057953996623

`eq[4, A010126(A129527(n))]`
-/

namespace A084090.P13087495057953996623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 (A129527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084090.P13087495057953996623

namespace A084090

/-- `eq[4, A010126(A129527(n))]` -/
def P13087495057953996623.Spec : Prop :=
  ∀ n, (P13087495057953996623.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P12741091682423152020

`eq[A010059(n-A011655(n)), A010059(n)]`
-/

namespace A084090.P12741091682423152020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 ((n : ℤ) - A011655 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084090.P12741091682423152020

namespace A084090

/-- `eq[A010059(n-A011655(n)), A010059(n)]` -/
def P12741091682423152020.Spec : Prop :=
  ∀ n, (P12741091682423152020.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P7321189367205054018

`eq[A110569(n-A285383(n+1)), A110569(n)]`
-/

namespace A084090.P7321189367205054018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110569 ((n : ℤ) - A285383 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084090.P7321189367205054018

namespace A084090

/-- `eq[A110569(n-A285383(n+1)), A110569(n)]` -/
def P7321189367205054018.Spec : Prop :=
  ∀ n, (P7321189367205054018.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P2587752010553243893

`eq[A070683(n+1)*A284948(2*n+1), 0]`
-/

namespace A084090.P2587752010553243893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 (n + 1) * A284948 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A084090.P2587752010553243893

namespace A084090

/-- `eq[A070683(n+1)*A284948(2*n+1), 0]` -/
def P2587752010553243893.Spec : Prop :=
  ∀ n, (P2587752010553243893.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P7568554781942356386

`eq[A109265(n+1)*A328979(2*n+1), 0]`
-/

namespace A084090.P7568554781942356386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109265 (n + 1) * A328979 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A084090.P7568554781942356386

namespace A084090

/-- `eq[A109265(n+1)*A328979(2*n+1), 0]` -/
def P7568554781942356386.Spec : Prop :=
  ∀ n, (P7568554781942356386.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P10534433944014744559

`eq[A125564(n+1)*A328979(2*n+1), 0]`
-/

namespace A084090.P10534433944014744559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125564 (n + 1) * A328979 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A084090.P10534433944014744559

namespace A084090

/-- `eq[A125564(n+1)*A328979(2*n+1), 0]` -/
def P10534433944014744559.Spec : Prop :=
  ∀ n, (P10534433944014744559.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P4140952172253796356

`eq[A262056(n+1)*A328979(2*n+1), 0]`
-/

namespace A084090.P4140952172253796356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262056 (n + 1) * A328979 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A084090.P4140952172253796356

namespace A084090

/-- `eq[A262056(n+1)*A328979(2*n+1), 0]` -/
def P4140952172253796356.Spec : Prop :=
  ∀ n, (P4140952172253796356.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P2240080399279434167

`eq[A262967(n+1)*A328979(2*n+1), 0]`
-/

namespace A084090.P2240080399279434167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262967 (n + 1) * A328979 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A084090.P2240080399279434167

namespace A084090

/-- `eq[A262967(n+1)*A328979(2*n+1), 0]` -/
def P2240080399279434167.Spec : Prop :=
  ∀ n, (P2240080399279434167.a n : ℤ) = A084090 (n + 1)

end A084090

/-! ## A084090.P12908156089999855534

`eq[A139139(n+2)*A328979(2*n+1), 0]`
-/

namespace A084090.P12908156089999855534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139139 (n + 2) * A328979 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A084090.P12908156089999855534

namespace A084090

/-- `eq[A139139(n+2)*A328979(2*n+1), 0]` -/
def P12908156089999855534.Spec : Prop :=
  ∀ n, (P12908156089999855534.a n : ℤ) = A084090 (n + 1)

end A084090

/-!
# A084091: Expansion of Sum_{k>=0} x^2^k/(1+x^2^k+x^2^(k+1)).

The programs for A084091, the canonical program `A084091.P3642473428871494014` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084091 has offset 0).

The definition of A084091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084091.P3642473428871494014

`(A129527(n)+1)%3-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084091

/-- `(A129527(n)+1)%3-1` -/
def P3642473428871494014.Spec : Prop :=
  ∀ n, P3642473428871494014.a n = A084091 n

theorem P3642473428871494014.correct : P3642473428871494014.Spec := by
  intro n
  simp only [A084091]

end A084091

/-! ## A084091.P1251518775048055006

`char[eq[0, val(n+1, 2)%2]+1]*A102283(n)`
-/

namespace A084091.P1251518775048055006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A102283 n

end

end A084091.P1251518775048055006

namespace A084091

/-- `char[eq[0, val(n+1, 2)%2]+1]*A102283(n)` -/
def P1251518775048055006.Spec : Prop :=
  ∀ n, P1251518775048055006.a n = A084091 n

end A084091

/-! ## A084091.P12218457265651226381

`A102283(n*A285383(n+1))`
-/

namespace A084091.P12218457265651226381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 ((n : ℤ) * A285383 (n + 1)).toNat

end

end A084091.P12218457265651226381

namespace A084091

/-- `A102283(n*A285383(n+1))` -/
def P12218457265651226381.Spec : Prop :=
  ∀ n, P12218457265651226381.a n = A084091 n

end A084091

/-! ## A084091.P6641490457546202939

`A102283(n*A285384(n+1))`
-/

namespace A084091.P6641490457546202939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 ((n : ℤ) * A285384 (n + 1)).toNat

end

end A084091.P6641490457546202939

namespace A084091

/-- `A102283(n*A285384(n+1))` -/
def P6641490457546202939.Spec : Prop :=
  ∀ n, P6641490457546202939.a n = A084091 n

end A084091

/-! ## A084091.P3230840492583627233

`A106510(n)*A285383(n+1)`
-/

namespace A084091.P3230840492583627233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 n * A285383 (n + 1)

end

end A084091.P3230840492583627233

namespace A084091

/-- `A106510(n)*A285383(n+1)` -/
def P3230840492583627233.Spec : Prop :=
  ∀ n, P3230840492583627233.a n = A084091 n

end A084091

/-! ## A084091.P17928837126380836595

`A102283(n)+A102283(A129527(n)-n)`
-/

namespace A084091.P17928837126380836595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n + A102283 (A129527 n - (n : ℤ)).toNat

end

end A084091.P17928837126380836595

namespace A084091

/-- `A102283(n)+A102283(A129527(n)-n)` -/
def P17928837126380836595.Spec : Prop :=
  ∀ n, P17928837126380836595.a n = A084091 n

end A084091

/-! ## A084091.P15717608570320824469

`Δ[A007302(A004523(n))]`
-/

namespace A084091.P15717608570320824469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084091.P15717608570320824469

namespace A084091

/-- `Δ[A007302(A004523(n))]` -/
def P15717608570320824469.Spec : Prop :=
  ∀ n, P15717608570320824469.a n = A084091 n

end A084091

/-! ## A084091.P7703021889639959643

`Δ[A007302(A009947(n))]`
-/

namespace A084091.P7703021889639959643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A009947 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084091.P7703021889639959643

namespace A084091

/-- `Δ[A007302(A009947(n))]` -/
def P7703021889639959643.Spec : Prop :=
  ∀ n, P7703021889639959643.a n = A084091 n

end A084091

/-! ## A084091.P330999804938831789

`A102283(A129527(n))`
-/

namespace A084091.P330999804938831789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A129527 n).toNat

end

end A084091.P330999804938831789

namespace A084091

/-- `A102283(A129527(n))` -/
def P330999804938831789.Spec : Prop :=
  ∀ n, P330999804938831789.a n = A084091 n

end A084091

/-! ## A084091.P2059173780106835003

`A049347(A129527(n)+2)`
-/

namespace A084091.P2059173780106835003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A129527 n + 2).toNat

end

end A084091.P2059173780106835003

namespace A084091

/-- `A049347(A129527(n)+2)` -/
def P2059173780106835003.Spec : Prop :=
  ∀ n, P2059173780106835003.a n = A084091 n

end A084091

/-! ## A084091.P15523749958631779319

`A163810(A129527(n)+3)`
-/

namespace A084091.P15523749958631779319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A129527 n + 3).toNat

end

end A084091.P15523749958631779319

namespace A084091

/-- `A163810(A129527(n)+3)` -/
def P15523749958631779319.Spec : Prop :=
  ∀ n, P15523749958631779319.a n = A084091 n

end A084091

/-! ## A084091.P13673083767460048415

`A010892(A129527(n)+5)`
-/

namespace A084091.P13673083767460048415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A129527 n + 5).toNat

end

end A084091.P13673083767460048415

namespace A084091

/-- `A010892(A129527(n)+5)` -/
def P13673083767460048415.Spec : Prop :=
  ∀ n, P13673083767460048415.a n = A084091 n

end A084091

/-! ## A084091.P18337621286407775123

`A163806(A129527(n)+6)`
-/

namespace A084091.P18337621286407775123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (A129527 n + 6).toNat

end

end A084091.P18337621286407775123

namespace A084091

/-- `A163806(A129527(n)+6)` -/
def P18337621286407775123.Spec : Prop :=
  ∀ n, P18337621286407775123.a n = A084091 n

end A084091

/-! ## A084091.P11586362094409976054

`xor(n, n-1)%3*A057078(2*n+1)`
-/

namespace A084091.P11586362094409976054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3 * A057078 (2 * n + 1)

end

end A084091.P11586362094409976054

namespace A084091

/-- `xor(n, n-1)%3*A057078(2*n+1)` -/
def P11586362094409976054.Spec : Prop :=
  ∀ n, P11586362094409976054.a n = A084091 n

end A084091

/-!
# A084092: Prime power decimal palindromes.

The programs for A084092, there is no canonical definition to state claims against.
-/

/-! ## A084092.P8826332922821962603

`filter[A265641(n+1), A354923(#)]`
-/

namespace A084092.P8826332922821962603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A084092.P8826332922821962603

/-! ## A084092.P15504649828928620130

`filter[A324988(n+1), A324290(#)]`
-/

namespace A084092.P15504649828928620130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A084092.P15504649828928620130

/-! ## A084092.P1537161558953731234

`∩[A000961(n+1), A002113(n+1)]`
-/

namespace A084092.P1537161558953731234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P1537161558953731234

/-! ## A084092.P13667564967910560854

`∩[A000961(n+1), A061917(n+1)]`
-/

namespace A084092.P13667564967910560854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P13667564967910560854

/-! ## A084092.P3730981866060637425

`∩[A000961(n+1), A098897(n+1)]`
-/

namespace A084092.P3730981866060637425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P3730981866060637425

/-! ## A084092.P4255779608665440105

`∩[A002113(n+1), A133811(n+1)]`
-/

namespace A084092.P4255779608665440105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P4255779608665440105

/-! ## A084092.P10065900247756632163

`∩[A002113(n+1), A164336(n+1)]`
-/

namespace A084092.P10065900247756632163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P10065900247756632163

/-! ## A084092.P2999666679608222755

`∩[A000961(n+1), A169824(n+1)]`
-/

namespace A084092.P2999666679608222755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P2999666679608222755

/-! ## A084092.P12599275614390746293

`∩[A081061(n+1), A098897(n+1)]`
-/

namespace A084092.P12599275614390746293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P12599275614390746293

/-! ## A084092.P9605530261987164773

`∩[A061917(n+1), A133811(n+1)]`
-/

namespace A084092.P9605530261987164773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P9605530261987164773

/-! ## A084092.P8864220849864586471

`∩[A061917(n+1), A164336(n+1)]`
-/

namespace A084092.P8864220849864586471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P8864220849864586471

/-! ## A084092.P1315440705037096618

`∩[A098897(n+1), A133811(n+1)]`
-/

namespace A084092.P1315440705037096618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P1315440705037096618

/-! ## A084092.P10402274851891359195

`∩[A098897(n+1), A164336(n+1)]`
-/

namespace A084092.P10402274851891359195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P10402274851891359195

/-! ## A084092.P10122734348900590996

`∩[A000961(n+1), A265641(n+1)]`
-/

namespace A084092.P10122734348900590996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P10122734348900590996

/-! ## A084092.P2571534908805371470

`∩[A098897(n+1), A225657(n+1)]`
-/

namespace A084092.P2571534908805371470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P2571534908805371470

/-! ## A084092.P9146202140955822441

`∩[A164336(n+1), A169824(n+1)]`
-/

namespace A084092.P9146202140955822441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P9146202140955822441

/-! ## A084092.P9559076928398358785

`∩[A081061(n+1), A265641(n+1)]`
-/

namespace A084092.P9559076928398358785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P9559076928398358785

/-! ## A084092.P3418704553875270573

`∩[A164336(n+1), A265641(n+1)]`
-/

namespace A084092.P3418704553875270573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P3418704553875270573

/-! ## A084092.P16910339437433425136

`∩[A225657(n+1), A265641(n+1)]`
-/

namespace A084092.P16910339437433425136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084092.P16910339437433425136

/-!
# A084093: Prime power decimal palindromes that are not prime.

The programs for A084093, there is no canonical definition to state claims against.
-/

/-! ## A084093.P9153531121163122087

`A072037(n*a(floor(1/(n+1))))` with `a(0)=1`
-/

namespace A084093.P9153531121163122087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072037 ((n : ℤ) * a ⌊1 / (n + 1 : ℚ)⌋.toNat).toNat

end

end A084093.P9153531121163122087

/-! ## A084093.P7014153997986356130

`∏{e}[A000079(n), A072037(#)]`
-/

namespace A084093.P7014153997986356130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A072037 (Nat.factorization (f1 n).natAbs p)

end

end A084093.P7014153997986356130

/-! ## A084093.P10390558314280836660

`A072037(A028310(n))^A178334(n)`
-/

namespace A084093.P10390558314280836660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072037 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A084093.P10390558314280836660

/-! ## A084093.P17390165933941386283

`gcd(A072037(A028310(n)), A151933(n))`
-/

namespace A084093.P17390165933941386283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072037 (A028310 n).toNat) (A151933 n)

end

end A084093.P17390165933941386283

/-! ## A084093.P6693202214504436601

`∩[A025475(n+1), A075786(n+1)]`
-/

namespace A084093.P6693202214504436601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084093.P6693202214504436601

/-!
# A084094: Positions of records in A034690.

The programs for A084094, there is no canonical definition to state claims against.
-/

/-! ## A084094.P2796845312460401595

`A191000(record[A034690(n+1)])`
-/

namespace A084094.P2796845312460401595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084094.P2796845312460401595

/-! ## A084094.P2073989524548800395

`∩[A015702(n+1), A262609(n+1)]`
-/

namespace A084094.P2073989524548800395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084094.P2073989524548800395

/-! ## A084094.P13738438847243416099

`∩[A072303(n+1), A316886(n+1)]`
-/

namespace A084094.P13738438847243416099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084094.P13738438847243416099

/-! ## A084094.P39444397141382368

`∩[A081061(n+1), A316886(n+1)]`
-/

namespace A084094.P39444397141382368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084094.P39444397141382368

/-! ## A084094.P6774355829910532348

`∩[A130073(n+1), A316886(n+1)]`
-/

namespace A084094.P6774355829910532348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084094.P6774355829910532348

/-!
# A084095: First superdiagonal of number array A084061.

The programs for A084095, there is no canonical definition to state claims against.
-/

/-! ## A084095.P15475642374693470045

`A084061(2*n²)`
-/

namespace A084095.P15475642374693470045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (2 * n ^ 2)

end

end A084095.P15475642374693470045

/-! ## A084095.P5225280593631967221

`or(1, A084061(A001105(n)))`
-/

namespace A084095.P5225280593631967221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084061 (A001105 n).toNat)

end

end A084095.P5225280593631967221

/-! ## A084095.P6401667402666091098

`gcd(A000038(n), A084061(A001105(n)))`
-/

namespace A084095.P6401667402666091098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A084061 (A001105 n).toNat)

end

end A084095.P6401667402666091098

/-! ## A084095.P4987579374878800978

`A007318(∑[n])*A084061(A001105(n))`
-/

namespace A084095.P4987579374878800978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A084061 (A001105 n).toNat

end

end A084095.P4987579374878800978

/-! ## A084095.P15621607604599323404

`A084061(A001105(n))/A084061(∑[n])`
-/

namespace A084095.P15621607604599323404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084061 (A001105 n).toNat : ℚ) / (A084061 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A084095.P15621607604599323404

/-!
# A084096: Fifth row of number array A084061.

The programs for A084096, the canonical program `A084096.P11145997040477033310` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084096 has offset 0).

The definition of A084096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084096.P11145997040477033310

`((n+2)^n+(n-2)^n)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084096

/-- `((n+2)^n+(n-2)^n)/2` -/
def P11145997040477033310.Spec : Prop :=
  ∀ n, P11145997040477033310.a n = (A084096 n : ℚ)

end A084096

/-! ## A084096.P10574455381849436703

`A084061(eq[4, A025581(n)])`
-/

namespace A084096.P10574455381849436703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084096.P10574455381849436703

namespace A084096

/-- `A084061(eq[4, A025581(n)])` -/
def P10574455381849436703.Spec : Prop :=
  ∀ n, P10574455381849436703.a n = A084096 n

end A084096

/-! ## A084096.P5012487735255614746

`A084061(eq[5, A193739(n)])`
-/

namespace A084096.P5012487735255614746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084096.P5012487735255614746

namespace A084096

/-- `A084061(eq[5, A193739(n)])` -/
def P5012487735255614746.Spec : Prop :=
  ∀ n, P5012487735255614746.a n = A084096 n

end A084096

/-! ## A084096.P2581694355280115576

`A084061(eq[9, A099375(n)])`
-/

namespace A084096.P2581694355280115576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084096.P2581694355280115576

namespace A084096

/-- `A084061(eq[9, A099375(n)])` -/
def P2581694355280115576.Spec : Prop :=
  ∀ n, P2581694355280115576.a n = A084096 n

end A084096

/-! ## A084096.P1926157980251509882

`A084061(eq[5, A004736(n+1)])`
-/

namespace A084096.P1926157980251509882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084096.P1926157980251509882

namespace A084096

/-- `A084061(eq[5, A004736(n+1)])` -/
def P1926157980251509882.Spec : Prop :=
  ∀ n, P1926157980251509882.a n = A084096 n

end A084096

/-! ## A084096.P16915479635458689473

`A084061(eq[8, A155038(n+1)])`
-/

namespace A084096.P16915479635458689473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084096.P16915479635458689473

namespace A084096

/-- `A084061(eq[8, A155038(n+1)])` -/
def P16915479635458689473.Spec : Prop :=
  ∀ n, P16915479635458689473.a n = A084096 n

end A084096

/-! ## A084096.P14541936156256857291

`A084061(eq[20, A095832(n+1)])`
-/

namespace A084096.P14541936156256857291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084096.P14541936156256857291

namespace A084096

/-- `A084061(eq[20, A095832(n+1)])` -/
def P14541936156256857291.Spec : Prop :=
  ∀ n, P14541936156256857291.a n = A084096 n

end A084096

/-!
# A084097: Square array whose rows have e.g.f. exp(x)*cosh(sqrt(k)*x), k>=0, read by ascending antidiagonals.

The programs for A084097, there is no canonical definition to state claims against.
-/

/-! ## A084097.P17783774247044474872

`A099173(comp[∑[n]])-A099173(n)`
-/

namespace A084097.P17783774247044474872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099173 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A099173 n

end

end A084097.P17783774247044474872

/-! ## A084097.P15857118429283291891

`A156230(A365673(n))`
-/

namespace A084097.P15857118429283291891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156230 (A365673 n).toNat

end

end A084097.P15857118429283291891

/-! ## A084097.P12895597040624524191

`A175239(A362827(n))`
-/

namespace A084097.P12895597040624524191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175239 (A362827 n).toNat

end

end A084097.P12895597040624524191

/-! ## A084097.P8996689709090807995

`A364902(A288638(n)%A006794(n+1))`
-/

namespace A084097.P8996689709090807995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364902 (Int.tmod (A288638 n) (A006794 (n + 1))).toNat

end

end A084097.P8996689709090807995

/-! ## A084097.P11585653157628041083

`A096116(A275043(n)%A138743(n+5))`
-/

namespace A084097.P11585653157628041083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096116 (Int.tmod (A275043 n) (A138743 (n + 5))).toNat

end

end A084097.P11585653157628041083

/-!
# A084098: Expansion of e.g.f. exp(x)*tan(2*x)/2.

The programs for A084098, there is no canonical definition to state claims against.
-/

/-! ## A084098.P6105328453145459871

`(A117437(n)-A343843(n))/2`
-/

namespace A084098.P6105328453145459871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117437 n - A343843 n : ℚ) / 2

end

end A084098.P6105328453145459871

/-! ## A084098.P6564946978895354996

`(A000834(n)-A117437(n))/2`
-/

namespace A084098.P6564946978895354996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000834 n - A117437 n : ℚ) / 2

end

end A084098.P6564946978895354996

/-! ## A084098.P135454389485132451

`(A000834(n)-A343843(n))/4`
-/

namespace A084098.P135454389485132451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000834 n - A343843 n : ℚ) / 4

end

end A084098.P135454389485132451

/-!
# A084099: Expansion of (1+x)^2/(1+x^2).

The programs for A084099, the canonical program `A084099.P1981346042976435733` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084099 has offset 0).

The definition of A084099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084099.P1981346042976435733

`-a(n-2)` with `a(0)=1, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A084099

/-- `-a(n-2)` -/
def P1981346042976435733.Spec : Prop :=
  ∀ n, P1981346042976435733.a n = A084099 n

theorem P1981346042976435733.correct : P1981346042976435733.Spec := by
  intro n
  simp only [A084099]

end A084099

