import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A151000: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 0), (1, 1, 1)}.

The programs for A151000, there is no canonical definition to state claims against.
-/

/-! ## A151000.P14215159794616764881

`A123108(A151016(n)+A150986(n))`
-/

namespace A151000.P14215159794616764881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A151016 n + A150986 n).toNat

end

end A151000.P14215159794616764881

/-! ## A151000.P10814911611340932017

`A008615(xor(4, A126398(n)))`
-/

namespace A151000.P10814911611340932017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.xor 4 (A126398 n)).toNat

end

end A151000.P10814911611340932017

/-!
# A151001: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A151001, there is no canonical definition to state claims against.
-/

/-! ## A151001.P1939962473433930915

`A108356(A018003(2*n)-val(n+1, 2))`
-/

namespace A151001.P1939962473433930915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108356 (A018003 (2 * n) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)).toNat

end

end A151001.P1939962473433930915

/-! ## A151001.P16012411078286585338

`A005825(n)+A001462(A242369(n))`
-/

namespace A151001.P16012411078286585338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005825 n + A001462 (A242369 n).toNat

end

end A151001.P16012411078286585338

/-!
# A151002: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151002, there is no canonical definition to state claims against.
-/

/-! ## A151002.P9021931956483465325

`A008615(A081039(n))+A000793(n)`
-/

namespace A151002.P9021931956483465325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A081039 n).toNat + A000793 n

end

end A151002.P9021931956483465325

/-! ## A151002.P15039857726898087896

`A008748(n)+A008615(A081039(n))`
-/

namespace A151002.P15039857726898087896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n + A008615 (A081039 n).toNat

end

end A151002.P15039857726898087896

/-!
# A151003: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151003, there is no canonical definition to state claims against.
-/

/-! ## A151003.P17215082358778354977

`A151005(A038106(n+1))-char[4]`
-/

namespace A151003.P17215082358778354977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151005 (A038106 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151003.P17215082358778354977

/-! ## A151003.P4086675121834946314

`A151005(n)^A037956(n)!-char[4]`
-/

namespace A151003.P4086675121834946314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151005 n ^ Nat.factorial (A037956 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151003.P4086675121834946314

/-!
# A151004: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151004, there is no canonical definition to state claims against.
-/

/-! ## A151004.P300250972282292093

`A151005(n)-A014376(A060945(n))`
-/

namespace A151004.P300250972282292093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151005 n - A014376 (A060945 n).toNat

end

end A151004.P300250972282292093

/-! ## A151004.P2549572667377623344

`A151005(n)-A137579(A125312(n+1))`
-/

namespace A151004.P2549572667377623344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151005 n - A137579 (A125312 (n + 1)).toNat

end

end A151004.P2549572667377623344

/-!
# A151005: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1), (1, 1, 1)}.

The programs for A151005, there is no canonical definition to state claims against.
-/

/-! ## A151005.P14052657732685277208

`A151004(n)+A014376(A060945(n))`
-/

namespace A151005.P14052657732685277208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151004 n + A014376 (A060945 n).toNat

end

end A151005.P14052657732685277208

/-! ## A151005.P4275510666153384360

`A151004(n)+A137579(A003446(n))`
-/

namespace A151005.P4275510666153384360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151004 n + A137579 (A003446 n).toNat

end

end A151005.P4275510666153384360

/-! ## A151005.P3019078166870190039

`A151004(n)+A137579(A125312(n+1))`
-/

namespace A151005.P3019078166870190039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151004 n + A137579 (A125312 (n + 1)).toNat

end

end A151005.P3019078166870190039

/-!
# A151006: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1), (1, 1, 1)}.

The programs for A151006, there is no canonical definition to state claims against.
-/

/-! ## A151006.P741780306345125616

`A002266(xor(n², A164864(n+3)))`
-/

namespace A151006.P741780306345125616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.xor (n ^ 2 : ℤ) (A164864 (n + 3))).toNat

end

end A151006.P741780306345125616

/-! ## A151006.P6810355659399060348

`A259572(A202814(n))+A202814(n)`
-/

namespace A151006.P6810355659399060348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (A202814 n).toNat + A202814 n

end

end A151006.P6810355659399060348

/-!
# A151007: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151007, there is no canonical definition to state claims against.
-/

/-! ## A151007.P17375286451856688968

`A054385(A175934(n))-A182635(n)`
-/

namespace A151007.P17375286451856688968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (A175934 n).toNat - A182635 n

end

end A151007.P17375286451856688968

/-! ## A151007.P3745702926767122499

`A159792(A048285(n))+A057164(n)`
-/

namespace A151007.P3745702926767122499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159792 (A048285 n).toNat + A057164 n

end

end A151007.P3745702926767122499

/-!
# A151008: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151008, there is no canonical definition to state claims against.
-/

/-! ## A151008.P16253891523614471763

`A038112(n)-A008651(A213102(n))`
-/

namespace A151008.P16253891523614471763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038112 n - A008651 (A213102 n).toNat

end

end A151008.P16253891523614471763

/-! ## A151008.P11613678051457289697

`or(A008624(A074507(n)), A038207(n))`
-/

namespace A151008.P11613678051457289697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008624 (A074507 n).toNat) (A038207 n)

end

end A151008.P11613678051457289697

/-!
# A151009: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A151009, there is no canonical definition to state claims against.
-/

/-! ## A151009.P10485907839871305097

`A261221(∑[floor(23^(n/2))])`
-/

namespace A151009.P10485907839871305097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(23 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151009.P10485907839871305097

/-! ## A151009.P10371738298023358145

`record[A060384(A331993((n+1)/2^val(n+1, 2)))]`
-/

namespace A151009.P10371738298023358145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A331993 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151009.P10371738298023358145

/-!
# A151010: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A151010, there is no canonical definition to state claims against.
-/

/-! ## A151010.P3772452126841667657

`A231901(A394529(n))`
-/

namespace A151010.P3772452126841667657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231901 (A394529 n).toNat

end

end A151010.P3772452126841667657

/-! ## A151010.P14371862135348699801

`∑[A056173(A000400(n))]+1`
-/

namespace A151010.P14371862135348699801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056173 (A000400 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A151010.P14371862135348699801

/-!
# A151011: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A151011, there is no canonical definition to state claims against.
-/

/-! ## A151011.P12351990048534856096

`A008616(Δ[A017972(n)])`
-/

namespace A151011.P12351990048534856096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (f1 (n + 1) - f1 n).toNat

end

end A151011.P12351990048534856096

/-! ## A151011.P14408550773125755467

`A248148(A150862(n))+∑[round(5^n/12)]`
-/

namespace A151011.P14408550773125755467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ n : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A150862 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151011.P14408550773125755467

/-!
# A151012: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A151012, there is no canonical definition to state claims against.
-/

/-! ## A151012.P7594386169431893732

`A008619(A145839(n)+C(n, 2))`
-/

namespace A151012.P7594386169431893732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A145839 n + (Nat.choose n 2 : ℤ)).toNat

end

end A151012.P7594386169431893732

/-! ## A151012.P109637232658264180

`A140106(A145839(n))+A008732(n)`
-/

namespace A151012.P109637232658264180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A145839 n).toNat + A008732 n

end

end A151012.P109637232658264180

/-! ## A151012.P7220946262153028618

`A004526(A145853(n+1)+A145839(n))`
-/

namespace A151012.P7220946262153028618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A145853 (n + 1) + A145839 n).toNat

end

end A151012.P7220946262153028618

/-!
# A151013: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A151013, there is no canonical definition to state claims against.
-/

/-! ## A151013.P303694625840851939

`A110656(3*ceil(sqrt(22)^n))`
-/

namespace A151013.P303694625840851939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (3 * ⌈Real.sqrt (22 : ℝ) ^ n⌉).toNat

end

end A151013.P303694625840851939

/-! ## A151013.P1305584185350619744

`A057360(A017970(n))+1`
-/

namespace A151013.P1305584185350619744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A017970 n).toNat + 1

end

end A151013.P1305584185350619744

/-!
# A151014: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151014, there is no canonical definition to state claims against.
-/

/-! ## A151014.P493068822652875394

`A008615(4*A151227(n))`
-/

namespace A151014.P493068822652875394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (4 * A151227 n).toNat

end

end A151014.P493068822652875394

/-! ## A151014.P8675457485705760988

`A060144(A057087(n))+A008641(n)`
-/

namespace A151014.P8675457485705760988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A057087 n).toNat + A008641 n

end

end A151014.P8675457485705760988

/-!
# A151015: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151015, there is no canonical definition to state claims against.
-/

/-! ## A151015.P18141962515004444275

`A005843(A151017(n))-A151018(n)`
-/

namespace A151015.P18141962515004444275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151017 n).toNat - A151018 n

end

end A151015.P18141962515004444275

/-! ## A151015.P9273169532421952859

`A311356(A084868(n))/4`
-/

namespace A151015.P9273169532421952859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311356 (A084868 n).toNat : ℚ) / 4

end

end A151015.P9273169532421952859

/-!
# A151016: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A151016, there is no canonical definition to state claims against.
-/

/-! ## A151016.P10765712403354638434

`A283833(A112308(n))`
-/

namespace A151016.P10765712403354638434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283833 (A112308 n).toNat

end

end A151016.P10765712403354638434

/-! ## A151016.P13881743005007262749

`A027868(A276022(n))+A000108(n)`
-/

namespace A151016.P13881743005007262749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A276022 n).toNat + A000108 n

end

end A151016.P13881743005007262749

/-!
# A151017: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151017, there is no canonical definition to state claims against.
-/

/-! ## A151017.P2902576226464629343

`A014682(A151018(n)+A151015(n))`
-/

namespace A151017.P2902576226464629343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151018 n + A151015 n).toNat

end

end A151017.P2902576226464629343

/-! ## A151017.P7175686311678500862

`A001281(A151018(n)+A151015(n))`
-/

namespace A151017.P7175686311678500862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151018 n + A151015 n).toNat

end

end A151017.P7175686311678500862

/-! ## A151017.P385085152360246286

`A004525(A151018(n)+A151015(n))`
-/

namespace A151017.P385085152360246286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151018 n + A151015 n).toNat

end

end A151017.P385085152360246286

/-!
# A151018: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 1, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151018, there is no canonical definition to state claims against.
-/

/-! ## A151018.P6456282684261071560

`A005843(A151017(n))-A151015(n)`
-/

namespace A151018.P6456282684261071560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151017 n).toNat - A151015 n

end

end A151018.P6456282684261071560

/-!
# A151019: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151019, there is no canonical definition to state claims against.
-/

/-! ## A151019.P5080659775405043099

`and(C(A260788(n+2), n), A152802(n))`
-/

namespace A151019.P5080659775405043099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.choose (A260788 (n + 2)).toNat n : ℤ) (A152802 n)

end

end A151019.P5080659775405043099

/-!
# A151020: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151020, there is no canonical definition to state claims against.
-/

/-! ## A151020.P7292563358079062655

`A001096(n)!*A262368(n)`
-/

namespace A151020.P7292563358079062655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001096 n).toNat : ℤ) * A262368 n

end

end A151020.P7292563358079062655

/-! ## A151020.P1622829447800897868

`A000010(eq[3, A324543(n+1)])`
-/

namespace A151020.P1622829447800897868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151020.P1622829447800897868

/-!
# A151021: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151021, there is no canonical definition to state claims against.
-/

/-! ## A151021.P12998741523638574382

`A005374(A005388(n+2)-n)`
-/

namespace A151021.P12998741523638574382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A005388 (n + 2) - (n : ℤ)).toNat

end

end A151021.P12998741523638574382

/-!
# A151022: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151022, there is no canonical definition to state claims against.
-/

/-! ## A151022.P9853768428878776658

`A333217(A053418(n))+A244748(n+1)`
-/

namespace A151022.P9853768428878776658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (A053418 n).toNat + A244748 (n + 1)

end

end A151022.P9853768428878776658

/-!
# A151023: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151023, there is no canonical definition to state claims against.
-/

/-! ## A151023.P24052446914735553

`A004277(A151024(n))-A151025(n)`
-/

namespace A151023.P24052446914735553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151024 n).toNat - A151025 n

end

end A151023.P24052446914735553

/-! ## A151023.P1722822185872690280

`A122983(n)+A008611(A057087(n))`
-/

namespace A151023.P1722822185872690280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 n + A008611 (A057087 n).toNat

end

end A151023.P1722822185872690280

/-!
# A151024: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A151024, there is no canonical definition to state claims against.
-/

/-! ## A151024.P15862300937200192591

`A001281(A151025(n)+A151023(n))`
-/

namespace A151024.P15862300937200192591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151025 n + A151023 n).toNat

end

end A151024.P15862300937200192591

/-! ## A151024.P12623668741710834024

`A004525(A151025(n)+A151023(n))`
-/

namespace A151024.P12623668741710834024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151025 n + A151023 n).toNat

end

end A151024.P12623668741710834024

/-! ## A151024.P2312821767965601815

`A004526(A151025(n)+A151023(n))`
-/

namespace A151024.P2312821767965601815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151025 n + A151023 n).toNat

end

end A151024.P2312821767965601815

/-!
# A151025: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151025, there is no canonical definition to state claims against.
-/

/-! ## A151025.P6227370184574769507

`A004277(A151024(n))-A151023(n)`
-/

namespace A151025.P6227370184574769507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151024 n).toNat - A151023 n

end

end A151025.P6227370184574769507

/-! ## A151025.P5733199745917408971

`A167162(A373960(n+1))`
-/

namespace A151025.P5733199745917408971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167162 (A373960 (n + 1)).toNat

end

end A151025.P5733199745917408971

/-!
# A151026: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151026, there is no canonical definition to state claims against.
-/

/-! ## A151026.P16925075285335856237

`A093886(A101510(n))`
-/

namespace A151026.P16925075285335856237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093886 (A101510 n).toNat

end

end A151026.P16925075285335856237

/-! ## A151026.P3522177242388141058

`A078429(A270462(n))`
-/

namespace A151026.P3522177242388141058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078429 (A270462 n).toNat

end

end A151026.P3522177242388141058

/-!
# A151027: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A151027, there is no canonical definition to state claims against.
-/

/-! ## A151027.P928121166592575930

`A118848(A149871(n))-1`
-/

namespace A151027.P928121166592575930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118848 (A149871 n).toNat - 1

end

end A151027.P928121166592575930

/-! ## A151027.P3939785971110911432

`A084059(n)-A307409(A084063(n))`
-/

namespace A151027.P3939785971110911432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 n - A307409 (A084063 n).toNat

end

end A151027.P3939785971110911432

/-!
# A151028: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A151028, there is no canonical definition to state claims against.
-/

/-! ## A151028.P15737490927829202074

`A027193(2*(n+1))*A062821(A002110(n))`
-/

namespace A151028.P15737490927829202074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (2 * (n + 1)) * A062821 (A002110 n).toNat

end

end A151028.P15737490927829202074

/-! ## A151028.P4711710373068436249

`A104767(A342527(n))*A321728(2*(n+1))`
-/

namespace A151028.P4711710373068436249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (A342527 n).toNat * A321728 (2 * (n + 1))

end

end A151028.P4711710373068436249

/-!
# A151029: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151029, there is no canonical definition to state claims against.
-/

/-! ## A151029.P15469120641213952328

`A055930(A149917(n+1))`
-/

namespace A151029.P15469120641213952328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A149917 (n + 1)).toNat

end

end A151029.P15469120641213952328

/-! ## A151029.P8911848717264302597

`or(1, A001462(A173612(n)))`
-/

namespace A151029.P8911848717264302597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001462 (A173612 n).toNat)

end

end A151029.P8911848717264302597

/-!
# A151030: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 0, 1), (0, 1, 0), (1, 0, 1)}.

The programs for A151030, there is no canonical definition to state claims against.
-/

/-! ## A151030.P2630210222341346178

`or(A094507(n), A289012(A275046(n)))`
-/

namespace A151030.P2630210222341346178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094507 n) (A289012 (A275046 n).toNat)

end

end A151030.P2630210222341346178

/-! ## A151030.P968996160483458306

`xor(A006134(n), A357620(A274627(n)))`
-/

namespace A151030.P968996160483458306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006134 n) (A357620 (A274627 n).toNat)

end

end A151030.P968996160483458306

/-!
# A151031: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151031, there is no canonical definition to state claims against.
-/

/-! ## A151031.P13761389058914122210

`A193990(floor(5^(n+1)/2)+1)`
-/

namespace A151031.P13761389058914122210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193990 (⌊(5 ^ (n + 1) : ℚ) / 2⌋ + 1).toNat

end

end A151031.P13761389058914122210

/-! ## A151031.P10735782858211596900

`A151032(A001096(n))`
-/

namespace A151031.P10735782858211596900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151032 (A001096 n).toNat

end

end A151031.P10735782858211596900

/-!
# A151032: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151032, there is no canonical definition to state claims against.
-/

/-! ## A151032.P16426610658329430833

`or(A010153(A001858(n)), A151031(n))`
-/

namespace A151032.P16426610658329430833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010153 (A001858 n).toNat) (A151031 n)

end

end A151032.P16426610658329430833

/-! ## A151032.P17319175355902980852

`or(A004198(A151070(n)), A151031(n))`
-/

namespace A151032.P17319175355902980852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 (A151070 n).toNat) (A151031 n)

end

end A151032.P17319175355902980852

/-! ## A151032.P17622353486819958514

`or(A010153(A151016(n)), A151031(n))`
-/

namespace A151032.P17622353486819958514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010153 (A151016 n).toNat) (A151031 n)

end

end A151032.P17622353486819958514

/-!
# A151033: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 0, 1), (0, 1, 1), (1, 1, 0)}.

The programs for A151033, there is no canonical definition to state claims against.
-/

/-! ## A151033.P12831281005432830026

`A248608(A148365(n+1))`
-/

namespace A151033.P12831281005432830026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248608 (A148365 (n + 1)).toNat

end

end A151033.P12831281005432830026

/-! ## A151033.P5173573807356417569

`A001700(n)-A374744(A054359(n+1))`
-/

namespace A151033.P5173573807356417569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - A374744 (A054359 (n + 1)).toNat

end

end A151033.P5173573807356417569

/-!
# A151034: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, 1), (0, 1, 0), (1, 0, 1)}.

The programs for A151034, there is no canonical definition to state claims against.
-/

/-! ## A151034.P5460370562056394660

`A151035(A001096(n))`
-/

namespace A151034.P5460370562056394660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151035 (A001096 n).toNat

end

end A151034.P5460370562056394660

/-! ## A151034.P16940534865541201819

`filter[A151035(n), A087032(#)]`
-/

namespace A151034.P16940534865541201819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087032 (f1 j).toNat = 1) n)

end

end A151034.P16940534865541201819

/-!
# A151035: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151035, there is no canonical definition to state claims against.
-/

/-! ## A151035.P1818207656824638403

`A004277(A151039(n))-A151045(n)`
-/

namespace A151035.P1818207656824638403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151039 n).toNat - A151045 n

end

end A151035.P1818207656824638403

/-! ## A151035.P18118810468549721372

`A109128(n)+A077814(A147597(n+1))`
-/

namespace A151035.P18118810468549721372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + A077814 (A147597 (n + 1)).toNat

end

end A151035.P18118810468549721372

/-! ## A151035.P11056666411200485742

`A110655(A147597(n+1)+A135089(n))`
-/

namespace A151035.P11056666411200485742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A147597 (n + 1) + A135089 n).toNat

end

end A151035.P11056666411200485742

/-!
# A151036: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151036, there is no canonical definition to state claims against.
-/

/-! ## A151036.P8413762946400389530

`A004525(A151037(n)+A151035(n))`
-/

namespace A151036.P8413762946400389530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151037 n + A151035 n).toNat

end

end A151036.P8413762946400389530

/-! ## A151036.P10215654180357750168

`A004526(A151037(n)+A151035(n))`
-/

namespace A151036.P10215654180357750168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151037 n + A151035 n).toNat

end

end A151036.P10215654180357750168

/-! ## A151036.P2440524947900966584

`A006370(A151037(n)+A151035(n))`
-/

namespace A151036.P2440524947900966584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A151037 n + A151035 n).toNat

end

end A151036.P2440524947900966584

/-!
# A151037: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151037, there is no canonical definition to state claims against.
-/

/-! ## A151037.P13612423515531376640

`A008619(A183060(n)+A052990(n))`
-/

namespace A151037.P13612423515531376640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A183060 n + A052990 n).toNat

end

end A151037.P13612423515531376640

/-! ## A151037.P14700047456185811259

`∑[A228354(2^n)]`
-/

namespace A151037.P14700047456185811259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151037.P14700047456185811259

/-!
# A151038: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151038, there is no canonical definition to state claims against.
-/

/-! ## A151038.P16153198885102299025

`A286294(4*a(n-1)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A151038.P16153198885102299025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A286294 (4 * a (n - 1) - a (n - 2)).toNat

end

end A151038.P16153198885102299025

/-! ## A151038.P14111009273713538642

`floor((sqrt(3)+2)*a(n-1))%A087601(n+1)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A151038.P14111009273713538642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  Int.tmod ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ (A087601 (n + 1))

end

end A151038.P14111009273713538642

/-!
# A151039: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A151039, there is no canonical definition to state claims against.
-/

/-! ## A151039.P10402943175760452198

`A014682(A151045(n)+A151035(n))`
-/

namespace A151039.P10402943175760452198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151045 n + A151035 n).toNat

end

end A151039.P10402943175760452198

/-! ## A151039.P10957278819835074239

`A305425(A151045(n)+A151035(n))`
-/

namespace A151039.P10957278819835074239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A151045 n + A151035 n).toNat

end

end A151039.P10957278819835074239

/-! ## A151039.P7834817942469189528

`A151035(n)+A001281(A151045(n)-A151035(n))`
-/

namespace A151039.P7834817942469189528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151035 n + A001281 (A151045 n - A151035 n).toNat

end

end A151039.P7834817942469189528

/-!
# A151040: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A151040, there is no canonical definition to state claims against.
-/

/-! ## A151040.P4150782278163768194

`or(A010153(A151016(n)), A151039(n))`
-/

namespace A151040.P4150782278163768194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010153 (A151016 n).toNat) (A151039 n)

end

end A151040.P4150782278163768194

/-! ## A151040.P14468527768083488341

`or(A151039(n), A284974(A007902(n+1)))`
-/

namespace A151040.P14468527768083488341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151039 n) (A284974 (A007902 (n + 1)).toNat)

end

end A151040.P14468527768083488341

/-! ## A151040.P4293203818692018231

`or(A151039(n), A236112(A222093(n+1)))`
-/

namespace A151040.P4293203818692018231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151039 n) (A236112 (A222093 (n + 1)).toNat)

end

end A151040.P4293203818692018231

/-!
# A151041: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (0, 1, 1), (1, 0, 0)}.

The programs for A151041, there is no canonical definition to state claims against.
-/

/-! ## A151041.P8305040662271308206

`A151042(n)%p?[round(3*2^n/5)]`
-/

namespace A151041.P8305040662271308206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((2 ^ n : ℚ) / 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151042 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A151041.P8305040662271308206

/-! ## A151041.P17901405112832508969

`A151042(A073788(n))`
-/

namespace A151041.P17901405112832508969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151042 (A073788 n).toNat

end

end A151041.P17901405112832508969

/-! ## A151041.P13610042158826131883

`A075054(A151042(n))`
-/

namespace A151041.P13610042158826131883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A151042 n).toNat

end

end A151041.P13610042158826131883

/-!
# A151043: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, 1), (1, 0, 0)}.

The programs for A151043, there is no canonical definition to state claims against.
-/

/-! ## A151043.P3729859523521768692

`A151044(n)%p?[2^n-1]`
-/

namespace A151043.P3729859523521768692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151044 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A151043.P3729859523521768692

/-! ## A151043.P15952072090865738827

`A151044(A073788(n))`
-/

namespace A151043.P15952072090865738827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151044 (A073788 n).toNat

end

end A151043.P15952072090865738827

/-! ## A151043.P15280468905117104715

`A075054(A151044(n))`
-/

namespace A151043.P15280468905117104715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A151044 n).toNat

end

end A151043.P15280468905117104715

/-!
# A151045: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 0), (0, 1, 1), (1, 0, 1)}.

The programs for A151045, there is no canonical definition to state claims against.
-/

/-! ## A151045.P6147202079957611387

`A004277(A151039(n))-A151035(n)`
-/

namespace A151045.P6147202079957611387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151039 n).toNat - A151035 n

end

end A151045.P6147202079957611387

/-! ## A151045.P13393846012858721488

`A120837(A150178(n))`
-/

namespace A151045.P13393846012858721488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120837 (A150178 n).toNat

end

end A151045.P13393846012858721488

/-!
# A151046: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151046, there is no canonical definition to state claims against.
-/

/-! ## A151046.P4090938326280183824

`A001221(∏[n+7]/7)+ceil(2^(2*n-1))`
-/

namespace A151046.P4090938326280183824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7)).toNat + ⌈(2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌉

end

end A151046.P4090938326280183824

/-! ## A151046.P9006712494185854560

`A276218(A150560(n))`
-/

namespace A151046.P9006712494185854560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276218 (A150560 n).toNat

end

end A151046.P9006712494185854560

/-!
# A151047: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151047, there is no canonical definition to state claims against.
-/

/-! ## A151047.P1558769061026833392

`A004277(A151060(n))-A151081(n)`
-/

namespace A151047.P1558769061026833392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151060 n).toNat - A151081 n

end

end A151047.P1558769061026833392

/-! ## A151047.P13993014594587260778

`2*A004525(A151078(n)+A151048(n))-A151081(n)`
-/

namespace A151047.P13993014594587260778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004525 (A151078 n + A151048 n).toNat - A151081 n

end

end A151047.P13993014594587260778

/-! ## A151047.P541592217722558343

`2*A110654(A151078(n)+A151048(n))-A151081(n)`
-/

namespace A151047.P541592217722558343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110654 (A151078 n + A151048 n).toNat - A151081 n

end

end A151047.P541592217722558343

/-!
# A151048: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151048, there is no canonical definition to state claims against.
-/

/-! ## A151048.P364342791658439957

`A004277(A151060(n))-A151078(n)`
-/

namespace A151048.P364342791658439957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151060 n).toNat - A151078 n

end

end A151048.P364342791658439957

/-! ## A151048.P2805707794701972407

`∑[A324969(n+2)+A123108(A292278(n+1))]`
-/

namespace A151048.P2805707794701972407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + A123108 (A292278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151048.P2805707794701972407

/-! ## A151048.P18005156751885832876

`2*A004525(A151081(n)+A151047(n))-A151078(n)`
-/

namespace A151048.P18005156751885832876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004525 (A151081 n + A151047 n).toNat - A151078 n

end

end A151048.P18005156751885832876

/-!
# A151049: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 0), (1, 0, 0), (1, 1, 0)}.

The programs for A151049, there is no canonical definition to state claims against.
-/

/-! ## A151049.P6070221864144247265

`A057355(3*A124343(2*n+1))`
-/

namespace A151049.P6070221864144247265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (3 * A124343 (2 * n + 1)).toNat

end

end A151049.P6070221864144247265

/-! ## A151049.P9167590479045468849

`A321401(2*n)+Δ[A339290(n+1)]`
-/

namespace A151049.P9167590479045468849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321401 (2 * n) + (f1 (n + 1) - f1 n)

end

end A151049.P9167590479045468849

/-!
# A151050: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151050, there is no canonical definition to state claims against.
-/

/-! ## A151050.P10616798990695855226

`A004525(A150147(n+1))`
-/

namespace A151050.P10616798990695855226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150147 (n + 1)).toNat

end

end A151050.P10616798990695855226

/-! ## A151050.P5375533772515584020

`Δ[A004526(∑[A150147(n)])]`
-/

namespace A151050.P5375533772515584020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151050.P5375533772515584020

/-! ## A151050.P10494645484883253029

`Δ[A008619(∑[A150147(n)])]`
-/

namespace A151050.P10494645484883253029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151050.P10494645484883253029

/-!
# A151051: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151051, there is no canonical definition to state claims against.
-/

/-! ## A151051.P14376139936669650789

`A192048(A107066(n))+A052961(n)`
-/

namespace A151051.P14376139936669650789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192048 (A107066 n).toNat + A052961 n

end

end A151051.P14376139936669650789

/-!
# A151052: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, 1), (0, 1, 0), (1, 1, 0)}.

The programs for A151052, there is no canonical definition to state claims against.
-/

/-! ## A151052.P11967093956261350405

`4*A130446(a(n-1))-n` with `a(0)=1`
-/

namespace A151052.P11967093956261350405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A130446 (a (n - 1)).toNat - (n : ℤ)

end

end A151052.P11967093956261350405

/-! ## A151052.P12942485273332430130

`A110656(A151287(n+2))`
-/

namespace A151052.P12942485273332430130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A151287 (n + 2)).toNat

end

end A151052.P12942485273332430130

/-!
# A151053: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151053, there is no canonical definition to state claims against.
-/

/-! ## A151053.P4039744580849724280

`A127763(A033123(n+1)+n)`
-/

namespace A151053.P4039744580849724280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A033123 (n + 1) + (n : ℤ)).toNat

end

end A151053.P4039744580849724280

/-!
# A151054: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A151054, there is no canonical definition to state claims against.
-/

/-! ## A151054.P6585358486871228021

`∑[A050292(∑[A150759(n)])]`
-/

namespace A151054.P6585358486871228021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150759 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151054.P6585358486871228021

/-! ## A151054.P12990348976813683091

`A213908(A150245(n))`
-/

namespace A151054.P12990348976813683091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (A150245 n).toNat

end

end A151054.P12990348976813683091

/-!
# A151055: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, 1), (0, 1, 0), (1, 1, 0)}.

The programs for A151055, there is no canonical definition to state claims against.
-/

/-! ## A151055.P12049647292915925094

`A144972(A151054(n))`
-/

namespace A151055.P12049647292915925094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (A151054 n).toNat

end

end A151055.P12049647292915925094

/-! ## A151055.P2215056769197975348

`A296484(A008549(n))`
-/

namespace A151055.P2215056769197975348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296484 (A008549 n).toNat

end

end A151055.P2215056769197975348

/-!
# A151056: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A151056, there is no canonical definition to state claims against.
-/

/-! ## A151056.P11150584861878510956

`A004526(A151071(n)+A151046(n))`
-/

namespace A151056.P11150584861878510956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151071 n + A151046 n).toNat

end

end A151056.P11150584861878510956

/-! ## A151056.P17758804404030033946

`A109081(n+2)-A006924(A000910(n))`
-/

namespace A151056.P17758804404030033946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 2) - A006924 (A000910 n).toNat

end

end A151056.P17758804404030033946

/-!
# A151057: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A151057, there is no canonical definition to state claims against.
-/

/-! ## A151057.P13477876727204393403

`A386758(A001077(n+1))+n`
-/

namespace A151057.P13477876727204393403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (A001077 (n + 1)).toNat + (n : ℤ)

end

end A151057.P13477876727204393403

/-! ## A151057.P13328681557936670121

`A165052(A000949(n))+A001700(n)`
-/

namespace A151057.P13328681557936670121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165052 (A000949 n).toNat + A001700 n

end

end A151057.P13328681557936670121

/-!
# A151058: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A151058, there is no canonical definition to state claims against.
-/

/-! ## A151058.P1667119974224884673

`A008616(A208309(n+1))+n`
-/

namespace A151058.P1667119974224884673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A208309 (n + 1)).toNat + (n : ℤ)

end

end A151058.P1667119974224884673

/-! ## A151058.P4744955896717872374

`A005493(n)-A319763(comp[2*(char[1]+n)])`
-/

namespace A151058.P4744955896717872374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f2 j = n then 1 else 0) + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A319763 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A151058.P4744955896717872374

/-!
# A151059: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 0), (1, 1, 0)}.

The programs for A151059, there is no canonical definition to state claims against.
-/

/-! ## A151059.P3886990749098451769

`A097882(2*5^n-(2^n-2))`
-/

namespace A151059.P3886990749098451769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 ((2 * 5 ^ n : ℤ) - ((2 ^ n : ℤ) - 2)).toNat

end

end A151059.P3886990749098451769

/-!
# A151060: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0), (1, 1, 0)}.

The programs for A151060, there is no canonical definition to state claims against.
-/

/-! ## A151060.P15697154307008407219

`A004525(A151078(n)+A151048(n))`
-/

namespace A151060.P15697154307008407219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151078 n + A151048 n).toNat

end

end A151060.P15697154307008407219

/-! ## A151060.P18446585950541129664

`A004525(A151081(n)+A151047(n))`
-/

namespace A151060.P18446585950541129664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151081 n + A151047 n).toNat

end

end A151060.P18446585950541129664

/-! ## A151060.P10526785706131094356

`A110654(A151078(n)+A151048(n))`
-/

namespace A151060.P10526785706131094356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151078 n + A151048 n).toNat

end

end A151060.P10526785706131094356

/-!
# A151061: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A151061, there is no canonical definition to state claims against.
-/

/-! ## A151061.P13872991883679711120

`A150556(n)+A002264(A151051(n))`
-/

namespace A151061.P13872991883679711120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150556 n + A002264 (A151051 n).toNat

end

end A151061.P13872991883679711120

/-! ## A151061.P14067412669151620832

`A081688(A081704(n))-A002450(n)`
-/

namespace A151061.P14067412669151620832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 (A081704 n).toNat - A002450 n

end

end A151061.P14067412669151620832

/-! ## A151061.P796517839776147942

`A002264(A151051(n))+A185037((1-n)²)+A151297(n)`
-/

namespace A151061.P796517839776147942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A151051 n).toNat + (A185037 ((1 - (n : ℤ)) ^ 2).toNat + A151297 n)

end

end A151061.P796517839776147942

/-!
# A151062: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A151062, there is no canonical definition to state claims against.
-/

/-! ## A151062.P17305803493430930164

`A150568(n)+A002264(A151052(n))`
-/

namespace A151062.P17305803493430930164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150568 n + A002264 (A151052 n).toNat

end

end A151062.P17305803493430930164

/-! ## A151062.P3494159223482756141

`A004525(A329701(n)+Δ[A150473(n)])`
-/

namespace A151062.P3494159223482756141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A329701 n + (f1 (n + 1) - f1 n)).toNat

end

end A151062.P3494159223482756141

/-!
# A151063: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A151063, there is no canonical definition to state claims against.
-/

/-! ## A151063.P1185593548359344500

`A262869(A150735(n+1))`
-/

namespace A151063.P1185593548359344500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A150735 (n + 1)).toNat

end

end A151063.P1185593548359344500

/-! ## A151063.P5657754117271813465

`∑[A256502(∑[A150946(n)])]`
-/

namespace A151063.P5657754117271813465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151063.P5657754117271813465

/-!
# A151064: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, 1), (0, 1, 1), (1, 1, 0)}.

The programs for A151064, there is no canonical definition to state claims against.
-/

/-! ## A151064.P230030604276312863

`A122282(floor(24^(n/4)))+A081179(n)`
-/

namespace A151064.P230030604276312863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 ⌊(24 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat + A081179 n

end

end A151064.P230030604276312863

/-! ## A151064.P5041056526559811029

`or(A060019(A138273(n)), A335964(n))`
-/

namespace A151064.P5041056526559811029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060019 (A138273 n).toNat) (A335964 n)

end

end A151064.P5041056526559811029

/-!
# A151065: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A151065, there is no canonical definition to state claims against.
-/

/-! ## A151065.P5005303840810168681

`record[floor(∑[5^(n%6)]/(n+1))]`
-/

namespace A151065.P5005303840810168681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n % 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151065.P5005303840810168681

/-! ## A151065.P13742016284600266788

`A057022(5^n)`
-/

namespace A151065.P13742016284600266788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (5 ^ n)

end

end A151065.P13742016284600266788

/-!
# A151066: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A151066, there is no canonical definition to state claims against.
-/

/-! ## A151066.P11857798858159755008

`ceil(A037373(A076035(n))/7)`
-/

namespace A151066.P11857798858159755008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037373 (A076035 n).toNat : ℚ) / 7⌉

end

end A151066.P11857798858159755008

/-!
# A151067: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, 1), (0, 1, 1), (1, 1, 0)}.

The programs for A151067, there is no canonical definition to state claims against.
-/

/-! ## A151067.P6502732470954918520

`A150765(n)+A137588(A329723(3*n+1))`
-/

namespace A151067.P6502732470954918520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150765 n + A137588 (A329723 (3 * n + 1)).toNat

end

end A151067.P6502732470954918520

/-! ## A151067.P2350571326134880566

`A002266(9*A150263(n))`
-/

namespace A151067.P2350571326134880566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (9 * A150263 n).toNat

end

end A151067.P2350571326134880566

/-!
# A151068: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A151068, there is no canonical definition to state claims against.
-/

/-! ## A151068.P13402585854815654456

`∏{p}[A151069(n)², #]`
-/

namespace A151068.P13402585854815654456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151069 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A151068.P13402585854815654456

/-! ## A151068.P4865652654097341778

`A151069(A001096(n))`
-/

namespace A151068.P4865652654097341778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151069 (A001096 n).toNat

end

end A151068.P4865652654097341778

/-!
# A151069: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A151069, there is no canonical definition to state claims against.
-/

/-! ## A151069.P7040553237162528554

`A150573(n)+A057360(A151050(n))`
-/

namespace A151069.P7040553237162528554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150573 n + A057360 (A151050 n).toNat

end

end A151069.P7040553237162528554

/-!
# A151070: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, 0, 0), (1, 0, 1)}.

The programs for A151070, there is no canonical definition to state claims against.
-/

/-! ## A151070.P16884025973081993920

`A115063(A109085(n+1))`
-/

namespace A151070.P16884025973081993920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (A109085 (n + 1)).toNat

end

end A151070.P16884025973081993920

/-! ## A151070.P7227391524554950852

`A010059(A001541(n))+A001077(n)`
-/

namespace A151070.P7227391524554950852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A001541 n).toNat + A001077 n

end

end A151070.P7227391524554950852

/-!
# A151071: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A151071, there is no canonical definition to state claims against.
-/

/-! ## A151071.P1448015351907818152

`A049093(A150651(n)+n)`
-/

namespace A151071.P1448015351907818152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A150651 n + (n : ℤ)).toNat

end

end A151071.P1448015351907818152

/-! ## A151071.P10567396041863288941

`A097882(A081896(n)+1+n)`
-/

namespace A151071.P10567396041863288941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (A081896 n + 1 + (n : ℤ)).toNat

end

end A151071.P10567396041863288941

/-!
# A151072: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A151072, there is no canonical definition to state claims against.
-/

/-! ## A151072.P8716882869876383336

`∏{p}[A151073(n)², #]`
-/

namespace A151072.P8716882869876383336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151073 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A151072.P8716882869876383336

/-! ## A151072.P4455818361492749125

`A035250(A097165(n))`
-/

namespace A151072.P4455818361492749125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A097165 n).toNat

end

end A151072.P4455818361492749125

/-!
# A151073: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A151073, there is no canonical definition to state claims against.
-/

/-! ## A151073.P5768993771092990561

`A220691(A084954(n+1))+A151072(n)`
-/

namespace A151073.P5768993771092990561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220691 (A084954 (n + 1)).toNat + A151072 n

end

end A151073.P5768993771092990561

/-!
# A151074: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 0), (1, 0, 0), (1, 0, 1)}.

The programs for A151074, there is no canonical definition to state claims against.
-/

/-! ## A151074.P6753110020391352564

`A076885(A231856(n+1))`
-/

namespace A151074.P6753110020391352564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A231856 (n + 1)).toNat

end

end A151074.P6753110020391352564

/-! ## A151074.P16077050366605195500

`A311378(A151072(n))/4`
-/

namespace A151074.P16077050366605195500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311378 (A151072 n).toNat : ℚ) / 4

end

end A151074.P16077050366605195500

/-!
# A151075: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 0), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A151075, there is no canonical definition to state claims against.
-/

/-! ## A151075.P16400292783518481473

`A002265(6*A150618(n))`
-/

namespace A151075.P16400292783518481473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * A150618 n).toNat

end

end A151075.P16400292783518481473

/-!
# A151076: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0), (1, 0, 1)}.

The programs for A151076, there is no canonical definition to state claims against.
-/

/-! ## A151076.P7685948931561682926

`A057354(A129847(2*n+1))+A000142(n)`
-/

namespace A151076.P7685948931561682926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A129847 (2 * n + 1)).toNat + A000142 n

end

end A151076.P7685948931561682926

/-! ## A151076.P2933515822457739767

`A113533(A001075(n))`
-/

namespace A151076.P2933515822457739767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113533 (A001075 n).toNat

end

end A151076.P2933515822457739767

/-!
# A151077: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 0), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A151077, there is no canonical definition to state claims against.
-/

/-! ## A151077.P3474112432449596151

`A115063(A363555(n+1))`
-/

namespace A151077.P3474112432449596151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (A363555 (n + 1)).toNat

end

end A151077.P3474112432449596151

/-! ## A151077.P1375253714610716913

`A172475(A339642(n+1))+A340764(n+1)+1`
-/

namespace A151077.P1375253714610716913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A339642 (n + 1)).toNat + (A340764 (n + 1) + 1)

end

end A151077.P1375253714610716913

/-!
# A151078: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151078, there is no canonical definition to state claims against.
-/

/-! ## A151078.P16263367463168214214

`A004277(A151060(n))-A151048(n)`
-/

namespace A151078.P16263367463168214214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151060 n).toNat - A151048 n

end

end A151078.P16263367463168214214

/-! ## A151078.P13636973034478939177

`2*A004525(A151081(n)+A151047(n))-A151048(n)`
-/

namespace A151078.P13636973034478939177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004525 (A151081 n + A151047 n).toNat - A151048 n

end

end A151078.P13636973034478939177

/-!
# A151079: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151079, there is no canonical definition to state claims against.
-/

/-! ## A151079.P13827870746592379087

`A151080(n)^C(n, 6)!`
-/

namespace A151079.P13827870746592379087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151080 n ^ Nat.factorial (Nat.choose n 6)

end

end A151079.P13827870746592379087

/-! ## A151079.P3525048049404780098

`A004180(A151080(n))`
-/

namespace A151079.P3525048049404780098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A151080 n).toNat

end

end A151079.P3525048049404780098

/-! ## A151079.P18224543235605668869

`A151080(A073788(n))`
-/

namespace A151079.P18224543235605668869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151080 (A073788 n).toNat

end

end A151079.P18224543235605668869

/-!
# A151081: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151081, there is no canonical definition to state claims against.
-/

/-! ## A151081.P11222909426624446793

`A005843(A151060(n))-A151047(n)`
-/

namespace A151081.P11222909426624446793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151060 n).toNat - A151047 n

end

end A151081.P11222909426624446793

/-! ## A151081.P2509144809390022996

`2*A004525(A151078(n)+A151048(n))-A151047(n)`
-/

namespace A151081.P2509144809390022996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004525 (A151078 n + A151048 n).toNat - A151047 n

end

end A151081.P2509144809390022996

/-! ## A151081.P145221090640481444

`2*A110654(A151078(n)+A151048(n))-A151047(n)`
-/

namespace A151081.P145221090640481444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110654 (A151078 n + A151048 n).toNat - A151047 n

end

end A151081.P145221090640481444

/-!
# A151082: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151082, there is no canonical definition to state claims against.
-/

/-! ## A151082.P14992436571555110854

`∏{p}[A151083(n)², #]`
-/

namespace A151082.P14992436571555110854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151083 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A151082.P14992436571555110854

/-! ## A151082.P8793389572200848563

`A151083(A001096(n))`
-/

namespace A151082.P8793389572200848563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151083 (A001096 n).toNat

end

end A151082.P8793389572200848563

/-!
# A151083: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151083, there is no canonical definition to state claims against.
-/

/-! ## A151083.P8212198728886182394

`A151113(n)-A343609(A151079(n))`
-/

namespace A151083.P8212198728886182394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151113 n - A343609 (A151079 n).toNat

end

end A151083.P8212198728886182394

/-! ## A151083.P1831124023112727571

`A151113(n)-A343609(A151080(n))`
-/

namespace A151083.P1831124023112727571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151113 n - A343609 (A151080 n).toNat

end

end A151083.P1831124023112727571

/-! ## A151083.P15847239852410637640

`A151115(n)-A343609(A151100(n))`
-/

namespace A151083.P15847239852410637640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151115 n - A343609 (A151100 n).toNat

end

end A151083.P15847239852410637640

/-!
# A151084: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151084, there is no canonical definition to state claims against.
-/

/-! ## A151084.P8408106882321845907

`A303051(A296771(n+1))`
-/

namespace A151084.P8408106882321845907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303051 (A296771 (n + 1)).toNat

end

end A151084.P8408106882321845907

/-! ## A151084.P16104693412837337117

`A108954(∑[A052921(n)]²)`
-/

namespace A151084.P16104693412837337117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A151084.P16104693412837337117

/-!
# A151085: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151085, there is no canonical definition to state claims against.
-/

/-! ## A151085.P14348659966025408055

`A151102(n)-A178498(A274975(n))`
-/

namespace A151085.P14348659966025408055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151102 n - A178498 (A274975 n).toNat

end

end A151085.P14348659966025408055

/-! ## A151085.P14912865752063315593

`A138311(A151103(n))-Δ[A000009(n)]`
-/

namespace A151085.P14912865752063315593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A151103 n).toNat - (f1 (n + 1) - f1 n)

end

end A151085.P14912865752063315593

/-!
# A151086: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, 0, 0), (1, 1, 0)}.

The programs for A151086, there is no canonical definition to state claims against.
-/

/-! ## A151086.P1438342012879145552

`A150235(n)+A004526(A151073(n))`
-/

namespace A151086.P1438342012879145552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150235 n + A004526 (A151073 n).toNat

end

end A151086.P1438342012879145552

/-! ## A151086.P16418044375805899226

`∑[A247832(A150556(n))]`
-/

namespace A151086.P16418044375805899226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A150556 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151086.P16418044375805899226

/-!
# A151087: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 0, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151087, there is no canonical definition to state claims against.
-/

/-! ## A151087.P17261199345234738198

`A150225(n)+A004526(A151086(n))`
-/

namespace A151087.P17261199345234738198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150225 n + A004526 (A151086 n).toNat

end

end A151087.P17261199345234738198

/-! ## A151087.P7073194383335384609

`A087831(A150944(n+1))`
-/

namespace A151087.P7073194383335384609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087831 (A150944 (n + 1)).toNat

end

end A151087.P7073194383335384609

/-!
# A151088: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A151088, there is no canonical definition to state claims against.
-/

/-! ## A151088.P4816015798729052616

`A151098(n)-A064458((n-1)*A181951(n+1))`
-/

namespace A151088.P4816015798729052616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151098 n - A064458 (((n : ℤ) - 1) * A181951 (n + 1)).toNat

end

end A151088.P4816015798729052616

/-! ## A151088.P4930652035365291488

`A276218(A150854(n))`
-/

namespace A151088.P4930652035365291488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276218 (A150854 n).toNat

end

end A151088.P4930652035365291488

/-!
# A151089: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A151089, there is no canonical definition to state claims against.
-/

/-! ## A151089.P17683044363350530525

`A004525(A151094(n)+A151079(n))`
-/

namespace A151089.P17683044363350530525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151094 n + A151079 n).toNat

end

end A151089.P17683044363350530525

/-! ## A151089.P13677300261467315209

`A004525(A151094(n)+A151080(n))`
-/

namespace A151089.P13677300261467315209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151094 n + A151080 n).toNat

end

end A151089.P13677300261467315209

/-! ## A151089.P13987495261487826089

`A110654(A151094(n)+A151079(n))`
-/

namespace A151089.P13987495261487826089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151094 n + A151079 n).toNat

end

end A151089.P13987495261487826089

/-!
# A151090: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, 1), (0, 1, 0), (1, 1, 1)}.

The programs for A151090, there is no canonical definition to state claims against.
-/

/-! ## A151090.P4274493511626417387

`5*a(n-1)-A025227(n+1)` with `a(0)=1`
-/

namespace A151090.P4274493511626417387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A025227 (n + 1)

end

end A151090.P4274493511626417387

/-! ## A151090.P6554285209087363812

`or(1, A004709(A151057(n)))`
-/

namespace A151090.P6554285209087363812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004709 (A151057 n).toNat)

end

end A151090.P6554285209087363812

/-! ## A151090.P1275904576829652726

`A014681(2*A165537(n+1))`
-/

namespace A151090.P1275904576829652726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A165537 (n + 1)).toNat

end

end A151090.P1275904576829652726

/-!
# A151091: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A151091, there is no canonical definition to state claims against.
-/

/-! ## A151091.P7954104760157850408

`A061070(xor(floor((n/2)²), ∑{d}[n+1, 5^(#-1)]))`
-/

namespace A151091.P7954104760157850408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (Int.xor ⌊((n : ℚ) / 2) ^ 2⌋ (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (5 : ℚ) ^ ((d : ℤ) - 1 : ℤ)))).toNat

end

end A151091.P7954104760157850408

/-! ## A151091.P2459824690620428873

`A061070(∑{d}[n+1, 5^(#-1)]-∑{p}[n+1, gcd(n, #)])`
-/

namespace A151091.P2459824690620428873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (5 : ℚ) ^ ((d : ℤ) - 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p : ℕ) : ℚ))).toNat

end

end A151091.P2459824690620428873

/-!
# A151092: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, 0, 0), (1, 0, 1)}.

The programs for A151092, there is no canonical definition to state claims against.
-/

/-! ## A151092.P10031767178872619599

`A274529(A150804(n))`
-/

namespace A151092.P10031767178872619599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (A150804 n).toNat

end

end A151092.P10031767178872619599

/-!
# A151093: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151093, there is no canonical definition to state claims against.
-/

/-! ## A151093.P15858170340332947085

`A004277(A151112(n))-A151143(n)`
-/

namespace A151093.P15858170340332947085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151112 n).toNat - A151143 n

end

end A151093.P15858170340332947085

/-! ## A151093.P8283797703346513439

`A004277(A151113(n))-A151150(n)`
-/

namespace A151093.P8283797703346513439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151113 n).toNat - A151150 n

end

end A151093.P8283797703346513439

/-!
# A151094: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A151094, there is no canonical definition to state claims against.
-/

/-! ## A151094.P9215020984623748982

`A187180(A151112(n)+A151086(n))`
-/

namespace A151094.P9215020984623748982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A151112 n + A151086 n).toNat

end

end A151094.P9215020984623748982

/-! ## A151094.P14204473774547903729

`A080029(A151089(n))-A151079(n)`
-/

namespace A151094.P14204473774547903729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080029 (A151089 n).toNat - A151079 n

end

end A151094.P14204473774547903729

/-! ## A151094.P5749209940642203240

`A080029(A151089(n))-A151080(n)`
-/

namespace A151094.P5749209940642203240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080029 (A151089 n).toNat - A151080 n

end

end A151094.P5749209940642203240

/-!
# A151095: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A151095, there is no canonical definition to state claims against.
-/

/-! ## A151095.P18388745027180758052

`A004277(A151098(n))-A151099(n)`
-/

namespace A151095.P18388745027180758052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151098 n).toNat - A151099 n

end

end A151095.P18388745027180758052

/-! ## A151095.P2937117320225393890

`A222211(A339043(n+1))+A151760(n)`
-/

namespace A151095.P2937117320225393890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A339043 (n + 1)).toNat + A151760 n

end

end A151095.P2937117320225393890

/-!
# A151096: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 0, 1), (0, 1, 0), (1, 0, 1)}.

The programs for A151096, there is no canonical definition to state claims against.
-/

/-! ## A151096.P1186142992475336540

`A150209(n)+A004526(A151133(n))`
-/

namespace A151096.P1186142992475336540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150209 n + A004526 (A151133 n).toNat

end

end A151096.P1186142992475336540

/-! ## A151096.P506171289356834456

`A030451(A151101(n)+A151093(n))`
-/

namespace A151096.P506171289356834456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A151101 n + A151093 n).toNat

end

end A151096.P506171289356834456

/-!
# A151097: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A151097, there is no canonical definition to state claims against.
-/

/-! ## A151097.P13580961226249827712

`A150213(n)+A004526(A151132(n))`
-/

namespace A151097.P13580961226249827712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150213 n + A004526 (A151132 n).toNat

end

end A151097.P13580961226249827712

/-!
# A151098: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 0, 1), (0, 1, 0), (1, 0, 1)}.

The programs for A151098, there is no canonical definition to state claims against.
-/

/-! ## A151098.P10097493260008740814

`A004525(A151099(n)+A151095(n))`
-/

namespace A151098.P10097493260008740814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151099 n + A151095 n).toNat

end

end A151098.P10097493260008740814

/-! ## A151098.P2541741326593014907

`A004526(A151099(n)+A151095(n))`
-/

namespace A151098.P2541741326593014907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151099 n + A151095 n).toNat

end

end A151098.P2541741326593014907

/-! ## A151098.P277346852347131767

`A025480(A151099(n)+A151095(n))`
-/

namespace A151098.P277346852347131767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A151099 n + A151095 n).toNat

end

end A151098.P277346852347131767

/-!
# A151099: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A151099, there is no canonical definition to state claims against.
-/

/-! ## A151099.P7837203935402838154

`A004277(A151098(n))-A151095(n)`
-/

namespace A151099.P7837203935402838154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151098 n).toNat - A151095 n

end

end A151099.P7837203935402838154

/-! ## A151099.P7529146240485627378

`A065033(A308409(n+1)-A187889(n))`
-/

namespace A151099.P7529146240485627378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A308409 (n + 1) - A187889 n).toNat

end

end A151099.P7529146240485627378

/-! ## A151099.P194850104669874470

`A065033(A308409(n+1)-A189187(n))`
-/

namespace A151099.P194850104669874470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A308409 (n + 1) - A189187 n).toNat

end

end A151099.P194850104669874470

